import express from "express";
import { KEY } from '../config.js'
import pool from '../modelo/bdConfig.js'

import jwt from 'jsonwebtoken'


import contacts from "../controlador/contacts.js";
import Admin from "../controlador/admin.js";
import Contactos from "../controlador/contactos.js";
import plus from "../controlador/plus.js";
import miPerfil from '../controlador/miPerfil.js';


const rutas = express();


rutas.get('/', async (req, res) => {
    console.log("datos de la solicitud: ", req.query)
    try {
        const sql = ` SELECT id
        from cliente
        WHERE email = ${pool.escape(req.query.email)} and eliminado = 0 `;

        const [result] = await pool.query(sql)
        // console.log("datos de la consulta: ", result)
        if (result.length === 0) {
            const datos = {
                nombre: req.query.nombre,
                apellido: req.query.apellidos,
                email: req.query.email,
            }
            await pool.query(`INSERT INTO cliente SET ?`, datos)
        }
        const sql_ = ` SELECT id, estado
        from cliente
        WHERE email = ${pool.escape(req.query.email)} and eliminado = 0 `;

        const [result_] = await pool.query(sql_)
        if (result_.length === 1) {

            var d = new Date();
            let fecha = d.toISOString().split('T')[0] + ' ' + d.toTimeString().split(' ')[0];
            const payload = {
                "email": req.query.email,
                'fecha': fecha
            }
            const token = jwt.sign(payload, KEY, {
                expiresIn: "14d"
            })


            const idcliente = result_[0].id

            const datos = {
                idcliente,
                fecha,
                token,
            }

            const [sesion] = await pool.query(`INSERT INTO sesion_cliente SET ?`, datos)
            // console.log('dentro del bloque', sesion)

            if (sesion.insertId > 0) {
                // console.log('dentro del bloquesss', req.query.user, req.query.pass)

                const sqlInfo = `SELECT c.id, c.nombre, c.apellido as apellido, c.email, s.token,  "usuario" as rol, 2 as numRol, c.estado 
                    from cliente c
                    inner join sesion_cliente s on c.id = s.idcliente
                    where c.email = ${pool.escape(req.query.email)}  and c.eliminado = 0`;
                const [info] = await pool.query(sqlInfo)
                // console.log("datos de la consulta: ", info[0])

                return res.json({
                    'token': token,
                    'nombre': info[0].nombre,
                    'apellido': info[0].apellido,
                    'email': info[0].email,
                    'rol': info[0].rol,
                    'numRol': info[0].numRol,
                    'estado': info[0].estado,
                    ok: true,
                    msg: 'Acceso correcto'
                })
            }
            else {
                return res.json({ msg: 'Intente nuevamente ', ok: false })
            }
        }
        else {
            console.log('El usuario no existe')
            return res.json({ msg: 'El usuario no existe !', ok: false })
        }
    } catch (error) {
        console.log(error, 'error general')
        return res.json({ msg: 'El servidor no responde !', ok: false })
    }
})

rutas.get('/admin', async (req, res) => {
    console.log("datos de la solicitud administrador ")

    try {
        const sql = ` SELECT id, username
        from usuario
        WHERE username = ${pool.escape(req.query.user)} and pass = ${pool.escape(req.query.pass)}`;

        // console.log(await pool.query(sql), 'resultados de la consulta inicial')
        const [result] = await pool.query(sql)
        // console.log("datos de la consulta: ", result)

        if (result.length === 1) {
            var d = new Date();
            let fecha = d.toISOString().split('T')[0] + ' ' + d.toTimeString().split(' ')[0];
            const payload = {
                "usuario": result[0].username,
                'fecha': fecha
            }
            const token = jwt.sign(payload, KEY, {
                expiresIn: "14d"
            })

            const idusuario = result[0].id

            const datos = {
                idusuario,
                fecha,
                token
            }

            const [sesion] = await pool.query(`INSERT INTO sesion SET ?`, datos)
            // console.log('dentro del bloque', sesion)

            if (sesion.insertId > 0) {
                // console.log('dentro del bloquesss', req.query.user, req.query.pass)

                const sqlInfo = `SELECT u.username, "anonimus" as nombre, "SSW" as apellido, s.token, "admin" as rol, 1 as numRol
                    from usuario u
                    inner join sesion s on u.id = s.idusuario
                    where u.username = ${pool.escape(req.query.user)} and u.pass = ${pool.escape(req.query.pass)} `;
                const [info] = await pool.query(sqlInfo)
                // console.log("datos de la consulta: ", info[0])

                return res.json({
                    'token': token,
                    'username': info[0].username,
                    'nombre': info[0].nombre,
                    'apellido': info[0].apellido,
                    'rol': info[0].rol,
                    'numRol': info[0].numRol,
                    ok: true,
                    msg: 'Acceso correcto'
                })
            }
            else {
                return res.json({ msg: 'Intente nuevamente ', ok: false })
            }
        }
        else {
            // console.log('El usuario no existe')
            return res.json({ msg: 'El usuario no existe !', ok: false })
        }
    } catch (error) {
        // console.log(error)
        return res.json({ msg: 'El servidor no responde !', ok: false })
    }
})

//VERIFICACION DE LA SESION QUE ESTA ALMACENADA EN LA BD
const verificacion = express();

verificacion.use((req, res, next) => {
    // console.log('verificacion')

    try {
        const bearerHeader = req.headers['authorization'];

        if (typeof bearerHeader !== 'undefined') {
            const bearetoken = bearerHeader.split(" ")[1];
            // console.log('pasa la primera condicional, se ha obtenido los encabezados', bearetoken )

            jwt.verify(bearetoken, KEY, async (errtoken, authData) => {
                if (errtoken) {
                    // console.log('error en la verificacion token alterado: ', bearetoken)
                    pool.query('delete from sesion where token = ?', [bearetoken])
                    return res.json({ ok: false, msg: 'Su token a expirado, cierre sesion y vuelva a iniciar sesion' })
                }

                // console.log('pasa la verificacion del token', bearetoken)
                const sql = `SELECT u.id, 1 as numero from usuario u
                inner join sesion s on u.id = s.idusuario
                where s.token  = ${pool.escape(bearetoken)}`;
                const [result] = await pool.query(sql)
                // console.log(result)
                if (result.length > 0) {
                    req.body.rol = await result[0].numero
                    req.body.idUsuario = await result[0].id
                    next()
                }
                else {

                    return res.json({ ok: false, msg: 'El Servidor no puede identificar su autencidad en la base de datos, cierre sesion y vuelva a intentar' })
                }
            })
        }
        else {
            return res.json({ ok: false, msg: 'El Servidor no puede interpretar su autenticidad' })
        }
    } catch (error) {
        // console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})

const verificacion_ = express();

verificacion_.use((req, res, next) => {

    try {
        const bearerHeader = req.headers['authorization'];

        if (typeof bearerHeader !== 'undefined') {
            const bearetoken = bearerHeader.split(" ")[1];
            // console.log('pasa la primera condicional, se ha obtenido los encabezados', bearetoken )

            jwt.verify(bearetoken, KEY, async (errtoken, authData) => {
                if (errtoken) {
                    // console.log('error en la verificacion token alterado: ', bearetoken)
                    pool.query('delete from sesion_cliente where token = ?', [bearetoken])
                    return res.json({ ok: false, msg: 'Su token a expirado, cierre sesion y vuelva a iniciar sesion' })
                }

                // console.log('pasa la verificacion del token', bearetoken)
                const sql = `SELECT c.id, 2 as numero from cliente c
                inner join sesion_cliente s on c.id = s.idcliente
                where s.token  = ${pool.escape(bearetoken)}`;
                const [result] = await pool.query(sql)
                if (result.length > 0) {
                    req.body.rol = await result[0].numero
                    req.body.idUsuario = await result[0].id
                    next()
                }
                else {
                    return res.json({ ok: false, msg: 'El Servidor no puede identificar su autencidad en la base de datos, cierre sesion y vuelva a intentar' })
                }
            })
        }
        else {
            return res.json({ ok: false, msg: 'El Servidor no puede interpretar su autenticidad' })
        }
    } catch (error) {
        // console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})



const verificacionPago = express();

verificacionPago.use((req, res, next) => {

    try {
        const bearerHeader = req.headers['authorization'];

        if (typeof bearerHeader !== 'undefined') {
            const bearetoken = bearerHeader.split(" ")[1];
            // console.log('pasa la primera condicional, se ha obtenido los encabezados', bearetoken )

            jwt.verify(bearetoken, KEY, async (errtoken, authData) => {
                if (errtoken) {
                    // console.log('error en la verificacion token alterado: ', bearetoken)
                    pool.query('delete from sesion_cliente where token = ?', [bearetoken])
                    return res.json({ ok: false, msg: 'Su token a expirado, cierre sesion y vuelva a iniciar sesion' })
                }

                // console.log('pasa la verificacion del token', bearetoken)
                const sql = `SELECT c.id, 2 as numero, c.estado from cliente c
                inner join sesion_cliente s on c.id = s.idcliente
                where s.token  = ${pool.escape(bearetoken)}`;
                const [result] = await pool.query(sql)
                // console.log(result[0].estado, bearerHeader, 'estado usuariu')
                if (result.length > 0 && result[0].estado == 1) {
                    req.body.rol = await result[0].numero
                    req.body.idUsuario = await result[0].id
                    next()
                }
                else {
                    return res.json({ ok: false, msg: 'Para ser usuario premiun debe pagar una suma de 25 Bs.' })
                }
            })
        }
        else {
            return res.json({ ok: false, msg: 'El Servidor no puede interpretar su autenticidad' })
        }
    } catch (error) {
        // console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})



const rolesAdmin = (req, res, next) => {
    if (parseInt(req.body.rol) === 1) {
        next()
        // console.log('pasa por aqui')
    }
}

const rolesUser = (req, res, next) => {
    if (parseInt(req.body.rol) === 2) {
        next()
        // console.log('pasa por aqui')
    }
}


rutas.post('/logoutUSer', (req, res) => {
    const sql = `delete from sesion_cliente where token = ${pool.escape(req.body.token)} `
    console.log(sql, 'cadena sql')
    pool.query(sql)
})

rutas.use("/contacts", contacts)
rutas.use("/admin", verificacion, rolesAdmin, Admin)
rutas.use("/contactos", verificacion_, rolesUser, Contactos)
rutas.use("/plus", verificacion_, rolesUser, plus)
rutas.use("/miPerfil", verificacion, miPerfil)

export default rutas;    