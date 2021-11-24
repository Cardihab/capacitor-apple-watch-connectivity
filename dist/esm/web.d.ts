import { WebPlugin } from '@capacitor/core';
import type { AppleWatchConnectivityPlugin } from './definitions';
export declare class AppleWatchConnectivityWeb extends WebPlugin implements AppleWatchConnectivityPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    sendMessage(options: {
        messageId: string;
        message: [];
    }): Promise<void>;
}
