'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class ReviewSchema extends Schema {
  up () {
    this.create('reviews', (table) => {
      table.string('id').primary();
      table.string('places_id').index().references('id').inTable('places')
      table.string('user_id').index().references('id').inTable('users')
      table.text('content')
      table.integer('rate')



      // table.uuid("organization_id").index().references('id').inTable('organizations')

      table.timestamps()
    })
  }

  down () {
    this.drop('reviews')
  }
}

module.exports = ReviewSchema
