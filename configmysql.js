const mysql = require('mysql');

const config = {
    host : 'localhost',
    user : 'root',
    database: 'bdusuario',
    password: 'root',
    insecureAuth: true,
};

const conn = mysql.createConnection(config);

conn.connect(function(err) {
    if (err) throw err;
    console.log('Conexión a la base de datos exitosa!');
});

module.exports = conn;