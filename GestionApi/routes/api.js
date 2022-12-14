const router = require('express').Router(); 

const { checkToken} = require('../helpers/middlewares');

const apiUsersRouter = require('./api/users'); 
const apiProductsRouter = require('./api/products');   
const apiordersRouter = require('./api/orders'); 
const apiClientsRouter = require('./api/clients'); 

router.use('/users', apiUsersRouter);
router.use('/products', checkToken, apiProductsRouter);
router.use('/orders',checkToken, apiordersRouter);
router.use('/clients', checkToken, apiClientsRouter);


module .exports = router   