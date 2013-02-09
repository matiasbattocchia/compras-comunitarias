// # Require.js Configuration and Bootstrap

// ## Require.js configuration:
require.config ({
    paths: {
        'text'          : 'lib/require.js/text',
        'jquery'        : 'lib/jquery/jquery',
        'jquery.mobile' : 'lib/jquery/jquery.mobile',
        'underscore'    : 'lib/underscore/underscore',
        'backbone'      : 'lib/backbone/backbone',
        'mustache'      : 'lib/mustache/mustache'
    },
    shim: {
        'underscore': {
            exports: '_'
        },
        'backbone': {
            deps: ['underscore', 'jquery'],
            exports: 'Backbone'
        }
    }
});

// ## Bootstrap
require (['jquery', 'backbone'], function ComprasComunitarias ($, BB) {
    // ## Setup jQuery mobile
    // The idea in here is to remove any kind of usage of jQuery's mobile
    // router. Notice how we use two different parts, the first one in
    // 'mobileinit' pre-configures jQuery mobile
    $(document).bind('mobileinit', function () {
        $.mobile.ajaxEnabled = false;
        $.mobile.linkBindingEnabled = false;
        $.mobile.hashListeningEnabled = false;
        $.mobile.pushStateEnabled = false;
        $.mobile.changePage.defaults.changeHash = false;
        $('div[data-role="page"]').live('pagehide', function(event, ui) {
            $(event.currentTarget).remove()
        })
    });

    // ...and the second part in which we start the app.
    require(['jquery.mobile'], function($$) {
        console.log('Initializing app view');
    });
});