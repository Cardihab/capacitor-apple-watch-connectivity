export interface AppleWatchConnectivityPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
