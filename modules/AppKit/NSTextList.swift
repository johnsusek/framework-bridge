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
    - Selector: NSTextList
  */

@objc(NSTextList) protocol NSTextListExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: markerForItemNumber:
  */
  @objc (markerForItemNumber:) func marker(forItemNumber: Int) -> String

  // Own Instance Properties

  /**
    - Selector: listOptions
  */
  @objc var listOptions: NSTextList.Options { @objc get }

  /**
    - Selector: markerFormat
  */
  @objc var markerFormat: NSTextList.MarkerFormat { @objc get }

  /**
    - Selector: startingItemNumber
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var startingItemNumber: Int { @objc get @objc (setStartingItemNumber:) set }
}

extension NSTextList: NSTextListExports {
}
