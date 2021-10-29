import AppKit
import JavaScriptCore

@objc public protocol NSObjectExports: JSExport {
	@objc func responds(to: String) -> Bool
	@objc static func create() -> Self
}

extension NSObject: NSObjectExports {
	@objc public class func create() -> Self {
		return Self()
	}

  @objc public func responds(to string: String) -> Bool {
    return self.responds(to: Selector(string))
  }
}
