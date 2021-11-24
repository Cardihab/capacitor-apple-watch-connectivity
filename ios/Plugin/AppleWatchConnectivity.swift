import Foundation
import WatchConnectivity

@objc public class AppleWatchConnectivity: NSObject {

    var session: WCSession?

    public override init() {
        super.init()
        if WCSession.isSupported() {
            self.session = WCSession.default
            self.session?.delegate = self
            self.session?.activate()
        }
    }

    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func sendMessage(messageBody: [String: Any]) -> Bool {
        if let validSession = self.session, validSession.isReachable {
            validSession.sendMessage(
                [
                    "messageId": messageBody["messageId"]!,
                    "message": messageBody["message"]!
                ],
                replyHandler: nil,
                errorHandler: nil
            )
            return true
        } else {
            return false
        }
    }
}

extension AppleWatchConnectivity: WCSessionDelegate {
    public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    }

    public func sessionDidBecomeInactive(_ session: WCSession) {
        // TODO:: Add hooks
    }

    public func sessionDidDeactivate(_ session: WCSession) {
        // TODO:: Add hooks
    }
}
