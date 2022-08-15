'use strict'

const { route } = require('@adonisjs/framework/src/Route/Manager')

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

Route.post("/places","PlacesController.create")

Route.get("/view/places/:id",'PlacesController.show')

Route.post("/update/places/:places_id", "PlacesController.update")

Route.delete("/places/:places_id" ,"PlacesController.delete")

Route.get("/vdo",'VdoController.index')

Route.post("/vdo", "VdoController.create")

Route.post("/update/vdo/:vdo_id" , "VdoController.update")

Route.delete("/vdo/:vdo_id" ,"VdoController.delete")

Route.post("/login","AuthenticationController.login")

Route.post("/comment/save","ReviewsController.store")

Route.get("/recommededPlaces","RecommendedPlaceController.index")

Route.get("/view/recommededPlaces/:id",'RecommendedPlaceController.show')

Route.post("/recommededPlaces" , "RecommendedPlaceController.create")

Route.get("/recommededTrip","RecommededTripController.index")

Route.post("/recommededTrip" , "RecommededTripController.create")

Route.get("/view/recommededTrip/:id",'RecommededTripController.show')
// post = ``insearch ลง database
Route.post("/recommededTripDetail" , "RecommededTripDetailController.create")

Route.put("/recommededTripDetail/:id" , "RecommededTripDetailController.update")

Route.delete("/recommededTripDetail/:id" , "RecommededTripDetailController.delete")

Route.post("/recommendedPlaceDetail" ,"RecommendedPlaceDetailController.create" )

Route.put("/recommendedPlaceDetail/:id", "RecommendedPlaceDetailController.update")

Route.delete("/recommendedPlaceDetail/:id" ,"RecommendedPlaceDetailController.delete")

