'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class UsersSchema extends Schema {
  up () {
    this.create('users', (table) => {
      table.string('id').primary();
      table.string('email').notNullable().unique()
      table.string('password')
      table.string('first_name')
      table.string('last_name')
      table.string('nick_name')
      table.text('img_profile').defaultTo('https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png')
      table.timestamps()
    })
  }

  down () {
    this.drop('users')
  }
}

module.exports = UsersSchema
