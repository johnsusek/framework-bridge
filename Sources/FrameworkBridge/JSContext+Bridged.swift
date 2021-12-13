import JavaScriptCore

func classOrProtoFromString(_ name: String) -> Any? {
  let cls: AnyClass? = NSClassFromString(name)
  if cls != nil { return cls }
  let pro = NSProtocolFromString(name)
  if pro != nil {
    return pro
  }
  return nil
}

public extension JSContext {
  func bridgeClass(_ classOrProto: String) -> Bool {
    let classType = classOrProtoFromString(classOrProto)
    let className = classOrProto
    var registered = false

    if (classType != nil) {
      self.setObject(classType!, forKeyedSubscript: className as (NSCopying & NSObjectProtocol)?)
      print("✔ Registered \(classOrProto) as \(className)")
      registered = true
    }
    else {
      print("[bridge] Could not register \(className) because classType nil")
    }

    return registered
  }
}
