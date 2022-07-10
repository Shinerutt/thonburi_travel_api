'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class RecommededTrip extends Model {
    detail(){
        return this.hasMany("App/Models/RecommededTripDetail","id","ref_recommened")
    }
}

module.exports = RecommededTrip
