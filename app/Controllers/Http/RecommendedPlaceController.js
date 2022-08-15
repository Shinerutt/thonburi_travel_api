'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const RecommededPlaces = use("App/Models/RecommendedPlace")
const { uuid } = require('uuidv4');
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

    return await RecommededPlaces
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
   var recommeded_places = await RecommededPlaces.find(id)
   recommeded_places.detail = await recommeded_places.detail().fetch()
     return  await recommeded_places

    
  }

  async create ({request, response}){
    try {
      var {img_cover,title} = request.only(['img_cover','title'])
      var recommededPlaces = new RecommededPlaces()
      recommededPlaces.id = uuid()
      recommededPlaces.img_cover = img_cover
      recommededPlaces.title = title
      
      await recommededPlaces.save()
      return {
        "status":true , "data" :recommededPlaces
      }
      
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
   
  }

  




  
}

module.exports = RecommendedPlaceController
