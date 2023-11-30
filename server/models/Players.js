const mongoose = require("mongoose");

const gameSchema = new mongoose.Schema({
  nickname: {
    type: String,
  },
});
