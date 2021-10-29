import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSAssertionHandler
    - name: NSAssertionHandler
    - argLabels: 
  */

@objc(NSAssertionHandler) protocol NSAssertionHandlerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: current
    - name: currentHandler
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSAssertionHandler { @objc (currentHandler) get }
}

extension NSAssertionHandler: NSAssertionHandlerExports {
}
