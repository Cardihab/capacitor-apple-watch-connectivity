import { PluginListenerHandle } from "@capacitor/core";

export interface AppleWatchConnectivityPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  sendMessage(options: { messageId: string; message: Array<any> }): Promise<void>;
  addListener(
    eventName: 'taskSelect',
    listenerFunc: (data: any) => void,
  ): Promise<PluginListenerHandle> & PluginListenerHandle;
}
