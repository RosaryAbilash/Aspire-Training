var express = require("express");

var app = express();


app.get("/", (req, res) => {
    res.sendFile(__dirname+"/index.html");
});

app.get("/login", (req, res) => {
    res.sendFile(__dirname+"/login.html");
})


app.listen(3000, () => {
    console.log("Server is Running");
})