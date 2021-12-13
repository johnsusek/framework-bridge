import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import QuartzCore

@objc protocol CALayerExportsManual: JSExport, NSObjectExports {
  @objc func getBackgroundColor() -> NSColor?
  @objc func setBackgroundColor(color: NSColor?)
  @objc func getBorderColor() -> NSColor?
  @objc func setBorderColor(color: NSColor?)
}

extension CALayer: CALayerExportsManual {
  @objc public func getBackgroundColor() -> NSColor?  {
    if (self.backgroundColor != nil) {
      return NSColor.init(cgColor: self.backgroundColor!)
    }
    return nil
  }

  @objc public func setBackgroundColor(color: NSColor?)  {
    self.backgroundColor = color?.cgColor
  }

  @objc public func getBorderColor() -> NSColor?  {
    if (self.borderColor != nil) {
      return NSColor.init(cgColor: self.borderColor!)
    }
    return nil
  }

  @objc public func setBorderColor(color: NSColor?)  {
    self.borderColor = color?.cgColor
  }
}
