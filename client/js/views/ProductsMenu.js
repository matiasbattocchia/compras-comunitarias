define (function (require, exports, module) {
    var BB                 = require('backbone'),
        _                  = require('underscore'),
        Mustache           = require('mustache'),
        Template           = require('text!tpl/ProductsMenu.html'),
        ItemTemplate       = require('text!tpl/MenuItem.html'),
        ProductsCollection = require('collections/Products'),
        PromptView         = require('views/Prompt');

    var ProductsMenuView = BB.View.extend ({
        initialize: function () {
            this.router = this.options.router;
        },

        events: {
            'tap .btn-add': 'toggleAddMode'
        },

        toggleAddMode: function (e) {
            var self = this, addMode, accept, cancel;
            e.preventDefault();

            finish = function (e) { self.router.trigger('route:productsMenu'); }

            accept = function (e) {
                var self = this,
                    name = addMode.field.val();
                
                $.mobile.showPageLoadingMsg();
                // If there's a valid name, create the model and finish
                name && this.collection.create ({
                        'description': name
                     }, {success: function () {
                            $.mobile.hidePageLoadingMsg();
                            finish();
                        }});
            }

            addMode = new PromptView ({
                'title'      : 'Agregar producto',
                'description': 'Tipea el nombre del producto y "aceptar" para agregarlo a la lista',
                'placeholder': 'Nombre del producto...',
                'caption'    : 'Producto',
            });

            addMode.on('cancel', _.bind(finish, this));
            addMode.on('accept', _.bind(accept, this));

            this.router.trigger('showPage', addMode);
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
            this.addMode      = this.$('.add-mode');

            this.collection.fetch();
            return this;
        }
    });

    return ProductsMenuView;
});