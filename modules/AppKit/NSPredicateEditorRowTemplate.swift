import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPredicateEditorRowTemplate
    - name: NSPredicateEditorRowTemplate
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSPredicateEditorRowTemplate) protocol NSPredicateEditorRowTemplateExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: templates
    - name: templatesWithAttributeKeyPaths:inEntityDescription:
    - argLabels: withAttributeKeyPaths, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: templates(withAttributeKeyPaths:in:)
  */
  @objc (templatesWithAttributeKeyPaths:inEntityDescription:) static func templates(withAttributeKeyPaths: [String], in: NSEntityDescription) -> [NSPredicateEditorRowTemplate]

  // Instance Methods

  /**
    - jsName: displayableSubpredicates
    - name: displayableSubpredicatesOfPredicate:
    - argLabels: of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayableSubpredicates(of:)
  */
  @objc (displayableSubpredicatesOfPredicate:) func displayableSubpredicates(of: NSPredicate) -> [NSPredicate]?

  /**
    - jsName: createWithCompoundTypes
    - name: initWithCompoundTypes:
    - argLabels: 
    - constructorTokens: compoundTypes
  */
  @objc static func createWithCompoundTypes(_: [NSNumber]) -> Self

  /**
    - jsName: createWithLeftExpressions
    - name: initWithLeftExpressions:rightExpressionAttributeType:modifier:operators:options:
    - argLabels: rightExpressionAttributeType, modifier, operators, options
    - constructorTokens: leftExpressions, rightExpressionAttributeType, modifier, operators, options
  */
  @objc static func createWithLeftExpressions(_: [NSExpression], rightExpressionAttributeType: NSAttributeType, modifier: NSComparisonPredicate.Modifier, operators: [NSNumber], options: Int) -> Self

  /**
    - jsName: createWithLeftExpressions
    - name: initWithLeftExpressions:rightExpressions:modifier:operators:options:
    - argLabels: rightExpressions, modifier, operators, options
    - constructorTokens: leftExpressions, rightExpressions, modifier, operators, options
  */
  @objc static func createWithLeftExpressions(_: [NSExpression], rightExpressions: [NSExpression], modifier: NSComparisonPredicate.Modifier, operators: [NSNumber], options: Int) -> Self

  /**
    - jsName: match
    - name: matchForPredicate:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: match(for:)
  */
  @objc (matchForPredicate:) func match(`for`: NSPredicate) -> Double

  /**
    - jsName: predicate
    - name: predicateWithSubpredicates:
    - argLabels: withSubpredicates
    - constructorTokens: 
    - obsoleted: 3
    - renamed: predicate(withSubpredicates:)
  */
  @objc (predicateWithSubpredicates:) func predicate(withSubpredicates: [NSPredicate]?) -> NSPredicate

  /**
    - jsName: setPredicate
    - name: setPredicate:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setPredicate(_: NSPredicate)

  // Own Instance Properties

  /**
    - jsName: compoundTypes
    - name: compoundTypes
    - argLabels: 
  */
  @objc var compoundTypes: [NSNumber]? { @objc get }

  /**
    - jsName: leftExpressions
    - name: leftExpressions
    - argLabels: 
  */
  @objc var leftExpressions: [NSExpression]? { @objc get }

  /**
    - jsName: modifier
    - name: modifier
    - argLabels: 
  */
  @objc var modifier: NSComparisonPredicate.Modifier { @objc get }

  /**
    - jsName: operators
    - name: operators
    - argLabels: 
  */
  @objc var operators: [NSNumber]? { @objc get }

  /**
    - jsName: options
    - name: options
    - argLabels: 
  */
  @objc var options: Int { @objc get }

  /**
    - jsName: rightExpressionAttributeType
    - name: rightExpressionAttributeType
    - argLabels: 
  */
  @objc var rightExpressionAttributeType: NSAttributeType { @objc get }

  /**
    - jsName: rightExpressions
    - name: rightExpressions
    - argLabels: 
  */
  @objc var rightExpressions: [NSExpression]? { @objc get }

  /**
    - jsName: templateViews
    - name: templateViews
    - argLabels: 
  */
  @objc var templateViews: [NSView] { @objc get }
}

extension NSPredicateEditorRowTemplate: NSPredicateEditorRowTemplateExports {
  @objc public static func createWithCompoundTypes(_ compoundTypes: [NSNumber]) -> Self {
    return self.init(compoundTypes: compoundTypes)
  }

  @objc public static func createWithLeftExpressions(_ leftExpressions: [NSExpression], rightExpressionAttributeType: NSAttributeType, modifier: NSComparisonPredicate.Modifier, operators: [NSNumber], options: Int) -> Self {
    return self.init(leftExpressions: leftExpressions, rightExpressionAttributeType: rightExpressionAttributeType, modifier: modifier, operators: operators, options: options)
  }

  @objc public static func createWithLeftExpressions(_ leftExpressions: [NSExpression], rightExpressions: [NSExpression], modifier: NSComparisonPredicate.Modifier, operators: [NSNumber], options: Int) -> Self {
    return self.init(leftExpressions: leftExpressions, rightExpressions: rightExpressions, modifier: modifier, operators: operators, options: options)
  }

}
