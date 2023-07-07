import { Router } from "express"
import { Contactos } from "../modelo/contactos.js"

const rutas = Router()
const contactos = new Contactos()


rutas.post("/all", async (req, res) => {
    // console.log(req.body, 'controlador listar contactos')
    try {
        const resultado = await contactos.listar()
        return res.json({ data: resultado, ok: true })
    } catch (error) {
        console.log(error)

        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }

})


rutas.post("/buscar", async (req, res) => {
    const dato = req.body.dato
    try {
        const resultado = await contactos.buscar(dato)
        return res.json({ data: resultado, ok: true })
    } catch (error) {
        // console.log(error)
        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }

})








export default rutas;