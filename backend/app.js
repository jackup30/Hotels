var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var helmet = require('helmet')
var cors = require('cors')
require('dotenv').config()
var routes = require('./routes');


var app = express();
app.use(helmet())
app.disable('x-powered-by')
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser())
var corsOptions = {
  origin: 'http://localhost:4200',
  method: 'GET',
  optionsSuccessStatus: 201
}
app.use('/api/v1',cors(corsOptions), routes);
app.use(cors())
var options = {
    dotfiles: 'ignore',
    etag: false,
    extensions: ['htm', 'html'],
    index: false,
    maxAge: '1d',
    redirect: false,
    setHeaders: function (res, path, stat) {
      res.set('x-timestamp', Date.now())
    }
  }
const db = require("./models");
db.sequelize.sync();
app.use(express.static('public', options))

module.exports = app;
