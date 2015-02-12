Chatserver
==========
The Chatserver powered by IBM i needs V7R1

Getting Started with Node.js on IBM i look at 
https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/IBM%20i%20Technology%20Updates/page/Node.js

if you have installed node.js then do the following steps to install the express and socket.io framework

qsh
cd /QOpenSys/QIBM/ProdData/Node/bin
npm install express
npm install socket.io

#Manual Install
Create the following Directories:

e.g. /home/node      for the chatserver.js
e.g. /home/node/html for the index.htm
e.g. /home/node/css  for the chatstyle.css
e.g. /home/node/js   for the chatclient.js

#Git Clone Install
From a PASE shell enter the following:

```
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

If the port `8020` is used on your machine please use another port and change it in the `chatserver.js`
check the port on IBM i: 

```
5250> netstat *cnn
```
