import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSSortDescriptor
    - name: NSSortDescriptor
    - argLabels: 
  */

@objc(NSSortDescriptor) protocol NSSortDescriptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: sortDescriptorWithKey:ascending:
    - argLabels: key, ascending
    - constructorTokens: 
    - available: 10.6
    - unavailable: true
    - renamed: init(key:ascending:)
    - message: Not available in Swift
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func create(key: String?, ascending: Bool) -> Self

  /**
    - jsName: create
    - name: sortDescriptorWithKey:ascending:comparator:
    - argLabels: key, ascending, comparator
    - constructorTokens: 
    - available: 10.6
    - unavailable: true
    - renamed: init(key:ascending:comparator:)
    - message: Not available in Swift
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func create(key: String?, ascending: Bool, comparator: JSValue) -> Self

  /**
    - jsName: create
    - name: sortDescriptorWithKey:ascending:selector:
    - argLabels: key, ascending, selector
    - constructorTokens: 
    - available: 10.6
    - unavailable: true
    - renamed: init(key:ascending:selector:)
    - message: Not available in Swift
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func create(key: String?, ascending: Bool, selector: Selector?) -> Self

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
    - jsName: compare
    - name: compareObject:toObject:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: compare(_:to:)
  */
  @objc (compareObject:toObject:) func compare(_: Any, to: Any) -> ComparisonResult

  // Own Instance Properties

  /**
    - jsName: ascending
    - name: ascending
    - argLabels: 
  */
  @objc var ascending: Bool { @objc get }

  /**
    - jsName: comparator
    - name: comparator
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
// jsvalue   @objc @available(OSX 10.6, *) var comparator: JSValue { @objc get }

  /**
    - jsName: key
    - name: key
    - argLabels: 
  */
  @objc var key: String? { @objc get }

  /**
    - jsName: reversedSortDescriptor
    - name: reversedSortDescriptor
    - argLabels: 
  */
  @objc var reversedSortDescriptor: Any { @objc get }

  /**
    - jsName: selector
    - name: selector
    - argLabels: 
  */
  @objc var selector: Selector? { @objc get }
}

extension NSSortDescriptor: NSSortDescriptorExports {
  @objc public static func create(key: String?, ascending: Bool) -> Self {
    return self.init(key: key, ascending: ascending)
  }

  @objc public static func create(key: String?, ascending: Bool, comparator: JSValue) -> Self {
    return self.init(key: key, ascending: ascending, comparator: { p1, p2 in
      let res = comparator.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
      return ComparisonResult.init(rawValue: Int(res.toInt32()))!
    })
  }

  @objc public static func create(key: String?, ascending: Bool, selector: Selector?) -> Self {
    return self.init(key: key, ascending: ascending, selector: selector)
  }

}
