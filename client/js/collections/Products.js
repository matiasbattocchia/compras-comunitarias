define (function (require, exports, module) {
    var BB           = require('backbone'),
        ProductModel = require('models/Product');

    var ProductsCollection = BB.Collection.extend({
        model: ProductModel,
        url  : 'products.json'
    });

    return ProductsCollection;
});