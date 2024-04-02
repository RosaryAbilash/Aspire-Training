let employees = [];
var salary = 55000;

function addEmployee(employeeName){
    employees.push(employeeName);
    console.log(employeeName + " Added to Employee List..");
}


function removeEmployee(employeeName){
    employees.pop(employeeName);
    console.log(employeeName + " Removed From Employee List..");
}


function displayEmployee(){
    console.log("-- Employees --");
    console.log(employees);
}



addEmployee("Rosary");
addEmployee("Krishna");
addEmployee("Tamil");
addEmployee("Tamil");
displayEmployee()

removeEmployee("Ganesh")

displayEmployee()


// Arrow Function
const calculateBonus = (percentage) => salary / percentage;


console.log("Bonus for All "+calculateBonus(5));





// Call Back Functions

function greet(employeeName, callback){
    var greetMessage = "Good Bye ".concat(employeeName);
    
    callback(greetMessage);

}

function sayGoodbye(greetMessage){
    console.log(greetMessage, "Thank you For your Service...");
}


greet("Ganesh", sayGoodbye);