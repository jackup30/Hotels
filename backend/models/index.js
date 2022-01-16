const dbConfig = require('../config/conections')
const Sequelize = require("sequelize");

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,

    pool: {
        max: dbConfig.pool.max,
        min: dbConfig.pool.min,
        acquire: dbConfig.pool.acquire,
        idle: dbConfig.pool.idle
    }
});
const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.hotels = require("./hotel.model.js")(sequelize, Sequelize);
db.coment = require("./coment.model.js")(sequelize, Sequelize);
db.client = require("./client.model.js")(sequelize, Sequelize);
db.categories = require("./category.model.js")(sequelize, Sequelize);




module.exports = db;