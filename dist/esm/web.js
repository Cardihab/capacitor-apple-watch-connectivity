import { WebPlugin } from '@capacitor/core';
export class AppleWatchConnectivityWeb extends WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
    async sendMessage(options) {
        console.log(options);
        throw new Error("Method not implemented.");
    }
}
//# sourceMappingURL=web.js.map