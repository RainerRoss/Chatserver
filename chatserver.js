var express = require('/QOpenSys/QIBM/ProdData/Node/bin/node_modules/express');
var app = express();
var server = require('http').createServer(app);
var io = require('/QOpenSys/QIBM/ProdData/Node/bin/node_modules/socket.io').listen(server);
var conf = {"port": 8020};

app.use("/css", express.static(__dirname + '/css'));   // use external CSS
app.use("/js",  express.static(__dirname + '/js'));    // use external JavaScript

app.get('/', function(request, response) {
	response.sendfile(__dirname + '/html/index.htm');
});

server.listen(conf.port);

io.sockets.on('connection', function(socket) {
	socket.emit('chat', {time: new Date(), text: 'You are connected with the server!'});
	socket.on('chat', function(data) {
		io.sockets.emit('chat', {time: new Date(), name: data.name || 'Anonymous', text: data.text});
	});
});

console.log('Server running at Port: ' + conf.port);
