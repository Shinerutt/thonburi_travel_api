'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class PlacesSchema extends Schema {
  up () {
    this.create('places', (table) => {
      table.string('id').primary();
      table.string('name')
      table.double('lat')
      table.double('lng')
      table.text('detail')
      table.text('img_places').defaultTo('[]')
      table.string('category')
      table.timestamps()
    })
  }

  down () {
    this.drop('places')
  }
}

module.exports = PlacesSchema
