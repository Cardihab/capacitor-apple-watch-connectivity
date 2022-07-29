import Foundation
import WatchConnectivity

@objc public class AppleWatchConnectivity: NSObject {

    var session: WCSession?

    public init(delegateClass: WCSessionDelegate) {
        super.init()
        if WCSession.isSupported() {
            self.session = WCSession.default
            self.session?.delegate = delegateClass
            self.session?.activate()
        }
    }

    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func sendMessage(messageBody: [String: Any]) -> Bool {
        if let validSession = self.session {
            do {
                var payload = [] as [String]
                for m in messageBody["message"] as? Array<Any> ?? [] {
                    let jsonData = try JSONSerialization.data(withJSONObject: m)
                    payload.append(String(data: jsonData, encoding: .utf8)!)
                }
                try validSession.updateApplicationContext([
                    "message": payload,
                    "date": Date()
                ])
            } catch {
                print(error)
                return false
            }
            return true
        } else {
            return false
        }
    }
}
