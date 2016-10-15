Chatserver
==========
The Chatserver powered by IBM i needs V7R1

Go [here](https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/IBM%20i%20Technology%20Updates/page/Node.js) to get started with Node.js on IBM i.

If you have installed node.js then do the following steps to install the express and socket.io framework

```
5250> qsh
$ cd /QOpenSys/QIBM/ProdData/Node/bin
$ npm install express
$ npm install socket.io
```

#Manual Install
Create the following Directories:

```
5250> qsh
$ mkdir -p /home/node        (for the chatserver.js)
$ mkdir -p /home/node/html   (for the index.htm)
$ mkdir -p /home/node/css    (for the chatstyle.css)
$ mkdir -p /home/node/js     (for the chatclient.js)
```

#Git Clone Install
From a PASE shell enter the following:

```
5250> qsh
$ git clone git@github.com:RainerRoss/Chatserver.git
```

Start the chatserver:

```
5250> qsh
$ cd /QOpenSys/QIBM/ProdData/Node/bin
$ node /home/node/chatserver.js
```

Start the chatclient in your browser:

http://yourip:8020/

If the port `8020` is used on your machine please use another port and change it in the `chatserver.js Statement 27`
check the port on IBM i: 

```
5250> netstat *cnn
```
