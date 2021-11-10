import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSecureTextFieldCell
  */

@objc(NSSecureTextFieldCell) protocol NSSecureTextFieldCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: echosBullets
  */
  @objc var echosBullets: Bool { @objc get @objc (setEchosBullets:) set }
}

extension NSSecureTextFieldCell: NSSecureTextFieldCellExports {
}
