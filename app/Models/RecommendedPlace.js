'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class RecommendedPlace extends Model {
    detail(){
        return this.hasMany("App/Models/RecommendedPlaceDetail","id","ref_recommended")
    }
}

module.exports = RecommendedPlace
