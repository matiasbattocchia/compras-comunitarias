// # AppView
// This is the main view of the app, it is in charge of showing the different
// pages, listen to route events, etc.
define (function (require, exports, module) {
    var BB           = require('backbone'),
        _            = require('underscore'),
        $            = require('jquery'),
        MainMenuView = require('views/MainMenu'),
        ProductsView = require('views/ProductsMenu');

    var AppView = BB.View.extend ({
        el: 'body',

        initialize: function () {
            // We usually want to bind the events to the view, rather than the
            // router:
            _.bindAll(this, 'mainMenu', 'productsMenu', 'showPage');

            // Add event handlers for the router:
            this.router = this.options.router;
            this.router.on('route:mainMenu'    , this.mainMenu    );
            this.router.on('route:productsMenu', this.productsMenu);
            this.router.on('showPage'          , this.showPage    );
        },

        mainMenu: function () {
            var mainMenu = new MainMenuView({
                'router': this.router
            });

            this.showPage(mainMenu);
        },

        productsMenu: function () {
            var productsMenu = new ProductsView({
                'router': this.router
            });

            this.showPage(productsMenu);
        },

        showPage: function (view) {
            this.$el.append(view.render().$el);
            view.$el.page();
            $.mobile.changePage(view.$el, {
                hashChange: false
            });
        }
    });

    return AppView;
});