# IBM i chatserver
Go [here](https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/IBM%20i%20Technology%20Updates/page/Node.js) to get started with Node.js on IBM i.

##The chatserver powered by IBM i needs V7R1 and Node.js delivered with 5733-OPS
```
5733-OPS Option 1 	Node.js 0.x
5733-OPS Option 5 	Node.js 4.x
```

##When you have installed Node.js 4.x set Node.js to V4

```
5250> qsh
$ /QOpenSys/QIBM/ProdData/OPS/Node4/bin/nodever.sh 4
```

##Check your Node.js version

```
5250> qsh
$ node -v
for example v4.4.6  
```

##Install express and socket.io with the node package manager

```
5250> qsh
$ npm install express
$ npm install socket.io 
```

##Manual Install
Create the following Directories

```
5250> qsh
$ mkdir -p /home/node      (for the chatserver.js)
$ mkdir -p /home/node/html (for the index.htm)
$ mkdir -p /home/node/css  (for the chatstyle.css)
$ mkdir -p /home/node/js   (for the chatclient.js)
```

##Setup the index.htm script to the ip address of your IBM i

```
line 6  <link rel="stylesheet" href="http://yourip:8020/css/chatstyle.css" /> 
line 18 <script type="text/javascript" src="http://yourip:8020/js/chatclient.js"></script>
```

##Start the Node.js program on your IBM i

```
5250> qsh
$ node /home/node/chatserver.js
Server listening at port: 8020 
```

If the port `8020` is used on your machine use another port and change it in the `chatserver.js - line 5` 

check the port on IBM i: 

```
5250> netstat *cnn
```

##Start the chatclient

```
Open the browser of your choice and type http://yourip:8020
```
