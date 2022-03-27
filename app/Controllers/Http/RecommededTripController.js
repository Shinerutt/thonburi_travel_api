'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const recommededTrip = use("App/Models/RecommededTrip")
/**
 * Resourceful controller for interacting with recommededtrips
 */
class RecommededTripController {
  /**
   * Show a list of all recommededtrips.
   * GET recommededtrips
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async index({ }) {

    return await recommededTrip
      .all()

  }

  /**
   * Render a form to be used for creating a new recommededtrip.
   * GET recommededtrips/create
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */

   async show({ params: { id }, request, response, view }) {
     console.log(id);
    var recommeded_trip = await recommededTrip.find(id)
    recommeded_trip.detail = await recommeded_trip.detail().fetch()
      return  await recommeded_trip
 
     
   }

}

module.exports = RecommededTripController
