
import pool from './bdConfig.js'

export class Contacts {


    // METODOS

    leer = async (value) => {
        const sql =
            `SELECT id, name, number, DATE_FORMAT(create_,"%Y-%m-%d") as created FROM contacts where number = ${pool.escape(value)}`;
        // console.log(sql)
        const [rows] = await pool.query(sql)
        // console.log(rows, 'registro en el modelos')

        return rows
    }

    
    register = async (data) => {
        const sql = `delete from contacts where headline =${pool.escape(data.headline)} and number = ${pool.escape(data.number)}`
        await pool.query(sql)
        await pool.query("INSERT INTO contacts SET  ?", data)
        return []
    }










}