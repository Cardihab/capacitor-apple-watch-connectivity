'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var core = require('@capacitor/core');

const AppleWatchConnectivity = core.registerPlugin('AppleWatchConnectivity', {
    web: () => Promise.resolve().then(function () { return web; }).then(m => new m.AppleWatchConnectivityWeb()),
});

class AppleWatchConnectivityWeb extends core.WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
    async sendMessage(options) {
        console.log(options);
        throw new Error("Method not implemented.");
    }
}

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    AppleWatchConnectivityWeb: AppleWatchConnectivityWeb
});

exports.AppleWatchConnectivity = AppleWatchConnectivity;
//# sourceMappingURL=plugin.cjs.js.map
