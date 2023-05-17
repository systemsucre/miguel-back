import { Router } from "express"
import { Usuario } from "../modelo/usuario.js"

//const modelo from "../modelo/usuario.js"
// desde esta plantilla se importa las funcionalidades de los controladores de los modulos


const rutas = Router()
const usuario = new Usuario()




rutas.post("/ver", async (req, res) => {
    try {
        const resultado = await usuario.miPerfil(req.body.idUsuario)
        return res.json({ ok: true, data: resultado })
    } catch (error) {
        console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})

rutas.post("/cambiarMiContrasena",  async (req, res) => {
    const { pass1, pass2, idUsuario } = req.body
    const datos = { pass1, pass2, idUsuario }
    try {
        await usuario.cambiarMiContraseña(datos).then(j => {
            if (!j) return res.json({ msg: 'La contraseña actual no coincide', ok: false })
            if (j) res.json({ ok: true, msg: 'La contraseña se ha cambiado correctamente', ok: true })
        })
    } catch (error) {
        console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})




export default rutas;