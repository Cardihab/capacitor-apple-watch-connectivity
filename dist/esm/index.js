import { registerPlugin } from '@capacitor/core';
const AppleWatchConnectivity = registerPlugin('AppleWatchConnectivity', {
    web: () => import('./web').then(m => new m.AppleWatchConnectivityWeb()),
});
export * from './definitions';
export { AppleWatchConnectivity };
//# sourceMappingURL=index.js.map