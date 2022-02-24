const conn = require("./configmysql")

var express = require("express");
var bodyParser = require("body-parser");
var app = express();
var cors = require("cors");
const { query } = require("./configmysql")
const req = require("express/lib/request");
const res = require("express/lib/response");

app.use(express.json());
const corsOptions = {
  origin: "*",
  credentials: true, //access-control-allow-credentials:true
  optionSuccessStatus: 200,
};

app.use(cors(corsOptions));

app.listen(8000, () => {
  console.log("puerto 8000");
});

app.get("/user", (req, res) => {
  res.send("user");
});

app.get("/", (req, res) => {
  res.send("hola");
});
app.post("/e", (req, res) => {
  res.send("hello");
});

app.post("/credencialstudent", (req, res) => {
  const nombreAlumno = req.body.datos;
  const matricula = req.body.datos;
  const curp = req.body.datos;
  const carrera = req.body.datos;
  const tipoSangre = req.body.datos;
  const nss = req.body.datos;
  const nombreCompletoFamiliar = req.body.datos;
  const numeroTelefono = req.body.datos;
  const fecha = req.body.datos;

  conn.query(
    "insert into credencialestudiante(nombreAlumno, matricula, curp, carrera, tipoSangre, nss, nombreCompletoFamiliar, numeroTelefono,fecha)values ('" +nombreAlumno +"', '" +matricula +"','" +curp +"', '" +carrera +"','" +tipoSangre +"', '" +nss +"', '" +nombreCompletoFamiliar +"', '" +numeroTelefono +"','"+fecha+"')");
  res.json({
    resp: "ok",
    mensaje: "Registro exitoso",
  });
});

app.post("/usuarios", (req, res) => {
  const username = req.body.user;
  const password = req.body.pass;
  let respuesta = "";

    conn.query(
    "select * from usuarios where username = '" +username +"' and password = '" +password +"'",
    function (err, rows, fields) {
        if (rows.length > 0) {
            res.send(true)
        }else{
            res.send(false)
        }
    }
  );
});

app.post("/aspirantes", (req, res) => {
  const nombre = req.body.datos;
  const apellidoparterno = req.body.datos;
  const apellidomaterno = req.body.datos;
  const telefonoprincipal = req.body.datos;
  const telefonosecundario = req.body.datos;
  const correo = req.body.datos;
  const domicilio = req.body.datos;
  const alergias = req.body.datos;
  const padecimientos = req.body.datos;
  const nombrefactura = req.body.datos;
  const paternofactura = req.body.datos;
  const maternofactura = req.body.datos;
  const codigopostal = req.body.datos;
  const colonia = req.body.datos;
  const nexterno = req.body.datos;
  const ninterno = req.body.datos;
  const rfc = req.body.datos;
  const fecha = req.body.datos;

  const nombrefamiliartutor = req.body.datos;
  const apellidosfamiliartutor = req.body.datos;
  const edadfamiliartutor = req.body.datos;
  const horariofamiliartutor = req.body.datos;
  const estudiosfamiliartutor = req.body.datos;
  const profesionfamiliartutor = req.body.datos;


  conn.query("insert into datospersonales(nombre,apellidopaterno,apellidomaterno,telefonoprincipal,telefonosecundario,correo,domicilio,alergias,padecimientos,fecha)values('"+nombre+"','"+apellidoparterno+"','"+apellidomaterno+"','"+telefonoprincipal+"','"+telefonosecundario+"','"+correo+"','"+domicilio+"','"+alergias+"','"+padecimientos+"','"+fecha+"')")
  conn.query("insert into facturacion(nombre,apellidopaterno,apellidomaterno,pais,estado,codigopostal,municipio,colonia,nexterno,ninterno,metodopago,rfc)values('"+nombrefactura+"','"+paternofactura+"','"+maternofactura+"','"+codigopostal+"','"+colonia+"','"+nexterno+"','"+ninterno+"','"+rfc+"','"+nexterno+"','"+ninterno+"','"+rfc+"','"+rfc+"')")
  conn.query("insert into familiar(nombre,apellidos,edad,estudios,profesion,horariolaboral)values('"+nombrefamiliartutor+"','"+apellidosfamiliartutor+"','"+edadfamiliartutor+"','"+estudiosfamiliartutor+"','"+profesionfamiliartutor+"','"+horariofamiliartutor+"')")
  res.json({
    resp: "ok",
    mensaje: "Registro exitoso",
  });
});

app.post("/interesados", (req, res) => {
  const {
    nombreInteresados,
    paternoInteresados,
    maternoInteresados,
    generoInteresados,
    fechaNacimientoInteresado,
    escuelaProcedenciaInteresados,
    comoEnteroInteresados,
    nombreTutorInteresados,
    paternoTutorInteresados,
    maternoTutorInteresados,
    correoInteresados,
    domicilioInteresados,
    telefonoPrincipalInteresados,
    telefonoSecundarioInteresados,
    nivelInteresados,
    gradoInteresados,
    fecha,
  } = req.body;
  conn.query(
    "insert into datospersonalesinteresado(nombre,apellidopaterno,apellidomaterno,genero,fechanacimiento,escuelaprocedencia,comoentero,fecha)values('" +nombreInteresados +"','" +paternoInteresados +"','" +maternoInteresados +"','" +generoInteresados +"','" +fechaNacimientoInteresado +"','" +escuelaProcedenciaInteresados +"','" +comoEnteroInteresados +"','"+fecha+"')"
  );
  conn.query(
    "insert into datostutorinteresado(nombre,apellidopaterno,apellidomaterno)values('" +nombreTutorInteresados +"','" +paternoTutorInteresados +"','" +maternoTutorInteresados +"')");
  conn.query(
    "insert into datoscontactointeresado(correo,domicilio,telefonoprincipal,telefonosecundario,nivelinteresado,gradointeresado)values('" +correoInteresados +"','" +domicilioInteresados +"','" +telefonoPrincipalInteresados +"','" +telefonoSecundarioInteresados +"','" +nivelInteresados +"','" +gradoInteresados +"')");
  res.send("send");
});
