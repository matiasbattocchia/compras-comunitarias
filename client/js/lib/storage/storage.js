define (function (require, exports, module) {
    function Storage(storage) {
        this.storage = storage || window.localStorage;
    }

    Storage.prototype.set = function(key, value) {
        var json = JSON.stringify(value);
        this.storage.setItem(key, json);
    };

    Storage.prototype.get = function(key) {
        return JSON.parse(this.storage.getItem(key));
    };

    return Storage;
})
