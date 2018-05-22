var express = require('express');
var morgan = require('morgan');

var app = express();
app.use(morgan('combined'));

app.get('/', function (req, res) {
    res.send('sin seguridad requerida');
});

app.get('/secure', function (req, res) {
    console.log('Authorization header:', req.get('Authorization'));

    res.json({
        message: 'Entrada solo segura'
    });
});

app.get('/secure/admin', function (req, res) {
    console.log('Authorization header:', req.get('Authorization'));

    res.json({
        message: 'Entrada solo segura'
    });
});

var server = app.listen(80, function () {
    var host = server.address().address;
    var port = server.address().port;

    console.log('Server listening http://%s:%s', host, port);
});
