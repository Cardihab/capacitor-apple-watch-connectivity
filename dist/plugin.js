var capacitorAppleWatchConnectivity = (function (exports, core) {
    'use strict';

    const AppleWatchConnectivity = core.registerPlugin('AppleWatchConnectivity', {
        web: () => Promise.resolve().then(function () { return web; }).then(m => new m.AppleWatchConnectivityWeb()),
    });

    class AppleWatchConnectivityWeb extends core.WebPlugin {
        async echo(options) {
            console.log('ECHO', options);
            return options;
        }
    }

    var web = /*#__PURE__*/Object.freeze({
        __proto__: null,
        AppleWatchConnectivityWeb: AppleWatchConnectivityWeb
    });

    exports.AppleWatchConnectivity = AppleWatchConnectivity;

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

})({}, capacitorExports);
//# sourceMappingURL=plugin.js.map
