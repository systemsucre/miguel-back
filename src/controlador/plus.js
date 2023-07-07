import { Router } from "express"
import { Plus } from "../modelo/plus.js"

const rutas = Router()
const plus = new Plus()


rutas.post("/sig", async (req, res) => {
    // console.log(req.body.id)

    let id = req.body.id
    try {
        const resultado = await plus.listarSiguiente(id)
        if (resultado.length > 0)
            return res.json({ ok: true, data: resultado })
        else
            return res.json({ ok: false, msg: 'Ya no hay mas registros!' })
    } catch (error) {
        console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})


rutas.post("/ant", async (req, res) => {
    let id = req.body.id
    try {
        const resultado = await plus.listarAnterior(id)
        if (resultado.length > 0)
            return res.json({ ok: true, data: resultado })
        else
            return res.json({ ok: false, msg: 'Ya no hay mas registros!' })
    } catch (error) {
        console.log(error)
        return res.json({ ok: false, msg: 'Error en el servidor' })
    }
})

rutas.post("/all", async (req, res) => {
    // console.log(req.body, 'controlador listar contactos')
    try {
        const resultado = await plus.listar()
        return res.json({ data: resultado, ok: true })
    } catch (error) {
        console.log(error)

        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }

})


rutas.post("/buscar", async (req, res) => {
    const dato = req.body.dato
    try {
        const resultado = await plus.buscar(dato)
        return res.json({ data: resultado, ok: true })
    } catch (error) {
        // console.log(error)
        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }

})




rutas.post("/eliminar", async (req, res) => {
    const { id, numero, email } = req.body
    const datos = { id, email, numero }
    try {
        const resultado = await plus.eliminar(datos)
        if (resultado.existe === 1)
            return res.json({ msg: "El contacto no se ha eliminado", ok: false });
        return res.json({ ok: true, data: resultado, msg: 'El Contacto se ha eliminado' })
    } catch (error) {
        console.log(error)
        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }
})



export default rutas;