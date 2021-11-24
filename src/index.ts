import { registerPlugin } from '@capacitor/core';

import type { AppleWatchConnectivityPlugin } from './definitions';

const AppleWatchConnectivity = registerPlugin<AppleWatchConnectivityPlugin>('AppleWatchConnectivity', {
  web: () => import('./web').then(m => new m.AppleWatchConnectivityWeb()),
});

export * from './definitions';
export { AppleWatchConnectivity };
