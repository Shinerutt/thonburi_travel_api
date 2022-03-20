'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const Review = use("App/Models/Review")
const { uuid } = require('uuidv4');
/**
 * Resourceful controller for interacting with reviewtables
 */
class ReviewController {


  /**
   * Create/save a new reviewtable.
   * POST reviewtables
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async store({ request, response }) {

    try {
      var review = new Review()
      var { places_id, user_id, content, rate } = request.only(['places_id', 'user_id', 'content', 'rate'])
      review.id = uuid()
      review.places_id = places_id
      review.user_id = user_id
      review.content = content
      review.rate = rate
      await review.save()
      response.status(200).json({
        status: true,
        message: "Create Comment successfully"
      })
    } catch (error) {
      console.log(error);
      response.status(400).json({
        status: false,
        message: "System Error"
      })
    }
  }
}

module.exports = ReviewController
