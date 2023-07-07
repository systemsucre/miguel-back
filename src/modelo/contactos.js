
import pool from './bdConfig.js'

export class Contactos {


    listar = async () => {
        const sql =
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts 
         ORDER by id DESC limit 7`;
        const [rows] = await pool.query(sql)
        console.log(rows)
        return rows
    }



    buscar = async (dato) => {
        const sql =
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts where number like '${dato}%'`;
        const [rows] = await pool.query(sql)
        return rows
    }


}