import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextAlternatives
    - Introduced: 10.8
  */

@objc(NSTextAlternatives) protocol NSTextAlternativesExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithPrimaryString:alternativeStrings:
  */
  @objc static func createWithPrimaryString(_: String, alternativeStrings: [String]) -> Self

  /**
    - Selector: noteSelectedAlternativeString:
  */
  @objc func noteSelectedAlternativeString(_: String)

  // Own Instance Properties

  /**
    - Selector: alternativeStrings
  */
  @objc var alternativeStrings: [String] { @objc get }

  /**
    - Selector: primaryString
  */
  @objc var primaryString: String { @objc get }
}

extension NSTextAlternatives: NSTextAlternativesExports {
  @objc public static func createWithPrimaryString(_ primaryString: String, alternativeStrings: [String]) -> Self {
    return self.init(primaryString: primaryString, alternativeStrings: alternativeStrings)
  }

}
