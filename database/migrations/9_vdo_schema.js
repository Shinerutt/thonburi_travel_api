'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class VdoSchema extends Schema {
  up () {
    this.create('vdos', (table) => {
      table.string('id').primary();
      table.string('name')
      table.text('img_cover')
      table.text('vdo_link')

      table.timestamps()
    })
  }

  down () {
    this.drop('vdos')
  }
}

module.exports = VdoSchema
