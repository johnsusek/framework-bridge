import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCompoundPredicate
    - Introduced: 10.4
  */

@objc(NSCompoundPredicate) protocol NSCompoundPredicateExports: JSExport, NSPredicateExports {
  // Static Methods

  /**
    - Selector: andPredicateWithSubpredicates:
  */
  @objc static func create(andPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate

  /**
    - Selector: notPredicateWithSubpredicate:
  */
  @objc static func create(notPredicateWithSubpredicate: NSPredicate) -> NSCompoundPredicate

  /**
    - Selector: orPredicateWithSubpredicates:
  */
  @objc static func create(orPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate

  // Own Instance Properties

  /**
    - Selector: compoundPredicateType
  */
  @objc var compoundPredicateType: NSCompoundPredicate.LogicalType { @objc get }

  /**
    - Selector: subpredicates
  */
  @objc var subpredicates: [Any] { @objc get }
}

extension NSCompoundPredicate: NSCompoundPredicateExports {
  @objc public static func create(andPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate {
    return self.init(andPredicateWithSubpredicates: andPredicateWithSubpredicates)
  }

  @objc public static func create(notPredicateWithSubpredicate: NSPredicate) -> NSCompoundPredicate {
    return self.init(notPredicateWithSubpredicate: notPredicateWithSubpredicate)
  }

  @objc public static func create(orPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate {
    return self.init(orPredicateWithSubpredicates: orPredicateWithSubpredicates)
  }

}
