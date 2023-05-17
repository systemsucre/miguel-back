import { Router } from "express"
import { Contacts } from "../modelo/contacts.js"


const rutas = Router()
const contacts = new Contacts()

rutas.get("/", async (req, res) => {
    res.send("Hola android studio")
})

rutas.post("/contacts", async (req, res) => {
    console.log('llega al controlador contacts desde android studio', req.body)
    try {
        const resultado = await contacts.leer(req.body.value)
        console.log(resultado)
        return res.json({ data: resultado })

    } catch (error) {
        console.log(error)
        return res.json({ msg: 'Error en el servidor controlador', ok: false })
    }
})


rutas.post("/register", async (req, res) => {
    console.log('registrate; ', req.body)
    let { number, name, mail } = req.body
    try {
        number = number.replace("(","")
        number = number.replace(")","")
        number = number.replace("-","")
        number = number.replace(" ","")
        number = number.replace("+591","")
        let fecha = new Date().toLocaleDateString()
        let año = fecha.split('/')[2]
        let mes = fecha.split('/')[1]
        let dia = fecha.split('/')[0]
        if (mes < 10) {
            mes = 0 + '' + mes
        }
        if (dia < 10) {
            dia = 0 + '' + dia
    
        }
        const fechaFinal = año + '-' + mes + '-' + dia
        let data = { name, number,  headline:mail, create_: fechaFinal }

        const resultado =  await contacts.register(data)
        return res.json({ data: resultado })

    } catch (error) {
        console.log(error)
        return res.json({ msg: 'Error en el servidor', ok: false })
    }
})





export default rutas;