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
    - Selector: NSListFormatter
    - Introduced: 10.15
  */

@objc(ListFormatter) protocol ListFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: localizedStringByJoiningStrings:
  */
  @objc (localizedStringByJoiningStrings:) static func localizedString(byJoining: [String]) -> String

  // Instance Methods

  /**
    - Selector: stringFromItems:
  */
  @objc (stringFromItems:) func string(from: [Any]) -> String?

  // Own Instance Properties

  /**
    - Selector: itemFormatter
  */
  @objc var itemFormatter: Formatter? { @objc get @objc (setItemFormatter:) set }

  /**
    - Selector: locale
  */
  @objc var locale: Locale! { @objc get @objc (setLocale:) set }
}

extension ListFormatter: ListFormatterExports {
}
