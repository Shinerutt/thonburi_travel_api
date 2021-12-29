'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class RecommendedPlaceDetailSchema extends Schema {
  up () {
    this.create('recommended_place_details', (table) => {
      table.string('id').primary();
      table.string('name')
      table.string('ref_recommended').index().references('id').inTable('recommended_places')
      table.text('content')
      table.text('img_places')
      table.double('lat')
      table.double('lng')    
      table.timestamps()
    })
  }

  down () {
    this.drop('recommended_place_details')
  }
}

module.exports = RecommendedPlaceDetailSchema
