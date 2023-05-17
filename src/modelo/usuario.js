
import pool from './bdConfig.js'

export class Usuario {

    // METODOS
    cambiarMiContraseña = async (datos) => {
        const sqlExists = `SELECT * FROM usuario WHERE 
            pass = ${pool.escape(datos.pass1)} 
            and id = ${pool.escape(datos.idUsuario)}`;
        const [result] = await pool.query(sqlExists)

        if (result.length > 0) {


            const sql = `UPDATE usuario SET
                pass = ${pool.escape(datos.pass2)}
                WHERE id = ${pool.escape(datos.idUsuario)}`;

            await pool.query(sql);
            return true

        } else return false
    }


    miPerfil = async (id) => {
        const sql =
            `SELECT "Anonims" as  nombre, "SSW" as apellido,
            username, pass
                     from usuario
                     where id = ${pool.escape(id)}
                     `;
        const [rows] = await pool.query(sql)
        console.log(rows)
        return rows
    }





}