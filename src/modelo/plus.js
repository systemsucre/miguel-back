
import pool from './bdConfig.js'

export class Plus {


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
            `SELECT id, name, number, headline, DATE_FORMAT(create_, "%Y-%m-%d") AS date FROM contacts where number like '${dato}%' or name like '${dato}%'
            or headline like '${dato}%'`;
        const [rows] = await pool.query(sql)
        return rows
    }



    eliminar = async (dato) => {
        const sql = `select * from contacts
        WHERE headline =  ${pool.escape(dato.email)} and number = ${pool.escape(dato.numero)}`;
        const [result] = await pool.query(sql)
        if (result.length > 0) {
            const sql = `delete from contacts
            WHERE number =  ${pool.escape(dato.numero)} and headline =  ${pool.escape(dato.email)} `;
            await pool.query(sql)
            return await this.listar()
        } else return { existe: 1 }
    }

}