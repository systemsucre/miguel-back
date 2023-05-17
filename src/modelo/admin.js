
import pool from './bdConfig.js'

export class Admin {


    listar = async () => {
        const sql =
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts 
         ORDER by id DESC limit 7`;
        const [rows] = await pool.query(sql)
        console.log(rows)
        return rows
    }

    listarSiguiente = async (id) => {
        const sql =
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts 
            WHERE id < ${pool.escape(id)} ORDER by id DESC  limit 7`;
        const [rows] = await pool.query(sql)
        return rows
    }


    listarAnterior = async (id) => {
        const sql =
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts 
            WHERE id > ${pool.escape(id)}  limit 7`;
        const [rows] = await pool.query(sql)
        rows.reverse()
        return rows
    }


    buscar = async (dato) => {
        const sql =
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts where number like '${dato}%'`;
        const [rows] = await pool.query(sql)
        return rows
    }



    eliminar = async (number) => {
        const sql = `delete from contacts
        WHERE number =  ${pool.escape(number)}`;
        await pool.query(sql)
        return await this.listar()
    }

}