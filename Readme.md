# IBM i chatserver

The chatserver powered by IBM i needs V7R1 and Node.js delivered with 5733-OPS
```
5733-OPS Option 1 	Node.js 0.x
5733-OPS Option 5 	Node.js 4.x
```
Go [here](https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/IBM%20i%20Technology%20Updates/page/Node.js) to get started with Node.js on IBM i.

#When you have installed Node.js 4.x set Node.js to V4

```
5250> qsh
$ /QOpenSys/QIBM/ProdData/OPS/Node4/bin/nodever.sh 4
```

#Check your Node.js version

```
5250> qsh
$ node -v
for example v4.4.6  
```

#Install express and socket.io with the node package manager

```
5250> qsh
npm install express
npm install socket.io 
```

#Manual Install
Create the following Directories

```
5250> qsh
$ mkdir -p /home/node      (for the chatserver.js)
$ mkdir -p /home/node/html (for the index.htm)
$ mkdir -p /home/node/css  (for the chatstyle.css)
$ mkdir -p /home/node/js   (for the chatclient.js)
```

#Start the Node.js program on your IBM i

```
5250> qsh
$ node /home/node/chatserver.js
```

If the port `8080` is used on your machine please use another port and change it in the `webservice.js - line 27` 

check the port on IBM i: 

```
5250> netstat *cnn
```
