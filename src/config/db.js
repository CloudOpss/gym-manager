const { Pool } = require('pg')

module.exports = new Pool ({
    user: 'postgres',
    password: 'Admin.PostgresSQL',
    host: 'postgres',
    port: 5432,
    database: 'gymmanager'
})