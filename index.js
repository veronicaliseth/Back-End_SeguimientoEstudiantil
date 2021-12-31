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

app.listen(8000,()=>{
    console.log("puerto 8000")
})

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
    const nombreAlumno = req.body.datos[0];
    const matricula = req.body.datos[1];
    const curp = req.body.datos[2];
    const carrera = req.body.datos[3];
    const tipoSangre = req.body.datos[4];
    const nss = req.body.datos[5];
    const nombreCompletoFamiliar = req.body.datos[6];
    const numeroTelefono = req.body.datos[7];

    conn.query("insert into credencialestudiante(nombreAlumno, matricula, curp, carrera, tipoSangre, nss, nombreCompletoFamiliar, numeroTelefono)values ('"+nombreAlumno+"', '"+matricula+"','"+curp+"', '"+carrera+"','"+tipoSangre+"', '"+nss+"', '"+nombreCompletoFamiliar+"', '"+numeroTelefono+"')")
    res.json({
        resp:"ok",
        mensaje:"Registro exitoso",
    })
})


app.post('/usuarios',(req,res)=>{
    const username = req.body.user;
    const password = req.body.pass;
    let respuesta="";

    respuesta = conn.query("select * from usuarios where username = '"+username+"' and password = '"+password+"'", function(err,rows,fields){

    })
   
     res.json({
        resp:respuesta,
        mensaje:"Registro exitoso",
    })
})

app.post('/aspirantes',(req,res)=>{
    const nombre = req.body.datos[0];
    const apellidoparterno = req.body.datos[1];
    const apellidomaterno = req.body.datos[2];
    const telefonoprincipal = req.body.datos[3];
    const telefonosecundario = req.body.datos[4];
    const correo = req.body.datos[5];
    const domicilio = req.body.datos[6];
    const alergias = req.body.datos[7];
    const padecimientos = req.body.datos[8];
    const nombrefactura = req.body.datos[9];
    const paternofactura = req.body.datos[10];
    const maternofactura = req.body.datos[11];
    const codigopostal = req.body.datos[12];
    const colonia = req.body.datos[13];
    const nexterno = req.body.datos[14];
    const ninterno = req.body.datos[15];
    const rfc = req.body.datos[16];

    conn.query("insert into datospersonales(nombre,apellidopaterno,apellidomaterno,telefonoprincipal,telefonosecundario,correo,domicilio,alergias,padecimientos)values('"+nombre+"','"+apellidoparterno+"','"+apellidomaterno+"','"+telefonoprincipal+"','"+telefonosecundario+"','"+correo+"','"+domicilio+"','"+alergias+"','"+padecimientos+"')")
    conn.query("insert into facturacion(nombre,apellidopaterno,apellidomaterno,pais,estado,codigopostal,municipio,colonia,nexterno,ninterno,metodopago,rfc)values('"+nombrefactura+"','"+paternofactura+"','"+maternofactura+"','"+codigopostal+"','"+colonia+"','"+nexterno+"','"+ninterno+"','"+rfc+"','"+nexterno+"','"+ninterno+"','"+rfc+"','"+rfc+"')")
    res.json({
        resp:"ok",
        mensaje:"Registro exitoso",
    })
})

app.post('/interesados',(req,res)=>{
    const nombreinteresados = req.body.datos[0];
    const paternointeresados = req.body.datos[1];
    const maternointeresados = req.body.datos[2];
    const generointeresados = req.body.datos[3];
    const fechanacimientointeresado = req.body.datos[4];
    const escuelaprocedenciainteresados = req.body.datos[5];
    const comoenterointeresados = req.body.datos[6];
    const nombretutorinteresados = req.body.datos[7];
    const paternotutorinteresado = req.body.datos[8];
    const maternotutorinteresado = req.body.datos[9];
    const correointeresados = req.body.datos[10];
    const domiciliointeresados = req.body.datos[11];
    const telefonoprincipalinteresados = req.body.datos[12];
    const telefonosecundariointeresados = req.body.datos[13];
    const nivelinteresados = req.body.datos[14];
    const gradointeresados = req.body.datos[15];

    conn.query("insert into datospersonalesinteresado(nombre,apellidopaterno,apellidomaterno,genero,fechanacimiento,escuelaprocedencia,comoentero)values('"+nombreinteresados+"','"+paternointeresados+"','"+maternointeresados+"','"+generointeresados+"','"+fechanacimientointeresado+"','"+escuelaprocedenciainteresados+"','"+comoenterointeresados+"')")
    conn.query("insert into datostutorinteresado(nombre,apellidopaterno,apellidomaterno)values('"+nombretutorinteresados+"','"+paternotutorinteresado+"','"+maternotutorinteresado+"')")
    conn.query("insert into datoscontactointeresado(correo,domicilio,telefonoprincipal,telefonosecundario,nivelinteresado,gradointeresado)values('"+correointeresados+"','"+domiciliointeresados+"','"+telefonoprincipalinteresados+"','"+telefonosecundariointeresados+"','"+nivelinteresados+"','"+gradointeresados+"')")
    res.json({
        resp:"ok",
        mensaje:"Registro exitoso",
    })
})