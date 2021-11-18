import AppKit
import JavaScriptCore
import Dispatch

@objc(DispatchQueue) protocol DispatchQueueExports: JSExport {
  @objc static func main() -> DispatchQueue
  @objc func async(_: JSValue)
}

extension DispatchQueue: DispatchQueueExports {
  @objc static func main() -> DispatchQueue {
    return DispatchQueue.main
  }

  @objc func async(_ callback: JSValue) {
    _ = callback.call(withArguments: [])
  }
}
