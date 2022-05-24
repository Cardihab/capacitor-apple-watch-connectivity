export interface AppleWatchConnectivityPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    sendMessage(options: {
        messageId: string;
        message: Array<any>;
    }): Promise<void>;
}
