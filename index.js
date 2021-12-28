const conn = require("./configmysql")  

var express = require('express')
var bodyParser = require('body-parser')
var app = express()
var cors = require('cors')
const { query } = require("./configmysql")

app.use(express.json());
const corsOptions ={
   origin:'*', 
   credentials:true,            //access-control-allow-credentials:true
   optionSuccessStatus:200,
}

app.use(cors(corsOptions))

app.get('/user', (req,res) => {
    res.send("user")
})

app.get('/',(req,res) => {
    res.send("hola");
});
app.post('/e',(req,res) => {
    res.send("hello");
})

app.post('/credencialstudent',(req,res)=>{
    const nombreAlumno = req.body.nombreAlumno1;
    const matricula = req.body.matricula1;
    const curp = req.body.curp1;
    const carrera = req.body.curp1;
    const tipoSangre = req.body.tipoSangre1;
    const nss = req.body.nss1;
    const nombreCompletoFamiliar = req.body.nombreCompletoFamiliar1;
    const numeroTelefono = req.body.numeroTelefono1;

    conn.query("insert into credencialestudiante(nombreAlumno, matricula, curp, carrera, tipoSangre, nss, nombreCompletoFamiliar, numeroTelefono)values ('"+nombreAlumno+"', '"+matricula+"','"+curp+"', '"+carrera+"','"+tipoSangre+"', '"+nss+"', '"+nombreCompletoFamiliar+"', '"+numeroTelefono+"')")
})