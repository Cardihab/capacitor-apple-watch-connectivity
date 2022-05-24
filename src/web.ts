import { WebPlugin } from '@capacitor/core';

import type { AppleWatchConnectivityPlugin } from './definitions';

export class AppleWatchConnectivityWeb extends WebPlugin implements AppleWatchConnectivityPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async sendMessage(options: { messageId: string; message: Array<any> }): Promise<void> {
    console.log(options);
    throw new Error("Method not implemented.");
  }
}
