'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class RecommededTripDetailSchema extends Schema {
  up () {
    this.create('recommeded_trip_details', (table) => {
      table.string('id').primary();
      table.string('ref_recommened').index().references('id').inTable('recommeded_trips')
      table.string('img_place')
      table.double('lat')
      table.double('lng')
      
      table.timestamps()
    })
  }

  down () {
    this.drop('recommeded_trip_details')
  }
}

module.exports = RecommededTripDetailSchema
