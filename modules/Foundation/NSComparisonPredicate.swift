import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSComparisonPredicate
    - name: NSComparisonPredicate
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSComparisonPredicate) protocol NSComparisonPredicateExports: JSExport, NSPredicateExports {
  // Static Methods

  /**
    - jsName: create
    - name: predicateWithLeftExpression:rightExpression:customSelector:
    - argLabels: leftExpression, rightExpression, customSelector
    - constructorTokens: 
    - unavailable: true
    - renamed: init(leftExpression:rightExpression:customSelector:)
    - message: Not available in Swift
  */
  @objc static func create(leftExpression: NSExpression, rightExpression: NSExpression, customSelector: Selector) -> NSComparisonPredicate

  /**
    - jsName: create
    - name: predicateWithLeftExpression:rightExpression:modifier:type:options:
    - argLabels: leftExpression, rightExpression, modifier, type, options
    - constructorTokens: 
    - unavailable: true
    - renamed: init(leftExpression:rightExpression:modifier:type:options:)
    - message: Not available in Swift
  */
  @objc static func create(leftExpression: NSExpression, rightExpression: NSExpression, modifier: NSComparisonPredicate.Modifier, type: NSComparisonPredicate.Operator, options: NSComparisonPredicate.Options) -> NSComparisonPredicate

  // Own Instance Properties

  /**
    - jsName: comparisonPredicateModifier
    - name: comparisonPredicateModifier
    - argLabels: 
  */
  @objc var comparisonPredicateModifier: NSComparisonPredicate.Modifier { @objc get }

  /**
    - jsName: customSelector
    - name: customSelector
    - argLabels: 
  */
  @objc var customSelector: Selector? { @objc get }

  /**
    - jsName: leftExpression
    - name: leftExpression
    - argLabels: 
  */
  @objc var leftExpression: NSExpression { @objc get }

  /**
    - jsName: options
    - name: options
    - argLabels: 
  */
  @objc var options: NSComparisonPredicate.Options { @objc get }

  /**
    - jsName: predicateOperatorType
    - name: predicateOperatorType
    - argLabels: 
  */
  @objc var predicateOperatorType: NSComparisonPredicate.Operator { @objc get }

  /**
    - jsName: rightExpression
    - name: rightExpression
    - argLabels: 
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
