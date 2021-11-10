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
    - Selector: NSTextAlternatives
    - Introduced: 10.8
  */

@objc(NSTextAlternatives) protocol NSTextAlternativesExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

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
}
