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

https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/IBM%20i%20Technology%20Updates/page/Node.js

if you have installed node.js then do the following steps to install the express and socket.io framework

qsh
cd /QOpenSys/QIBM/ProdData/Node/bin
npm install express
npm install socket.io

create the following Directories:

e.g. /home/node      for the chatserver.js
e.g. /home/node/html for the index.htm
e.g. /home/node/css  for the chatstyle.css
e.g. /home/node/js   for the chatclient.js

start the chatserver:

qsh
cd /QOpenSys/QIBM/ProdData/Node/bin
node /home/node/chatserver.js

start the chatclient in your browser:

http://yourip:8020/

if the port 8020 is used on your maschine please use another port and change it in the chatserver.js
check the port on IBM i: netstat *cnn
