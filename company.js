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
                    "Add a(n) Department/Employee/Role",
                    "View all Departments/Roles/Employees",
                    "Update all Departments/Roles/Employees",
                    "Exit"
                // "View All Employees",
                // "Add an Employee",
                // // "View All Employees By Department",
                // // "View All Employees by Manager",
                // // "Remove Employee",
                // "Update Employee Role",
                // // "Update Employee Manager",
                // // "View All Roles"
            ]
        })
      
        .then(function (response) {
            // add
            if (response.action === "Add a(n) Department/Employee/Role") {
                console.log(response.action + " selected!");
                create()
            }
            // view
            else if (response.action === "View all Departments/Roles/Employees") {
                console.log(response.action + " selected!");
                viewInfo()
            }
            //update
            else if (response.action === "Update all Departments/Roles/Employees") {
                console.log(response.action + " selected!");
                updateInfo()
            }
            //exit
            else {
                console.log(response.action + " selected!");
                connection.end()
            }
        })
}
start();
// Start the functions for each case

function add() {
        inquirer.prompt([
            {
                name: 'add',
                type: 'list',
                message: 'What would you like to add to?',
                choices: [
                    "Employee",
                    "Role",
                    "Department",
                    "Exit"
                ]
            
    }]).then(function (response) {
        // If you choose Employee the addEmployee function will begin
        if (response.add === "Employee") {
            createEmployee()
        }
        // If you choose Role the addRole function will begin
        else if (response.add === "Role") {
            createRole()
        }
        // If you choose Department addDepartment will begin
        else if (response.add === "Department") {
            createDepartment()
        }
        // If you choose Back the action() will take you back to the main menu
        else {
            console.log("Exit");
            start()
        }
    })
}
