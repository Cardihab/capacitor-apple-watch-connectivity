import { WebPlugin } from '@capacitor/core';

import type { AppleWatchConnectivityPlugin } from './definitions';

export class AppleWatchConnectivityWeb extends WebPlugin implements AppleWatchConnectivityPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
