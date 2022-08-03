'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const Places = use("App/Models/Places")
const { uuid } = require('uuidv4');

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
  
  async create({request, response}){
    try {
      var { name,lat,lng,detail,category,img_places } = request.only(['name', 'lat','lng','detail','category','img_places'])
      var places = new Places()
      places.id = uuid()
      places.name = name
      places.lat = lat
      places.lng = lng
      places.detail = detail
      places.category = category
      var img_places_array = img_places.map(x=>x.img)
      places.img_places = JSON.stringify(img_places_array)
      console.log(img_places_array);
      await places.save()
      return {
        "status": true, "data" :places
      }
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    } 
  }

async update({ params: { places_id },request, response}) {
  try {
    var { name,lat,lng,detail,category,img_places } = request.only(['name', 'lat','lng','detail','category','img_places'])
    const places = await Places.find(places_id)
    if(places){
       // () = if () ? {data} : else{}
       places.name = (name != undefined ) ? name : places.name
       places.lat = (lat != undefined ) ? lat : places.lat
       places.lng = (lng != undefined ) ? lng : places.lng
       places.detail = (detail != undefined ) ? detail : places.detail
       places.category = (category != undefined ) ? category : places.category
       places.img_places = (img_places != undefined ) ? JSON.stringify(img_places.map(x=>x.img)) : places.img_places
       await places.save()
       return {
        "status":true , "data" :places
      }
    }else{
      return {"status": false, "message": "Places Not Found"}
    }
  } catch (error) {
    return {
      "status":false,
      "message" :error.message
    }
  }
}

async delete ({ params: { places_id },request, response}){
  try {
    const places = await Places.find(places_id)

    if(places){
      await places.delete()
      return {"status" :true }
    }else{
      return {"status": false, "message": "Places Not Found"}
    }
  } catch (error) {
    return {
      "status":false,
      "message" :error.message
    }
  }
}

}

module.exports = PlacesController
