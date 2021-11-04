import AppKit
import JavaScriptCore
import Quartz
import AVKit
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

  // Instance Methods

  /**
    - Selector: initWithTextAlignment:location:options:
  */
  @objc static func createWithTextAlignment(_: NSTextAlignment, location: CGFloat, options: [NSTextTab.OptionKey: Any]) -> Self

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
  @objc public static func createWithTextAlignment(_ textAlignment: NSTextAlignment, location: CGFloat, options: [NSTextTab.OptionKey: Any]) -> Self {
    return self.init(textAlignment: textAlignment, location: location, options: options)
  }

}
