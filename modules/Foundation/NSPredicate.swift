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
    - Selector: NSPredicate
    - Introduced: 10.4
  */

@objc(NSPredicate) protocol NSPredicateExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: predicateFromMetadataQueryString:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithPredicateFromMetadataQueryString(_ fromMetadataQueryString: String) -> NSPredicate?

  /**
    - Selector: predicateWithBlock:
    - Introduced: 10.6
  */
// jsvalue   @objc @available(OSX 10.6, *) static func createWithBlock(_ block: JSValue) -> NSPredicate

  /**
    - Selector: predicateWithFormat:argumentArray:
  */
  @objc static func createWithFormatWithArgumentArray(_ format: String, _ argumentArray: [Any]?) -> NSPredicate

  /**
    - Selector: predicateWithValue:
  */
  @objc static func createWithValue(_ value: Bool) -> NSPredicate

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

  // Own Instance Properties

  /**
    - Selector: predicateFormat
  */
  @objc var predicateFormat: String { @objc get }
}

extension NSPredicate: NSPredicateExports {

  /**
    - Selector: predicateFromMetadataQueryString:
    - Introduced: 10.9
  */
  @objc public static func createWithPredicateFromMetadataQueryString(_ fromMetadataQueryString: String) -> NSPredicate? {
    return self.init(fromMetadataQueryString: fromMetadataQueryString)
  }


  /**
    - Selector: predicateWithBlock:
    - Introduced: 10.6
  */
  @objc public static func createWithBlock(_ block: JSValue) -> NSPredicate {
    return self.init(block: { p1, p2 in
      let res = block.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
      return res.toBool()
    })
  }


  /**
    - Selector: predicateWithFormat:argumentArray:
  */
  @objc public static func createWithFormatWithArgumentArray(_ format: String, _ argumentArray: [Any]?) -> NSPredicate {
    return self.init(format: format, argumentArray: argumentArray)
  }


  /**
    - Selector: predicateWithValue:
  */
  @objc public static func createWithValue(_ value: Bool) -> NSPredicate {
    return self.init(value: value)
  }

}
