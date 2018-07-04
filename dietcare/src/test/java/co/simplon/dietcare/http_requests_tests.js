// creation
var xmlhttp = new XMLHttpRequest();
xmlhttp.open("POST", "/aliment/category");
xmlhttp.setRequestHeader("Content-Type", "application/json");
xmlhttp.send(JSON.stringify({name:"Viande"}));

xmlhttp.response;

// update
var xmlhttp = new XMLHttpRequest();
xmlhttp.open("PUT", "/aliment/category");
xmlhttp.setRequestHeader("Content-Type", "application/json");
xmlhttp.send(JSON.stringify({id:"2", name:"Poisson"}));

xmlhttp.response;

// delete
var xmlhttp = new XMLHttpRequest();
xmlhttp.open("DELETE", "/aliment/category");
xmlhttp.setRequestHeader("Content-Type", "application/json");
xmlhttp.send(JSON.stringify({id:"3"}));

xmlhttp.response;

