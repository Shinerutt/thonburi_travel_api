'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const recommededPlaces = use("App/Models/RecommendedPlace")
/**
 * Resourceful controller for interacting with recommendedplaces
 */
class RecommendedPlaceController {
  /**
   * Show a list of all recommendedplaces.
   * GET recommendedplaces
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
   async index({params, request, response, view }) {

    return await recommededPlaces
      .all()

  }

  /**
   * Render a form to be used for creating a new recommendedplace.
   * GET recommendedplaces/create
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
   async show({ params: { id }, request, response, view }) {
   var recommeded_places = await recommededPlaces.find(id)
   recommeded_places.detail = await recommeded_places.detail().fetch()
     return  await recommeded_places

    
  }
  
}

module.exports = RecommendedPlaceController
