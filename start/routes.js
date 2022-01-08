'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

// register user
Route.post("/register",'UsersTableController.register')
// show user by id
Route.get("/user/:user_id","UsersTableController.show")
// uodate user by id
Route.put("/user/:user_id","UsersTableController.update")
// Delete User by user id
Route.delete("/user/:user_id","UsersTableController.destroy")

Route.get("/places/:category",'PlacesController.index')

Route.get("/view/places/:id",'PlacesController.show')