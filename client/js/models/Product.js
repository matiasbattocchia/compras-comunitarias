define (function (require, exports, module) {
    var BB = require('backbone');

    var ProductModel = BB.Model.extend({
        url: function () {
            return this.isNew() ? 'products.json'
                                : 'products/' + this.get('id') + '.json';
        }
    });

    return ProductModel;
});