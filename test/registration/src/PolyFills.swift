import Foundation
import JavaScriptCore

// IDEA: expose this as setInterval?
// Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
// }

class PolyFills {
  var context: JSContext!
  var timers: [Int32:Timer] = [:]

  init(context: JSContext) {
    self.context = context
  }

  func install() {
    context.globalObject.setValue(setTimeout.self, forProperty: "setTimeout")
    context.globalObject.setValue(clearTimeout.self, forProperty: "clearTimeout")
    context.setObject(VueKitLog, forKeyedSubscript: "VueKitLog" as (NSCopying & NSObjectProtocol)?)
  }

  var VueKitLog: @convention(block) (String, JSValue) -> Void = { level, objectToLog in
    print("[js:" + level + "]", objectToLog.toObject()! as Any)
  }

  var setTimeout: @convention(block) (JSValue, JSValue, JSValue) -> JSValue {
    return {
      fn, timeout, args in

      let interval = timeout.toNumber().doubleValue / 1000
      let id = Int32.random(in: 0...Int32.max)

      let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: false) { _ in
        fn.call(withArguments: [args as Any])
        self.timers.removeValue(forKey: id)
      }

      self.timers[id] = timer

      return JSValue(int32: id, in: self.context!)
    }
  }

  var clearTimeout: @convention(block) (JSValue) -> Void {
    return {
      value in

      let id = value.toInt32()
      let timer = self.timers[id]

      if timer != nil {
        timer!.invalidate()
        self.timers.removeValue(forKey: id)
      }
    }
  }
}
