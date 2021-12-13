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
    - Selector: NSFormatter
  */

@objc(Formatter) protocol FormatterExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: attributedStringForObjectValue:withDefaultAttributes:
  */
  @objc (attributedStringForObjectValue:withDefaultAttributes:) func attributedString(`for`: Any, withDefaultAttributes: [NSAttributedString.Key: Any]?) -> NSAttributedString?

  /**
    - Selector: editingStringForObjectValue:
  */
  @objc (editingStringForObjectValue:) func editingString(`for`: Any) -> String?

  /**
    - Selector: isPartialStringValid:newEditingString:errorDescription:
  */
  @objc (isPartialStringValid:newEditingString:errorDescription:) func isPartialStringValid(_ p0: String, newEditingString: AutoreleasingUnsafeMutablePointer<NSString?>?, errorDescription: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool

  /**
    - Selector: isPartialStringValid:proposedSelectedRange:originalString:originalSelectedRange:errorDescription:
  */
  @objc func isPartialStringValid(_ p0: AutoreleasingUnsafeMutablePointer<NSString>, proposedSelectedRange: NSRangePointer?, originalString: String, originalSelectedRange: NSRange, errorDescription: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool

  /**
    - Selector: stringForObjectValue:
  */
  @objc (stringForObjectValue:) func string(`for`: Any?) -> String?
}

extension Formatter: FormatterExports {
}
