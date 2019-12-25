const Lws = require('lws');
const Static = require('lws-static');
const Spa = require('lws-spa');
const path = require('path');

const port = 8800;

const lws = Lws.create({
  port,
  stack: [Spa, Static],
  directory: path.join(__dirname, '../dist'),
  spa: 'index.html',
});
server = lws.server;
