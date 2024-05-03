let tasks = []; // Array to store tasks

// Function to add a new task
function addTask(task) {
    tasks.push(task);
    console.log(`Task '${task}' has been added.`);
}

// Function to remove a task
function removeTask(task) {
    const index = tasks.indexOf(task);
    if (index !== -1) {
        tasks.splice(index, 1);
        console.log(`Task '${task}' has been removed.`);
    } else {
        console.log(`Task '${task}' not found.`);
    }
}

// Function to list all tasks
function listTasks() {
    if (tasks.length === 0) {
        console.log("No tasks found.");
    } else {
        console.log("Tasks:");
        tasks.forEach((task, index) => {
            console.log(`${index + 1}. ${task}`);
        });
    }
}

// Function to find a task by keyword
function findTask(keyword) {
    const foundTasks = tasks.filter(task => task.includes(keyword));
    if (foundTasks.length === 0) {
        console.log(`No tasks found containing '${keyword}'.`);
    } else {
        console.log(`Tasks containing '${keyword}':`);
        foundTasks.forEach((task, index) => {
            console.log(`${index + 1}. ${task}`);
        });
    }
}

// Function to sort tasks alphabetically
function sortTasks() {
    tasks.sort();
    console.log("Tasks sorted alphabetically.");
}

// Function to reverse tasks
function reverseTasks() {
    tasks.reverse();
    console.log("Tasks reversed.");
}

// Function to join tasks into a single string
function joinTasks(separator) {
    const joinedTasks = tasks.join(separator);
    console.log("Joined tasks:", joinedTasks);
}

// Test the functions
addTask("Complete assignment");
addTask("Prepare presentation");
addTask("Attend meeting");
addTask("Review documents");

listTasks();

removeTask("Prepare presentation");

listTasks();

addTask("Send emails");

findTask("meeting");

sortTasks();

listTasks();

reverseTasks();

joinTasks(" - ");
