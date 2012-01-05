util = require 'util'

express = require 'express'

app = module.exports = express.createServer()

process.on 'uncaughtException', (err) ->
  console.log err.message
  console.log err.stack

#app.set 'view engine', 'coffee'
app.set 'view engine', 'ejs'
app.set("view options", { layout: false })
app.register '.html', require('ejs')
app.register '.coffee', require('coffeekup').adapters.express



apage = ->
  htmlpage 'todo.html', 'true)'

app.get '/todo.html', (req, res) ->
  res.render 'todo.html'



app.listen 3000

