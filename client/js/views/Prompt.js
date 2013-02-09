define (function (require, exports, module) {
    var BB = require('backbone'),
        Mustache = require('mustache'),
        Template = require('text!tpl/Prompt.html');

    var PromptView = BB.View.extend ({
        events: {
            'tap .btn-accept': 'accept',
            'tap .btn-cancel': 'cancel'
        },

        accept: function (e) {
            e.preventDefault();
            this.trigger('accept', this.field);
        },

        cancel: function(e) {
            this.trigger('cancel', this.field);
            e.preventDefault();
        },

        render: function () {
            this.$el.html(Mustache.render(Template, this.options));
            this.field = this.$('#prompt-field');
            return this;
        }
    });

    return PromptView;
});