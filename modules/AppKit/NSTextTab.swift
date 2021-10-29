import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextTab
    - name: NSTextTab
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSTextTab) protocol NSTextTabExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: columnTerminators
    - name: columnTerminatorsForLocale:
    - argLabels: for
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: columnTerminators(for:)
    - Introduced: 10.11
  */
  @objc (columnTerminatorsForLocale:) @available(OSX 10.11, *) static func columnTerminators(`for`: Locale?) -> CharacterSet

  // Instance Methods

  /**
    - jsName: createWithTextAlignment
    - name: initWithTextAlignment:location:options:
    - argLabels: location, options
    - constructorTokens: textAlignment, location, options
  */
  @objc static func createWithTextAlignment(_: NSTextAlignment, location: CGFloat, options: [NSTextTab.OptionKey: Any]) -> Self

  // Own Instance Properties

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSTextAlignment { @objc get }

  /**
    - jsName: location
    - name: location
    - argLabels: 
  */
  @objc var location: CGFloat { @objc get }

  /**
    - jsName: options
    - name: options
    - argLabels: 
  */
  @objc var options: [NSTextTab.OptionKey: Any] { @objc get }

  /**
    - jsName: tabStopType
    - name: tabStopType
    - argLabels: 
  */
  @objc var tabStopType: NSParagraphStyle.TextTabType { @objc get }
}

extension NSTextTab: NSTextTabExports {
  @objc public static func createWithTextAlignment(_ textAlignment: NSTextAlignment, location: CGFloat, options: [NSTextTab.OptionKey: Any]) -> Self {
    return self.init(textAlignment: textAlignment, location: location, options: options)
  }

}
