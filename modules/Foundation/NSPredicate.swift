import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSPredicate
    - name: NSPredicate
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSPredicate) protocol NSPredicateExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: predicateFromMetadataQueryString:
    - argLabels: fromMetadataQueryString
    - constructorTokens: 
    - available: 10.9
    - unavailable: true
    - renamed: init(fromMetadataQueryString:)
    - message: Not available in Swift
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func create(fromMetadataQueryString: String) -> NSPredicate?

  /**
    - jsName: create
    - name: predicateWithValue:
    - argLabels: value
    - constructorTokens: 
    - unavailable: true
    - renamed: init(value:)
    - message: Not available in Swift
  */
  @objc static func create(value: Bool) -> NSPredicate

  // Instance Methods

  /**
    - jsName: allowEvaluation
    - name: allowEvaluation
    - argLabels: 
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func allowEvaluation()

  /**
    - jsName: evaluate
    - name: evaluateWithObject:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: evaluate(with:)
  */
  @objc (evaluateWithObject:) func evaluate(with: Any?) -> Bool

  /**
    - jsName: evaluate
    - name: evaluateWithObject:substitutionVariables:
    - argLabels: with, substitutionVariables
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: evaluate(with:substitutionVariables:)
    - Introduced: 10.5
  */
  @objc (evaluateWithObject:substitutionVariables:) @available(OSX 10.5, *) func evaluate(with: Any?, substitutionVariables: [String: Any]?) -> Bool

  /**
    - jsName: withSubstitutionVariables
    - name: predicateWithSubstitutionVariables:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withSubstitutionVariables(_:)
  */
  @objc static func withSubstitutionVariables(_: [String: Any]) -> Self

  // Own Instance Properties

  /**
    - jsName: predicateFormat
    - name: predicateFormat
    - argLabels: 
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
