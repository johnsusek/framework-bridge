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
    - Selector: NSScriptWhoseTest
  */

@objc(NSScriptWhoseTest) protocol NSScriptWhoseTestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: isTrue
  */
  @objc func isTrue() -> Bool
}

extension NSScriptWhoseTest: NSScriptWhoseTestExports {
}
