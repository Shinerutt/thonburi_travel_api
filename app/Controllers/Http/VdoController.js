'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
    const Vdo = use("App/Models/Vdo")
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

  
  
}

module.exports = VdoController
