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
    - Selector: NSTextTab
    - Introduced: 10.0
  */

@objc(NSTextTab) protocol NSTextTabExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: columnTerminatorsForLocale:
    - Introduced: 10.11
  */
  @objc (columnTerminatorsForLocale:) @available(OSX 10.11, *) static func columnTerminators(`for`: Locale?) -> CharacterSet

  // Own Instance Properties

  /**
    - Selector: alignment
  */
  @objc var alignment: NSTextAlignment { @objc get }

  /**
    - Selector: location
  */
  @objc var location: CGFloat { @objc get }

  /**
    - Selector: options
  */
  @objc var options: [NSTextTab.OptionKey: Any] { @objc get }

  /**
    - Selector: tabStopType
  */
  @objc var tabStopType: NSParagraphStyle.TextTabType { @objc get }
}

extension NSTextTab: NSTextTabExports {
}
