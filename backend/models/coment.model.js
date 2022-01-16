module.exports = (sequelize, DataTypes) => {
    const Coment = sequelize.define("tbl_hotel_coment", {
        client_id: {
            type: DataTypes.INTEGER.UNSIGNED
        },
        hotel_id: {
            type: DataTypes.INTEGER.UNSIGNED
        },
        coment: {
            type: DataTypes.STRING,
        },
    });

    return Coment;
};