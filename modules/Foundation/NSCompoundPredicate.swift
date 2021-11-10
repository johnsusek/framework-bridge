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
    - Selector: NSCompoundPredicate
    - Introduced: 10.4
  */

@objc(NSCompoundPredicate) protocol NSCompoundPredicateExports: JSExport, NSPredicateExports {
  // Static Methods

  /**
    - Selector: andPredicateWithSubpredicates:
  */
  @objc static func createWithAndPredicateWithSubpredicates(_ andPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate

  /**
    - Selector: notPredicateWithSubpredicate:
  */
  @objc static func createWithNotPredicateWithSubpredicate(_ notPredicateWithSubpredicate: NSPredicate) -> NSCompoundPredicate

  /**
    - Selector: orPredicateWithSubpredicates:
  */
  @objc static func createWithOrPredicateWithSubpredicates(_ orPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate

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

  /**
    - Selector: andPredicateWithSubpredicates:
  */
  @objc public static func createWithAndPredicateWithSubpredicates(_ andPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate {
    return self.init(andPredicateWithSubpredicates: andPredicateWithSubpredicates)
  }


  /**
    - Selector: notPredicateWithSubpredicate:
  */
  @objc public static func createWithNotPredicateWithSubpredicate(_ notPredicateWithSubpredicate: NSPredicate) -> NSCompoundPredicate {
    return self.init(notPredicateWithSubpredicate: notPredicateWithSubpredicate)
  }


  /**
    - Selector: orPredicateWithSubpredicates:
  */
  @objc public static func createWithOrPredicateWithSubpredicates(_ orPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate {
    return self.init(orPredicateWithSubpredicates: orPredicateWithSubpredicates)
  }

}
