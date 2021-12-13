import AppKit
import JavaScriptCore
import Dispatch

@objc(DispatchQueue) protocol DispatchQueueExports: JSExport {
  @objc static func main() -> DispatchQueue
  @objc static func globalWithQos(_ qos: qos_class_t) -> DispatchQueue
  @objc func async(_: JSValue)
  @objc func sync(_: JSValue)
}

extension DispatchQueue: DispatchQueueExports {
  @objc static func main() -> DispatchQueue {
    return DispatchQueue.main
  }

  @objc static func globalWithQos(_ qos: qos_class_t) -> DispatchQueue {
    return DispatchQueue.global(qos: DispatchQoS.QoSClass.init(rawValue: qos) ?? DispatchQoS.QoSClass.default)
  }

  @objc func async(_ callback: JSValue) {
    self.async {
      DispatchQueue.main.async {
        _ = callback.call(withArguments: [])
      }
    }
  }

  @objc func sync(_ callback: JSValue) {
    self.sync {
      _ = callback.call(withArguments: [])
    }
  }
}
