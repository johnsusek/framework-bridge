import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSFileSecurity
    - name: NSFileSecurity
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSFileSecurity) protocol NSFileSecurityExports: JSExport, NSObjectExports {
  // Static Methods
}

extension NSFileSecurity: NSFileSecurityExports {
}
