import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSecureTextField
    - name: NSSecureTextField
    - argLabels: 
  */

@objc(NSSecureTextField) protocol NSSecureTextFieldExports: JSExport, NSTextFieldExports {
  // Static Methods
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
