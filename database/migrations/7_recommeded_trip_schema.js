'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class RecommededTripSchema extends Schema {
  up () {
    this.create('recommeded_trips', (table) => {
      table.string('id').primary();
      table.string('title').notNullable().unique()
      table.text('img_cover').notNullable()
      

      table.timestamps()
    })
  }

  down () {
    this.drop('recommeded_trips')
  }
}

module.exports = RecommededTripSchema
