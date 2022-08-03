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

  async update({request, response}){
    
  }

  
  
}

module.exports = VdoController
