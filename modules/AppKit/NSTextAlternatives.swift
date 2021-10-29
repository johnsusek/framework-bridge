import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextAlternatives
    - name: NSTextAlternatives
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSTextAlternatives) protocol NSTextAlternativesExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithPrimaryString
    - name: initWithPrimaryString:alternativeStrings:
    - argLabels: alternativeStrings
    - constructorTokens: primaryString, alternativeStrings
  */
  @objc static func createWithPrimaryString(_: String, alternativeStrings: [String]) -> Self

  /**
    - jsName: noteSelectedAlternativeString
    - name: noteSelectedAlternativeString:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func noteSelectedAlternativeString(_: String)

  // Own Instance Properties

  /**
    - jsName: alternativeStrings
    - name: alternativeStrings
    - argLabels: 
  */
  @objc var alternativeStrings: [String] { @objc get }

  /**
    - jsName: primaryString
    - name: primaryString
    - argLabels: 
  */
  @objc var primaryString: String { @objc get }
}

extension NSTextAlternatives: NSTextAlternativesExports {
  @objc public static func createWithPrimaryString(_ primaryString: String, alternativeStrings: [String]) -> Self {
    return self.init(primaryString: primaryString, alternativeStrings: alternativeStrings)
  }

}
