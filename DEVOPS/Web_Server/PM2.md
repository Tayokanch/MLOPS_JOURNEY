*PM2* 
- PM2 is a production grade process manager for a Node.js applications with a built-in load balancer. It main job is to keep Node.js applications running, restart them if they crash, and help manage them in production environments. Once installed , we start the application by 
  - <**pm2 start app.js**>
  - <**pm2 start app.js -i 4(number_of_instance)**> : To start multiple instances of the application that is in a cluster mode