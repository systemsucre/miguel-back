import { Router } from "express"
import { Admin } from "../modelo/admin.js"

const rutas = Router()
const admin = new Admin()


rutas.post("/sig", async (req, res) => {
    console.log(req.body.id)

    let id = req.body.id
    try {
        const resultado = await admin.listarSiguiente(id)
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
        const resultado = await admin.listarAnterior(id)
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
        const resultado = await admin.listar()
        return res.json({ data: resultado, ok: true })
    } catch (error) {
        console.log(error)

        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }

})


rutas.post("/buscar", async (req, res) => {
    const dato = req.body.dato
    try {
        const resultado = await admin.buscar(dato)
        return res.json({ data: resultado, ok: true })
    } catch (error) {
        // console.log(error)
        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }

})




rutas.post("/eliminar", async (req, res) => {
    // console.log(req.body)
    try {
        const number = req.body.numero;
        const resultado = await admin.eliminar(number)
        if (resultado.affectedRows === 0)
            return res.json({ msg: "No existe el registro", ok: false });
        return res.json({ ok: true, data: resultado, msg: 'El registro se ha eliminado' })
    } catch (error) {
        console.log(error)
        return res.json({ ok: false, msg: 'Error en el Servidor' })
    }
})



export default rutas;