const conn = require("./configmysql")  

var express = require('express')
var bodyParser = require('body-parser')
var app = express()
var cors = require('cors')
const { query } = require("./configmysql")
const req = require("express/lib/request")

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

app.post('/usuarios',(req,res)=>{
    const username = req.body.username1;
    const password = req.body.passwor1;

    conn.query("insert into usuarios(username, password) values('"+username+"','"+password+"')")
})

app.post('/aspirantes',(req,res)=>{
    const nombre = req.body.nombre1;
    const apellidoparterno = req.body.apellidoparterno1;
    const apellidomaterno = req.body.apellidomaterno1;
    const telefonoprincipal = req.body.telefonoprincipal1;
    const telefonosecundario = req.body.telefonosecundario1;
    const correo = req.body.correo1;
    const domicilio = req.body.domicilio1;
    const alergias = req.body.alergias1;
    const padecimientos = req.body.padecimientos1;
    const nombrefactura = req.body.nombrefactura1;
    const paternofactura = req.body.paternofactura1;
    const maternofactura = req.body.maternofactura1;
    const codigopostal = req.body.codigopostal1;
    const colonia = req.body.colonia1;
    const nexterno = req.body.nexterno;
    const ninterno = req.body.ninterno1;
    const rfc = req.body.rfc1

    conn.query("insert into datospersonales(nombre.apellidopaterno,apellidomaterno,telefonoprincipal,telefonosecundario,correo,domicilio,alergias,padecimientos)values('"+nombre+"','"+apellidoparterno+"','"+apellidomaterno+"','"+telefonoprincipal+"','"+telefonosecundario+"','"+correo+"','"+domicilio+"','"+alergias+"','"+padecimientos+"')")
    conn.query("insert into facturacion(nombre,apellidopaterno,apellidomaterno,pais,estado,codigopostal,municipio,colonia,nexterno,ninterno,metodopago,rfc)values('"+nombrefactura+"','"+paternofactura+"','"+maternofactura+"','"+codigopostal+"','"+colonia+"','"+nexterno+"','"+ninterno+"','"+rfc+"')")
})

app.post('/interesados',(req,res)=>{
    const nombreinteresados = req.body.nombreinteresados1;
    const paternointeresados = req.body.paternointeresado1;
    const maternointeresados = req.body.maternointeresados1;
    const generointeresados = req.body.generointeresados1;
    const fechanacimientointeresado = req.body.fechanacimientointeresados1;
    const escuelaprocedenciainteresados = req.body.escuelaprocedenciainteresados1;
    const comoenterointeresados = req.body.comoenterointeresados1;
    const nombretutorinteresados = req.body.nombretutorinteresados1;
    const paternotutorinteresado = req.body.paternotutorinteresado1;
    const maternotutorinteresado = req.body.maternotutorinteresado1;
    const correointeresados = req.body.correointeresados1;
    const domiciliointeresados = req.body.domiciliointeresados1;
    const telefonoprincipalinteresados = req.body.telefonoprincipalinteresados1;
    const telefonosecundariointeresados = req.body.telefonosecundariointeresados1;
    const nivelinteresados = req.body.nivelinteresados1;
    const gradointeresados = req.body.gradointeresados1

    conn.query("insert into datospersonalesinteresados(nombre,apellidopaterno,apellidomaterno,genero,fechanacimiento,escuelaprocedencia,comoentero)values('"+nombreinteresados+"','"+paternointeresados+"','"+maternointeresados+"','"+generointeresados+"','"+fechanacimientointeresado+"','"+escuelaprocedenciainteresados+"','"+comoenterointeresados+"')")
    conn.query("insert into datostutorinteresado(nombre,apellidopaterno,apellidomaterno)values('"+nombretutorinteresados+"','"+paternotutorinteresado+"','"+maternotutorinteresado+"')")
    conn.query("insert into datoscontactointeresado(correo,domicilio,telefonoprincipal,telefonosecundario,nivelinteresado,gradointeresado)values('"+correointeresados+"','"+domiciliointeresados+"','"+telefonoprincipalinteresados+"','"+telefonosecundariointeresados+"','"+nivelinteresados+"','"+gradointeresados+"')")

})