// # Require.js Configuration and Bootstrap

// ## Require.js configuration:
require.config ({
    baseUrl: './js',
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
        $.mobile.ajaxEnabled                    = false;
        $.mobile.linkBindingEnabled             = false;
        $.mobile.hashListeningEnabled           = false;
        $.mobile.pushStateEnabled               = false;
        $.mobile.changePage.defaults.changeHash = false;
        $.mobile.defaultPageTransition          = 'slide';

        $('div[data-role="page"]').live('pagehide', function(event, ui) {
            $(event.currentTarget).remove()
        });

        // We are using an ajax prefilter because right now we are going
        // working on separate machines; this should be removed at some
        // point. For the time being, consider it a shameless hack.
        $.ajaxPrefilter( function( options, originalOptions, jqXHR ) {
            options.url = 'api/' + options.url;
            options.dataType = 'json';
            // options.url = 'proxy.php?proxy_url=api.comunitarias:3000/' + options.url;
        });

    });

    // ...and the second part in which we start the app.
    require(['jquery.mobile', 'routers/app', 'views/app'], function($$, AppRouter, AppView) {
        var app, router;

        console.log('Application Bootstrap.');
        router = new AppRouter();
        app    = new AppView ({
            'router': router
        });

        BB.history.start();
        // router.trigger('route:mainMenu');
    });
});