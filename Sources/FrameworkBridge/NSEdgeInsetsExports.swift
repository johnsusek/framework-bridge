import AppKit
import JavaScriptCore

@objc protocol NSStackViewExportsManual: JSExport {
  @objc func getEdgeInsets() -> [String: CGFloat]
  @objc func setEdgeInsets(insets: [String: CGFloat])
}

extension NSStackView: NSStackViewExportsManual {
  @objc public func getEdgeInsets() -> [String: CGFloat]  {
    return [
      "top": self.edgeInsets.top,
      "bottom": self.edgeInsets.bottom,
      "left": self.edgeInsets.left,
      "right": self.edgeInsets.right,
    ]
  }

  @objc public func setEdgeInsets(insets: [String: CGFloat])  {
    self.edgeInsets = NSEdgeInsets.init(
      top: insets["top"] ?? 0,
      left: insets["left"] ?? 0,
      bottom: insets["bottom"] ?? 0,
      right: insets["right"] ?? 0
    )
  }
}
