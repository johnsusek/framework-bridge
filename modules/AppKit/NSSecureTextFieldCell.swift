import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSecureTextFieldCell
    - name: NSSecureTextFieldCell
    - argLabels: 
  */

@objc(NSSecureTextFieldCell) protocol NSSecureTextFieldCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: echosBullets
    - name: echosBullets
    - argLabels: 
  */
  @objc var echosBullets: Bool { @objc get @objc (setEchosBullets:) set }
}

extension NSSecureTextFieldCell: NSSecureTextFieldCellExports {
}
