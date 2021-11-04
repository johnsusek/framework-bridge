import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSComparisonPredicate
    - Introduced: 10.4
  */

@objc(NSComparisonPredicate) protocol NSComparisonPredicateExports: JSExport, NSPredicateExports {
  // Static Methods

  /**
    - Selector: predicateWithLeftExpression:rightExpression:customSelector:
  */
  @objc static func create(leftExpression: NSExpression, rightExpression: NSExpression, customSelector: Selector) -> NSComparisonPredicate

  /**
    - Selector: predicateWithLeftExpression:rightExpression:modifier:type:options:
  */
  @objc static func create(leftExpression: NSExpression, rightExpression: NSExpression, modifier: NSComparisonPredicate.Modifier, type: NSComparisonPredicate.Operator, options: NSComparisonPredicate.Options) -> NSComparisonPredicate

  // Own Instance Properties

  /**
    - Selector: comparisonPredicateModifier
  */
  @objc var comparisonPredicateModifier: NSComparisonPredicate.Modifier { @objc get }

  /**
    - Selector: customSelector
  */
  @objc var customSelector: Selector? { @objc get }

  /**
    - Selector: leftExpression
  */
  @objc var leftExpression: NSExpression { @objc get }

  /**
    - Selector: options
  */
  @objc var options: NSComparisonPredicate.Options { @objc get }

  /**
    - Selector: predicateOperatorType
  */
  @objc var predicateOperatorType: NSComparisonPredicate.Operator { @objc get }

  /**
    - Selector: rightExpression
  */
  @objc var rightExpression: NSExpression { @objc get }
}

extension NSComparisonPredicate: NSComparisonPredicateExports {
  @objc public static func create(leftExpression: NSExpression, rightExpression: NSExpression, customSelector: Selector) -> NSComparisonPredicate {
    return self.init(leftExpression: leftExpression, rightExpression: rightExpression, customSelector: customSelector)
  }

  @objc public static func create(leftExpression: NSExpression, rightExpression: NSExpression, modifier: NSComparisonPredicate.Modifier, type: NSComparisonPredicate.Operator, options: NSComparisonPredicate.Options) -> NSComparisonPredicate {
    return self.init(leftExpression: leftExpression, rightExpression: rightExpression, modifier: modifier, type: type, options: options)
  }

}
