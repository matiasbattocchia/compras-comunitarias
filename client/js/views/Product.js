define (function (require, exports, module) {
    var BB           = require('backbone'),
        $            = require('jquery'),
        Mustache     = require('mustache'),
        Template     = require('text!tpl/Product.html'),
        ProductModel = require('models/Product');

    var ProductPageView = BB.View.extend ({
        initialize: function () {
            this.router = this.options.router;
        },

        render: function () {
            var self = this;

            this.model  = new ProductModel({id: this.options.id});
            $.mobile.showPageLoadingMsg();
            this.model.fetch().success(function () {
                self.$el
                    .html(Mustache.render(Template, self.model.toJSON()))
                    .page('create');
                $.mobile.hidePageLoadingMsg();

            });
            return this;
        }
    });

    return ProductPageView;
});