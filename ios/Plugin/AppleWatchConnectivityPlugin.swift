import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AppleWatchConnectivityPlugin)
public class AppleWatchConnectivityPlugin: CAPPlugin {
    private let implementation = AppleWatchConnectivity()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func sendMessage(_ call: CAPPluginCall) {
        let messageId = call.getString("messageId") ?? ""
        let message = call.getArray("message") ?? []
        let result = implementation.sendMessage(messageBody: [
            "messageId": messageId,
            "message": message,
        ])
        if result {
            call.resolve()
        }
        call.reject("Failed to send message")
    }

}
