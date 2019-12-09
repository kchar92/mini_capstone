console.log("hello");


axios.get("/api/items").then(function(response) {
  console.log("on line 5");
  console.log(response);
});