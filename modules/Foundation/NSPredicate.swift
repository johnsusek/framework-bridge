import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSPredicate
    - Introduced: 10.4
  */

@objc(NSPredicate) protocol NSPredicateExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: predicateFromMetadataQueryString:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func create(fromMetadataQueryString: String) -> NSPredicate?

  /**
    - Selector: predicateWithValue:
  */
  @objc static func create(value: Bool) -> NSPredicate

  // Instance Methods

  /**
    - Selector: allowEvaluation
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func allowEvaluation()

  /**
    - Selector: evaluateWithObject:
  */
  @objc (evaluateWithObject:) func evaluate(with: Any?) -> Bool

  /**
    - Selector: evaluateWithObject:substitutionVariables:
    - Introduced: 10.5
  */
  @objc (evaluateWithObject:substitutionVariables:) @available(OSX 10.5, *) func evaluate(with: Any?, substitutionVariables: [String: Any]?) -> Bool

  /**
    - Selector: predicateWithSubstitutionVariables:
  */
  @objc static func withSubstitutionVariables(_: [String: Any]) -> Self

  // Own Instance Properties

  /**
    - Selector: predicateFormat
  */
  @objc var predicateFormat: String { @objc get }
}

extension NSPredicate: NSPredicateExports {
  @objc public static func create(fromMetadataQueryString: String) -> NSPredicate? {
    return self.init(fromMetadataQueryString: fromMetadataQueryString)
  }

  @objc public static func create(value: Bool) -> NSPredicate {
    return self.init(value: value)
  }

  @objc public static func withSubstitutionVariables(_ p0: [String: Any]) -> Self {
    return self.withSubstitutionVariables(p0)
  }

}
