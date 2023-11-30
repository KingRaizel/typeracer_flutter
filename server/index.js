const express = require("express");
const http = require("http");
const mongoose = require("mongoose");
var io = require("socket.io")(server);

// create a server
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

// middleware
app.use(express.json());

// connect to mongodb
const DB =
  "mongodb+srv://typeracer:typeracer@cluster0.mdxfm42.mongodb.net/?retryWrites=true&w=majority";

// listening to socket io events from client to flutter code
io.on("connection", (socket) => {
  console.log(socket.id);
  socket.on("crete-game", async());
});

mongoose
  .connect(DB)
  .then(() => {
    console.log("connection success");
  })
  .catch((e) => {
    console.log(e);
  });

// listem to server
server.listen(port, "0.0.0.0", () => {
  console.log(`server started on ${port}`);
});
