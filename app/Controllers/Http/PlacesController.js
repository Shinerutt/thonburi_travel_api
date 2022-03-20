'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const Places = use("App/Models/Places")
/**
 * Resourceful controller for interacting with placess
 */
class PlacesController {
  /**
   * Show a list of all placess.
   * GET placess
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async index({ params: { category }, request, response, view }) {
    if (category == "all") {
      return await Places
        .all()
    } else {
      return await Places
        .query()
        .where("category", category)
        .fetch()
    }
  }

  /**
   * Render a form to be used for creating a new places.
   * GET placess/create
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */

  async show({ params: { id }, request, response, view }) {
    var places_detail = await Places.find(id)
    places_detail.review = await places_detail.review()
    .with("user")
    .fetch()
     return await places_detail
    
  }




}

module.exports = PlacesController
