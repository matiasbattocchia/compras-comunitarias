define (function (require, exports, module) {
    var BB   = require('backbone');

    var AppRouter = BB.Router.extend ({
        routes: {
            ''          : 'mainMenu',
            'products/' : 'productsMenu',
            // 'main-menu': 'mainMenu',
        }
    });

    return AppRouter;
});