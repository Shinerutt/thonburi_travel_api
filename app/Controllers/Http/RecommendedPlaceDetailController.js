'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const RecommendedPlaceDetail = use("App/Models/RecommendedPlaceDetail")
const { uuid } = require('uuidv4');
/**
 * Resourceful controller for interacting with recommendedplacedetails
 */
class RecommendedPlaceDetailController {
  
  async create ({request, response}){
    try {
      var {img_places,ref_recommended,content,lat,lng,name} = request.only(['img_places','ref_recommended','content','lat','lng','name'])
      var recommendedPlaceDetail = new RecommendedPlaceDetail()
      recommendedPlaceDetail.id = uuid()
      recommendedPlaceDetail.img_places = img_places
      recommendedPlaceDetail.ref_recommended = ref_recommended
      recommendedPlaceDetail.content = content
      recommendedPlaceDetail.lat = lat
      recommendedPlaceDetail.lng = lng
      recommendedPlaceDetail.name = name
      await recommendedPlaceDetail.save()
      return {
        "status":true , "data" :recommendedPlaceDetail
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
      var {img_places,ref_recommended,content,lat,lng,name} = request.only(['name','img_places','ref_recommended','content','lat','lng'])
      const recommendedPlaceDetail = await RecommendedPlaceDetail.find(id)

      if(recommendedPlaceDetail){
        // () = if () ? {data} : else{}
        recommendedPlaceDetail.img_places = (img_places != undefined ) ? img_places : recommendedPlaceDetail.img_places
        recommendedPlaceDetail.ref_recommended = (ref_recommended != undefined ) ? ref_recommended : recommendedPlaceDetail.ref_recommended 
        recommendedPlaceDetail.content = (content != undefined ) ? content : recommendedPlaceDetail.content
        recommendedPlaceDetail.lat = (lat != undefined ) ? lat : recommendedPlaceDetail.lat
        recommendedPlaceDetail.lng = (lng != undefined ) ? lng : recommendedPlaceDetail.lng
        recommendedPlaceDetail.name = (name != undefined ) ? name : recommendedPlaceDetail.name
        await recommendedPlaceDetail.save()
        return {
          "status":true , "data" :recommendedPlaceDetail
        }
      }else{
        return {"status": false, "message": "RecommendedPlaceDetail Not Found"}
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
      const recommendedPlaceDetail = await RecommendedPlaceDetail.find(id)

      if(recommendedPlaceDetail){
        await recommendedPlaceDetail.delete()
        return {"status" :true }
      }else{
        return {"status": false, "message": "RecommendedPlaceDetail Not Found"}
      }
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
  }

}

module.exports = RecommendedPlaceDetailController
