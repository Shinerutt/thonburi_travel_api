'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')
const Hash = use('Hash')
const { v4: uuidv4 } = use('uuid');

class Users extends Model {
    static boot() {
        super.boot()

        this.addHook('beforeCreate', async (userInstance) => {
            userInstance.id = uuidv4()
            userInstance.password = await Hash.make(userInstance.password)
            userInstance.img_profile = 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png'
        })
    }
}

module.exports = Users
