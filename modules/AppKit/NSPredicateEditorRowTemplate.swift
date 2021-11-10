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
    - Selector: NSPredicateEditorRowTemplate
    - Introduced: 10.5
  */

@objc(NSPredicateEditorRowTemplate) protocol NSPredicateEditorRowTemplateExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: templatesWithAttributeKeyPaths:inEntityDescription:
  */
  @objc (templatesWithAttributeKeyPaths:inEntityDescription:) static func templates(withAttributeKeyPaths: [String], in: NSEntityDescription) -> [NSPredicateEditorRowTemplate]

  // Instance Methods

  /**
    - Selector: displayableSubpredicatesOfPredicate:
  */
  @objc (displayableSubpredicatesOfPredicate:) func displayableSubpredicates(of: NSPredicate) -> [NSPredicate]?

  /**
    - Selector: matchForPredicate:
  */
  @objc (matchForPredicate:) func match(`for`: NSPredicate) -> Double

  /**
    - Selector: predicateWithSubpredicates:
  */
  @objc (predicateWithSubpredicates:) func predicate(withSubpredicates: [NSPredicate]?) -> NSPredicate

  /**
    - Selector: setPredicate:
  */
  @objc func setPredicate(_: NSPredicate)

  // Own Instance Properties

  /**
    - Selector: compoundTypes
  */
  @objc var compoundTypes: [NSNumber]? { @objc get }

  /**
    - Selector: leftExpressions
  */
  @objc var leftExpressions: [NSExpression]? { @objc get }

  /**
    - Selector: modifier
  */
  @objc var modifier: NSComparisonPredicate.Modifier { @objc get }

  /**
    - Selector: operators
  */
  @objc var operators: [NSNumber]? { @objc get }

  /**
    - Selector: options
  */
  @objc var options: Int { @objc get }

  /**
    - Selector: rightExpressionAttributeType
  */
  @objc var rightExpressionAttributeType: NSAttributeType { @objc get }

  /**
    - Selector: rightExpressions
  */
  @objc var rightExpressions: [NSExpression]? { @objc get }

  /**
    - Selector: templateViews
  */
  @objc var templateViews: [NSView] { @objc get }
}

extension NSPredicateEditorRowTemplate: NSPredicateEditorRowTemplateExports {
}
