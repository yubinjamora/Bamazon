var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "danny486",
  database: "bamazon_DB"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    queryAllProdcts();
   
  });
  
//Running this application will first display all of the items available for sale. 
// Include the ids, names, and prices of products for sale.

function queryAllProdcts() {
    connection.query("SELECT * FROM products", function (err, res) {
      for (var i = 0; i < res.length; i++) {
        console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].price);
      }
      console.log("-----------------------------------");
    });
  }
   
start(); 

  function start() {
    inquirer
      .prompt({
        name: "placeOrder",
        type: "rawlist",
        message: "Welcome! Would you like to place an order?",
        choices: ["YES", "NO"]
      })
      .then(function(answer) {
        // based on their answer, either call the bid or the post functions
        if (answer.postOrBid.toUpperCase() === "YES") {
          placeOrder();
        }
        else {
         start();
        }
      });
  }

  function placeOrder() {
    // query the database for all items 
    connection.query("SELECT * FROM products", function(err, results) {
      if (err) throw err;
      // once you have the items, prompt the user for which they'd like to purchase
      inquirer
        .prompt([
          {
            name: "choice",
            type: "rawlist",
            choices: function() {
              var choiceArray = [];
              for (var i = 0; i < results.length; i++) {
                choiceArray.push(results[i].item_id);
              }
              return choiceArray;
            },
            message: "What is the ID of the product you would like to purchase?"
          },
          {
            name: "unit",
            type: "input",
            message: "How many unit you would like to purchase?"
          }
        ])
        .then(function(answer) {
          // get the information of the chosen item
          var chosenItem;
          for (var i = 0; i < results.length; i++) {
            if (results[i].item_id === answer.choice) {
              chosenItem = results[i];
            }
          }
  
          
        });
    });
  }