'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const RecommededTrip = use("App/Models/RecommededTrip")
const { uuid } = require('uuidv4');
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

    return await RecommededTrip
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
    var recommeded_trip = await RecommededTrip.find(id)
    recommeded_trip.detail = await recommeded_trip.detail().fetch()
    return await recommeded_trip


  }

  async create ({request, response}){
    try {
      var {img_cover,title} = request.only(['img_cover','title'])
      var recommeded_Trip = new RecommededTrip()
      recommeded_Trip.id = uuid()
      recommeded_Trip.img_cover = img_cover
      recommeded_Trip.title = title
      
      await recommeded_Trip.save()
      return {
        "status":true , "data" :recommeded_Trip
      }
      
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
   
  }


}

module.exports = RecommededTripController
