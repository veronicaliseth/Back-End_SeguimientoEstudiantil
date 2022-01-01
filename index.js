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
  const nombreAlumno = req.body.datos[0];
  const matricula = req.body.datos[1];
  const curp = req.body.datos[2];
  const carrera = req.body.datos[3];
  const tipoSangre = req.body.datos[4];
  const nss = req.body.datos[5];
  const nombreCompletoFamiliar = req.body.datos[6];
  const numeroTelefono = req.body.datos[7];
  const fecha = req.body.datos[8];

  conn.query(
    "insert into credencialestudiante(nombreAlumno, matricula, curp, carrera, tipoSangre, nss, nombreCompletoFamiliar, numeroTelefono,fecha)values ('" +
      nombreAlumno +
      "', '" +
      matricula +
      "','" +
      curp +
      "', '" +
      carrera +
      "','" +
      tipoSangre +
      "', '" +
      nss +
      "', '" +
      nombreCompletoFamiliar +
      "', '" +
      numeroTelefono +
      "','"+fecha+"')"
  );
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
    "select * from usuarios where username = '" +
      username +
      "' and password = '" +
      password +
      "'",
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
  const fecha = req.body.datos[17];

  const nombrefamiliartutor = req.body.datos[18];
  const apellidosfamiliartutor = req.body.datos[19];
  const edadfamiliartutor = req.body.datos[20];
  const horariofamiliartutor = req.body.datos[21];
  const estudiosfamiliartutor = req.body.datos[22];
  const profesionfamiliartutor = req.body.datos[23];


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
    "insert into datospersonalesinteresado(nombre,apellidopaterno,apellidomaterno,genero,fechanacimiento,escuelaprocedencia,comoentero,fecha)values('" +
      nombreInteresados +
      "','" +
      paternoInteresados +
      "','" +
      maternoInteresados +
      "','" +
      generoInteresados +
      "','" +
      fechaNacimientoInteresado +
      "','" +
      escuelaProcedenciaInteresados +
      "','" +
      comoEnteroInteresados +
      "','"+fecha+"')"
  );
  conn.query(
    "insert into datostutorinteresado(nombre,apellidopaterno,apellidomaterno)values('" +
      nombreTutorInteresados +
      "','" +
      paternoTutorInteresados +
      "','" +
      maternoTutorInteresados +
      "')"
  );
  conn.query(
    "insert into datoscontactointeresado(correo,domicilio,telefonoprincipal,telefonosecundario,nivelinteresado,gradointeresado)values('" +
      correoInteresados +
      "','" +
      domicilioInteresados +
      "','" +
      telefonoPrincipalInteresados +
      "','" +
      telefonoSecundarioInteresados +
      "','" +
      nivelInteresados +
      "','" +
      gradoInteresados +
      "')"
  );
  res.send("send");
});

app.get("/controlDatos", (req,res) => {
    conn.query("select * from credencialestudiante", (err, rows, fields)=>{
        res.send(rows)
    })
});

app.get("/controldatosaspirantes", (req,res) => {
    conn.query("select nombre as nombreAlumno,fecha from datospersonales", (err, rows, fields)=>{
        res.send(rows)
    })
});

app.get("/controldatosinteresados", (req,res) =>{
    conn.query("select nombre as nombreAlumno,fecha from datospersonalesinteresado", (err, rows, fields)=>{
        res.send(rows)
    })
});