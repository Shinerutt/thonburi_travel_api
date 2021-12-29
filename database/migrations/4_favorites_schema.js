'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class FavoritesSchema extends Schema {
  up () {
    this.create('favorites', (table) => {
      table.string('id').primary();
      table.string('places_id').index().references('id').inTable('places')
      table.string('user_id').index().references('id').inTable('users')


      table.timestamps()
    })
  }

  down () {
    this.drop('favorites')
  }
}

module.exports = FavoritesSchema
