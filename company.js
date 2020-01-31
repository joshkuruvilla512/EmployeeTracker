const mysql = require("mysql");
const inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Maggie512",
    database: "companyDB"
});

connection.connect(function (err) {
    if (err) throw err;
    start();
});

function start() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View All Employees",
                // "View All Employees By Department",
                // "View All Employees by Manager",
                "Add an Employee",
                "Remove Employee",
                "Update Employee Role",
                "Exit"
                // "Update Employee Manager",
                // "View All Roles"
            ]
        })
      
        .then(function (response) {
            const action = data.action;
            switch (answer.action) {
                case "View All Employees":
                    employeeSearch();
                    break;

                case "Add an Employee":
                    employeeAdd();
                    break;

                case "Remove an Employee":
                    employeeRemove();
                    break;

                case "Update Employee Role":
                    employeeUpdate();
                    break;

                case "Exit":
                    connection.end();
                    break;
            }
        });
}

// Start the functions for each case

function employeeSearch() {
    connection.query("SELECT * FROM role", function (err, res) {
        console.table(res);

    })
}

function employeeAdd() {
    connection.query("SELECT * FROM role", function (err, res) {
        console.table(res);

    })
}

function employeeRemove() {
    connection.query("SELECT * FROM role", function (err, res) {
        console.table(res);

    })
}

function employeeUpdate() {
    connection.query("SELECT * FROM role", function (err, res) {
        console.table(res);

    })
}