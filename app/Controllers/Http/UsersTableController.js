'use strict'

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const Users = use("App/Models/Users")
/**
 * Resourceful controller for interacting with userstables
 */
class UsersTableController {


  /**
   * Create/save a new userstable.
   * POST userstables
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async register({ request, response }) {
    var { email, password, first_name, last_name, nick_name } = request.only(['email', 'password', 'first_name', 'last_name', 'nick_name'])

    var user = new Users()
    user.email = email
    user.password = password
    user.first_name = first_name
    user.last_name = last_name
    user.nick_name = nick_name

    try {
      await user.save()
      return {
        status: true,
        data: user
      }
    } catch (error) {
      console.log(error);
      return {
        status: false
      }
    }

  }

  /**
   * Display a single userstable.
   * GET userstables/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   * @param {View} ctx.view
   */
  async show({ params: { user_id }, request, response, view }) {
    var user = await Users.find(user_id)
    return user
  }



  /**
   * Update userstable details.
   * PUT or PATCH userstables/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async update({ params: { user_id }, request, response }) {
    var { email, first_name, last_name, nick_name } = request.only(['email', 'first_name', 'last_name', 'nick_name'])
    var user = await Users.find(user_id)
    if (user) {
      user.email = (email) ? email : user.email
      user.first_name = (first_name) ? first_name : user.first_name
      user.last_name = (last_name) ? last_name : user.last_name
      user.nick_name = (nick_name) ? nick_name : user.nick_name

      try {
        await user.save()
        return {
          status: true,
          data: user
        }
      } catch (error) {
        console.log(error);
        return {
          status: false
        }
      }
    } else {
      return {
        status: false,
        message: "User not found"
      }
    }

  }

  /**
   * Delete a userstable with id.
   * DELETE userstables/:id
   *
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Response} ctx.response
   */
  async destroy({ params: { user_id }, request, response }) {
    var user = await Users.find(user_id)
    
    try {
      await user.delete()
      return {
        status: true
      }
    } catch (error) {
      console.log(error);
      return {
        status: false
      }
    }
  }
}

module.exports = UsersTableController
