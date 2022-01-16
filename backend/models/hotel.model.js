module.exports = (sequelize, Sequelize) => {
    const Hotel = sequelize.define("tbl_hotels", {
        hotelName: {
            type: Sequelize.STRING
        },
        categoria: {
            type: Sequelize.INTEGER.UNSIGNED
        },
        precio: {
            type: Sequelize.FLOAT
        },
        picture: {
            type: Sequelize.STRING
        }
    });

    return Hotel;
};
