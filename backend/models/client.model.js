module.exports = (sequelize, DataTypes) => {
    const Client = sequelize.define("tbl_clients", {
        client_name: {
            type: DataTypes.STRING
        },
        client_lastname: {
            type: DataTypes.STRING,
        },
        client_age: {
            type: DataTypes.STRING,
        },
    });

    return Client;
};