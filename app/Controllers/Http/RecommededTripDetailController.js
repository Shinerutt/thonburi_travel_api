'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
  const RecommededTripDetail = use("App/Models/RecommededTripDetail")
  const { uuid } = require('uuidv4');
/**
 * Resourceful controller for interacting with recommededtripdetails
 */
class RecommededTripDetailController {
  
  async create ({request, response}){
    try {
      var {img_place,name,ref_recommended,content,lat,lng} = request.only(['img_place','ref_recommended','content','lat','lng','name'])
      var recommededTripDetail = new RecommededTripDetail()
      recommededTripDetail.id = uuid()
      recommededTripDetail.img_place = img_place
      recommededTripDetail.ref_recommended = ref_recommended
      recommededTripDetail.content = content
      recommededTripDetail.lat = lat
      recommededTripDetail.lng = lng
      recommededTripDetail.name = name
      await recommededTripDetail.save()
      return {
        "status":true , "data" :recommededTripDetail
      }
      
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
   
  }
  
  async update({ params: { id },request, response}){
    try {
      var {img_place,ref_recommended,content,lat,lng,name} = request.only(['name','img_place','ref_recommended','content','lat','lng'])
      const recommededTripDetail = await RecommededTripDetail.find(id)

      if(recommededTripDetail){
        // () = if () ? {data} : else{}
        recommededTripDetail.img_place = (img_place != undefined ) ? img_place : recommededTripDetail.img_place
        recommededTripDetail.ref_recommended = (ref_recommended != undefined ) ? ref_recommended : recommededTripDetail.ref_recommended 
        recommededTripDetail.content = (content != undefined ) ? content : recommededTripDetail.content
        recommededTripDetail.lat = (lat != undefined ) ? lat : recommededTripDetail.lat
        recommededTripDetail.lng = (lng != undefined ) ? lng : recommededTripDetail.lng
        recommededTripDetail.name = (name != undefined ) ? name : recommededTripDetail.name
        await recommededTripDetail.save()
        return {
          "status":true , "data" :recommededTripDetail
        }
      }else{
        return {"status": false, "message": "RecommededTripDetail Not Found"}
      }
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }

  }

  async delete ({ params: { id },request, response}){
    try {
      const recommededTripDetail = await RecommededTripDetail.find(id)

      if(recommededTripDetail){
        await recommededTripDetail.delete()
        return {"status" :true }
      }else{
        return {"status": false, "message": "RecommededTripDetail Not Found"}
      }
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
  }
  
}

module.exports = RecommededTripDetailController
