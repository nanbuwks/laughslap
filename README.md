# laughslap


![structure](readme-pictures/overall.png?raw=true)

# install (cloudserver)

require: node

- Put index.html to DocumentRoot on Web Server.
- Run "node index.js"

# install (raspberry pi)

require: node wscat mpg123
```
$ sudo npm install -g wscat
$ sudo apt install mpg123
```

wscat -c ws://www.message-call.com:5001 | ./laughloop4.sh

