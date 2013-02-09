define (function (require, exports, module) {
    var BB       = require('backbone'),
        Mustache = require('mustache'),
        Template = require('text!tpl/MainMenu.html');

    var MainMenuView = BB.View.extend ({
        initialize: function () {
        },

        render: function () {
            var templateData = {};
            this.$el.html(Mustache.render(Template, templateData));
            return this;
        }
    });

    return MainMenuView;
});