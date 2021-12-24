const conn = require("./configmysql")  

var express = require('express')
var bodyParser = require('body-parser')
var app = express()
var cors = require('cors')
const { query } = require("./configmysql")


