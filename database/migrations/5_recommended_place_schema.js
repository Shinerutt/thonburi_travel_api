'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class RecommendedPlaceSchema extends Schema {
  up () {
    this.create('recommended_places', (table) => {
      table.string('id').primary();
      table.string('title')
      table.text('img_cover')



      table.timestamps()
    })
  }

  down () {
    this.drop('recommended_places')
  }
}

module.exports = RecommendedPlaceSchema
