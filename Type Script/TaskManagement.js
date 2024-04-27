/*
 * Title : Task Management Application
 * Author : Rosary Abilash M
 * Created At : 02-04-2024
 * Last Modified Date : 27-04-2024
 * Reviewed By :
 * Review Date :
 */
// Set for storing unique tasks
var taskSet = new Set();
// Function to add a task
function addTask(task) {
    taskSet.add(task);
    console.log("".concat(task, " has been added."));
}
// Function to check if a task exists
function hasTask(task) {
    return taskSet.has(task);
}
// Function to delete a task
function deleteTask(task) {
    if (taskSet.delete(task)) {
        console.log("".concat(task, " has been deleted."));
    }
    else {
        console.log("".concat(task, " does not exist."));
    }
}
// Function to list all tasks
function listTasks() {
    console.log("Tasks:");
    taskSet.forEach(function (task) {
        console.log(task);
    });
}
// Function to clear all tasks
function clearTasks() {
    taskSet.clear();
    console.log("All tasks have been cleared.");
}
// Map for storing task status
var taskStatusMap = new Map();
// Function to set task status
function setTaskStatus(task, status) {
    taskStatusMap.set(task, status);
    console.log("Status for ".concat(task, " has been set to ").concat(status, "."));
}
// Function to get task status
function getTaskStatus(task) {
    return taskStatusMap.get(task);
}
// Function to delete task status
function deleteTaskStatus(task) {
    if (taskStatusMap.delete(task)) {
        console.log("Status for ".concat(task, " has been deleted."));
    }
    else {
        console.log("No status found for ".concat(task, "."));
    }
}
// List of tasks
var taskList = [];
// Function to add a task to the list
function addTaskToList(task) {
    taskList.push(task);
    console.log("".concat(task, " has been added to the list."));
}
// Function to remove a task from the list
function removeTaskFromList(task) {
    var index = taskList.indexOf(task);
    if (index !== -1) {
        taskList.splice(index, 1);
        console.log("".concat(task, " has been removed from the list."));
    }
    else {
        console.log("".concat(task, " is not in the list."));
    }
}
// Function to list all tasks in the list
function listTasksInList() {
    console.log("Tasks in the list:");
    taskList.forEach(function (task) {
        console.log(task);
    });
}
// Add tasks to the Set
addTask("Complete assignment");
addTask("Prepare presentation");
addTask("Attend meeting");
addTask("Review documents");
addTask("Send emails");
addTask("Complete assignment"); // Trying to add a duplicate task
// Size of Set
console.log("Size of Set:", taskSet.size);
// Check if a task exists in the Set
console.log("Task 'Attend meeting' exists:", hasTask("Attend meeting"));
console.log("Task 'Take break' exists:", hasTask("Take break"));
// Delete a task from the Set
deleteTask("Prepare presentation");
// List all tasks in the Set
listTasks();
// Clear all tasks in the Set
clearTasks();
// Add tasks to the Map
setTaskStatus("Complete assignment", "In progress");
setTaskStatus("Attend meeting", "Completed");
setTaskStatus("Send emails", "Pending");
// Get status of tasks from the Map
console.log("Value for task 'Attend meeting':", getTaskStatus("Attend meeting"));
console.log("Value for task 'Prepare presentation':", getTaskStatus("Prepare presentation"));
// Delete status of tasks from the Map
deleteTaskStatus("Send emails");
// List all tasks with status from the Map
console.log("Tasks with status:");
taskStatusMap.forEach(function (status, task) {
    console.log("".concat(task, ": ").concat(status));
});
// Add tasks to the List
addTaskToList("Complete assignment");
addTaskToList("Prepare presentation");
addTaskToList("Attend meeting");
addTaskToList("Review documents");
addTaskToList("Send emails");
// Access elements in the List by index
console.log("Task List:", taskList);
console.log("Task at index 0:", taskList[0]);
console.log("Task at index 2:", taskList[2]);
// Remove tasks from the List
removeTaskFromList("Review documents");
// List all tasks in the List
listTasksInList();
