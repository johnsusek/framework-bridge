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
    - Selector: NSAssertionHandler
  */

@objc(NSAssertionHandler) protocol NSAssertionHandlerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: currentHandler
  */
  @objc static var current: NSAssertionHandler { @objc (currentHandler) get }
}

extension NSAssertionHandler: NSAssertionHandlerExports {
}
