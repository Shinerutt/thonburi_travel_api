'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
    const Vdo = use("App/Models/Vdo")
    const { uuid } = require('uuidv4');
/**
 * Resourceful controller for interacting with vdos
 */
class VdoController {
  /**
   * Show a list of all vdos.
   * GET vdos
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async index ({ request, response, view }) {
    return await Vdo
    .all()
  }

  async create ({request, response}){
    try {
      var {img_cover,name,vdo_link} = request.only(['img_cover','name','vdo_link'])
      var vdo = new Vdo()
      vdo.id = uuid()
      vdo.img_cover = img_cover
      vdo.name = name
      vdo.vdo_link = vdo_link
      await vdo.save()
      return {
        "status":true , "data" :vdo
      }
      
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
   
  }

  async update({ params: { vdo_id },request, response}){
    try {
      var {img_cover,name,vdo_link} = request.only(['img_cover','name','vdo_link'])
      const vdo = await Vdo.find(vdo_id)

      if(vdo){
        // () = if () ? {data} : else{}
        vdo.img_cover = (img_cover != undefined ) ? img_cover : vdo.img_cover
        vdo.name = (name != undefined ) ? name : vdo.name 
        vdo.vdo_link = (vdo_link != undefined ) ? vdo_link : vdo.vdo_link
        await vdo.save()
        return {
          "status":true , "data" :vdo
        }
      }else{
        return {"status": false, "message": "Video Not Found"}
      }
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }

  }

  async delete ({ params: { vdo_id },request, response}){
    try {
      const vdo = await Vdo.find(vdo_id)

      if(vdo){
        await vdo.delete()
        return {"status" :true }
      }else{
        return {"status": false, "message": "Video Not Found"}
      }
    } catch (error) {
      return {
        "status":false,
        "message" :error.message
      }
    }
  }

  
  
}

module.exports = VdoController
