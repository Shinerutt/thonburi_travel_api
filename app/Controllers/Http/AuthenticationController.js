'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

const Users = use("App/Models/Users")
const Hash = use('Hash')
class AuthenticationController {
    async login({ request }){
        var { email,password } = request.only(['email', 'password'])
        const [user] = (await Users.query().where("email", email).fetch()).toJSON()
        if (user){
            const passwordValid = await Hash.verify(password.trim(), user.password);
            if(passwordValid){
                delete user.password
                return {"status":true,"data":user}
            }else{
                return {"status":false,"message":"รหัสผ่านไม่ถูกต้อง"}
            }
        }
        else{
            return {"status":false,"message":"ไม่พบข้อมูลสมาชิก"}
        }
    }
}

module.exports = AuthenticationController
