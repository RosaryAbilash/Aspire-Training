/*
 * Title : Task Management Application
 * Author : Rosary Abilash M
 * Created At : 02-04-2024
 * Last Modified Date : 27-04-2024
 * Reviewed By :
 * Review Date :
 */



// Set for storing unique tasks
let taskSet: Set<string> = new Set();

// Function to add a task
function addTask(task: string): void {
    taskSet.add(task);
    console.log(`${task} has been added.`);
}

// Function to check if a task exists
function hasTask(task: string): boolean {
    return taskSet.has(task);
}

// Function to delete a task
function deleteTask(task: string): void {
    if (taskSet.delete(task)) {
        console.log(`${task} has been deleted.`);
    } else {
        console.log(`${task} does not exist.`);
    }
}

// Function to list all tasks
function listTasks(): void {
    console.log("Tasks:");
    taskSet.forEach(task => {
        console.log(task);
    });
}

// Function to clear all tasks
function clearTasks(): void {
    taskSet.clear();
    console.log("All tasks have been cleared.");
}

// Map for storing task status
let taskStatusMap: Map<string, string> = new Map();

// Function to set task status
function setTaskStatus(task: string, status: string): void {
    taskStatusMap.set(task, status);
    console.log(`Status for ${task} has been set to ${status}.`);
}

// Function to get task status
function getTaskStatus(task: string): string | undefined {
    return taskStatusMap.get(task);
}

// Function to delete task status
function deleteTaskStatus(task: string): void {
    if (taskStatusMap.delete(task)) {
        console.log(`Status for ${task} has been deleted.`);
    } else {
        console.log(`No status found for ${task}.`);
    }
}

// List of tasks
let taskList: string[] = [];

// Function to add a task to the list
function addTaskToList(task: string): void {
    taskList.push(task);
    console.log(`${task} has been added to the list.`);
}

// Function to remove a task from the list
function removeTaskFromList(task: string): void {
    const index = taskList.indexOf(task);
    if (index !== -1) {
        taskList.splice(index, 1);
        console.log(`${task} has been removed from the list.`);
    } else {
        console.log(`${task} is not in the list.`);
    }
}

// Function to list all tasks in the list
function listTasksInList(): void {
    console.log("Tasks in the list:");
    taskList.forEach(task => {
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
taskStatusMap.forEach((status, task) => {
    console.log(`${task}: ${status}`);
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
