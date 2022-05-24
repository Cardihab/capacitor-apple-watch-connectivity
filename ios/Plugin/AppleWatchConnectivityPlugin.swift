import Foundation
import Capacitor
import WatchConnectivity

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AppleWatchConnectivityPlugin)
public class AppleWatchConnectivityPlugin: CAPPlugin {
    private var implementation: AppleWatchConnectivity?;

    public override init() {
        super.init()
        implementation = AppleWatchConnectivity(delegateClass: self)
    }

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation!.echo(value)
        ])
    }

    @objc func sendMessage(_ call: CAPPluginCall) {
        let messageId = call.getString("messageId") ?? ""
        let message = call.getArray("message", NSDictionary.self)
        let result = implementation!.sendMessage(messageBody: [
            "messageId": messageId,
            "message": message ?? [],
        ])
        if result {
            call.resolve()
        }
        call.reject("Failed to send message")
    }

}

extension AppleWatchConnectivityPlugin: WCSessionDelegate {
    public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    }

    public func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any]) {
        DispatchQueue.main.async{
            self.notifyListeners("taskSelect", data: ["taskId": applicationContext["taskId"]!], retainUntilConsumed: true)
        }
    }

    public func sessionDidBecomeInactive(_ session: WCSession) {
        // TODO:: Add hooks
    }

    public func sessionDidDeactivate(_ session: WCSession) {
        // TODO:: Add hooks
    }
}
