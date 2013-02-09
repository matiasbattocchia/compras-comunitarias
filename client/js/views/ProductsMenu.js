define (function (require, exports, module) {
    var BB                 = require('backbone'),
        _                  = require('underscore'),
        Mustache           = require('mustache'),
        Template           = require('text!tpl/ProductsMenu.html'),
        ItemTemplate       = require('text!tpl/MenuItem.html'),
        ProductsCollection = require('collections/Products');

    var ProductsMenuView = BB.View.extend ({
        initialize: function () {
        },

        addProducts: function () {
            var self = this;
            // Empty list
            this.productsList.html('');

            // For each product, append a rendered item template:
            this.collection.each (function (model) {
                var data = model.toJSON();
                data.url = '#products/' + data['id'];
                self.productsList.append(Mustache.render(ItemTemplate, data));
            });

            this.productsList.listview('refresh');
        },

        render: function () {
            this.collection = new ProductsCollection();
            this.collection.on('reset', _.bind(this.addProducts, this));
            var templateData = {};

            this.$el.html(Mustache.render(Template, templateData));

            this.productsList = this.$('.products-list');

            this.collection.fetch();
            return this;
        }
    });

    return ProductsMenuView;
});