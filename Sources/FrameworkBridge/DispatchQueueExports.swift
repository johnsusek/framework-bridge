import AppKit
import JavaScriptCore
import Dispatch

@objc(DispatchQueue) protocol DispatchQueueExports: JSExport {
  @objc static func mainAsync(_ callback: JSValue) -> Void
  @objc static func main() -> DispatchQueue
  @objc func async(_: JSValue)
}

extension DispatchQueue: DispatchQueueExports {
  @objc static func main() -> DispatchQueue {
    return DispatchQueue.main
  }

  @objc static func mainAsync(_ callback: JSValue) {
    DispatchQueue.main.async {
      _ = callback.call(withArguments: [])
    }
  }

  @objc func async(_ callback: JSValue) {
    self.async {
      _ = callback.call(withArguments: [])
    }
  }
}
