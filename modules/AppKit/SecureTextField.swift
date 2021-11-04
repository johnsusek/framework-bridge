import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSecureTextField
  */

@objc(NSSecureTextField) protocol NSSecureTextFieldExports: JSExport, NSTextFieldExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?
}

@objc protocol SecureTextFieldExports: JSExport, NSTextFieldExports {
  // Static Methods
}

@objc(SecureTextField) public class SecureTextField: NSSecureTextField, SecureTextFieldExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSSecureTextField: NSSecureTextFieldExports {
}
