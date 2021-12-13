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
    - Selector: NSPersonNameComponentsFormatter
    - Introduced: 10.11
  */

@objc(PersonNameComponentsFormatter) protocol PersonNameComponentsFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: localizedStringFromPersonNameComponents:style:options:
  */
  @objc (localizedStringFromPersonNameComponents:style:options:) static func localizedString(from: PersonNameComponents, style: PersonNameComponentsFormatter.Style, options: PersonNameComponentsFormatter.Options) -> String

  // Instance Methods

  /**
    - Selector: annotatedStringFromPersonNameComponents:
  */
  @objc (annotatedStringFromPersonNameComponents:) func annotatedString(from: PersonNameComponents) -> NSAttributedString

  /**
    - Selector: personNameComponentsFromString:
    - Introduced: 10.12
  */
  @objc (personNameComponentsFromString:) @available(OSX 10.12, *) func personNameComponents(from: String) -> PersonNameComponents?

  /**
    - Selector: stringFromPersonNameComponents:
  */
  @objc (stringFromPersonNameComponents:) func string(from: PersonNameComponents) -> String

  // Own Instance Properties

  /**
    - Selector: phonetic
  */
  @objc var isPhonetic: Bool { @objc get @objc (setPhonetic:) set }

  /**
    - Selector: style
  */
  @objc var style: PersonNameComponentsFormatter.Style { @objc get @objc (setStyle:) set }
}

extension PersonNameComponentsFormatter: PersonNameComponentsFormatterExports {
}
