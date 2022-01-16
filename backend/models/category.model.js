module.exports = (sequelize, DataTypes) => {
    const Category  = sequelize.define("tbl_category", {
        category_name: {
            type: DataTypes.STRING
        },
    });

    return Category;
};