import AppKit
import JavaScriptCore

@objc public protocol JSOverridableView: JSExport {
  @objc var draw: JSValue? { @objc get @objc set }
  @objc (drawRect:) func draw(_ dirtyRect: NSRect)
}

extension JSOverridableView {
  func drawOverride(_ dirtyRect: NSRect) {
    guard let draw = self.draw else { return }
    let jsDirtyRect = JSValue.init(rect: dirtyRect, in: JSContext.current())
    draw.call(withArguments: [jsDirtyRect as Any])
  }
}

