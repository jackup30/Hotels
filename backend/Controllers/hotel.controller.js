const db = require("../models");
const Hotel = db.hotels;
const Op = db.Sequelize.Op;


exports.findAll = (req, res) => {
    Hotel.findAll()
        .then(data => {
            res.json(data);
        })
        .catch(err => {
            res.status(500).send({
                message:
                    err.message || "Error.."
            });
        });
};


exports.findOne = (req, res) => {
    const id = req.params.id;

    Hotel.findByPk(id)
        .then(data => {
            if (data) {
                res.json({
                    message: data
                });
            } else {
                res.status(404).send({
                    message: `Cannot find Hotel with id=${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Error retrieving Hotel with id=" + id
            });
        });
};

exports.update = (req, res) => {
    const id = req.params.id;

    Hotel.update(req.body, {
        where: { id: id }
    })
        .then(num => {
            if (num == 1) {
                res.json({
                    message: "Hotel was updated successfully."
                });
            } else {
                res.json({
                    message: `Cannot update Hotel with id=${id}. Maybe Hotel was not found or req.body is empty!`
                });
            }
        })
        .catch(err => {
            res.status(500).json({
                message: "Error updating Hotel with id=" + id
            });
        });
};



exports.create = (req, res) => {
    if (!req.body.hotelName) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
        return;
    }
    const hotel = {
        hotelName: req.body.hotelName,
        precio: req.body.precio,
        categoria:req.body.categoria,
        picture: req.body.picture
    };

    Hotel.create(hotel)
        .then(data => {
            res.json({
                message: data
            });
        })
        .catch(err => {
            res.status(500).json({
                message:
                    err.message || "Some error occurred while creating the Hotel."
            });
        });
};



exports.delete = (req, res) => {
    const id = req.params.id;

    Hotel.destroy({
        where: { id: id }
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Hotel was deleted successfully!"
                });
            } else {
                res.send({
                    message: `Cannot delete Hotel with id=${id}. Maybe Hotel was not found!`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Could not delete Hotel with id=" + id
            });
        });
};


exports.findAllPrice = (req, res) => {
    const order = req.params.order;
    Hotel.findAll({order: [['precio', `${order}`]]})
        .then(data => {
            res.json({
                message: data
            });
        })
        .catch(err => {
            res.status(500).json({
                message:
                    err.message || "Error.."
            });
        });

};

exports.filterByCategory = (req, res) => {
    const category = req.params.category;
    var condition = category ? { categoria: { [Op.like]: `%${category}%` } } : null;
    Hotel.findAll({ where: condition })
        .then(data => {
            res.json({
                message: data
            });
        })
        .catch(err => {
            res.status(500).json({
                message:
                    err.message || "Error.."
            });
        });

};
