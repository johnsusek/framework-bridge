import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSFileSecurity
    - Introduced: 10.7
  */

@objc(NSFileSecurity) protocol NSFileSecurityExports: JSExport, NSObjectExports {
  // Static Methods
}

extension NSFileSecurity: NSFileSecurityExports {
}
