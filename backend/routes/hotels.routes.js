var express = require('express');
var router = express.Router();
const {hotelController} = require('../Controllers');

router.get('/hotel/all', hotelController.findAll);
router.get('/hotel/one/:id', hotelController.findOne);
router.post('/hotel/create', hotelController.create);
router.put('/hotel/update/:id', hotelController.update);
router.delete('/hotel/delete/:id', hotelController.delete);
router.get('/hotel/price/:order', hotelController.findAllPrice);
router.get('/hotel/filterByCategory/:category', hotelController.filterByCategory);
module.exports = router;
