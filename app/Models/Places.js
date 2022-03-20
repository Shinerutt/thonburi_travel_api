'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Places extends Model {
    review(){
       return this.hasMany("App/Models/Review","id","places_id")

    }
}

module.exports = Places
