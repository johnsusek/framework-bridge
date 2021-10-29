import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSCompoundPredicate
    - name: NSCompoundPredicate
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSCompoundPredicate) protocol NSCompoundPredicateExports: JSExport, NSPredicateExports {
  // Static Methods

  /**
    - jsName: create
    - name: andPredicateWithSubpredicates:
    - argLabels: andPredicateWithSubpredicates
    - constructorTokens: 
    - unavailable: true
    - renamed: init(andPredicateWithSubpredicates:)
    - message: Not available in Swift
  */
  @objc static func create(andPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate

  /**
    - jsName: create
    - name: notPredicateWithSubpredicate:
    - argLabels: notPredicateWithSubpredicate
    - constructorTokens: 
    - unavailable: true
    - renamed: init(notPredicateWithSubpredicate:)
    - message: Not available in Swift
  */
  @objc static func create(notPredicateWithSubpredicate: NSPredicate) -> NSCompoundPredicate

  /**
    - jsName: create
    - name: orPredicateWithSubpredicates:
    - argLabels: orPredicateWithSubpredicates
    - constructorTokens: 
    - unavailable: true
    - renamed: init(orPredicateWithSubpredicates:)
    - message: Not available in Swift
  */
  @objc static func create(orPredicateWithSubpredicates: [NSPredicate]) -> NSCompoundPredicate

  // Own Instance Properties

  /**
    - jsName: compoundPredicateType
    - name: compoundPredicateType
    - argLabels: 
  */
  @objc var compoundPredicateType: NSCompoundPredicate.LogicalType { @objc get }

  /**
    - jsName: subpredicates
    - name: subpredicates
    - argLabels: 
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
