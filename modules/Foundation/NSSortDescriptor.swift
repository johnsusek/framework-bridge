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
    - Selector: NSSortDescriptor
  */

@objc(NSSortDescriptor) protocol NSSortDescriptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sortDescriptorWithKey:ascending:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithKeyWithAscending(_ key: String?, _ ascending: Bool) -> Self

  /**
    - Selector: sortDescriptorWithKey:ascending:comparator:
    - Introduced: 10.6
  */
// jsvalue   @objc @available(OSX 10.6, *) static func createWithKeyWithAscendingWithComparator(_ key: String?, _ ascending: Bool, _ comparator: JSValue) -> Self

  /**
    - Selector: sortDescriptorWithKey:ascending:selector:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithKeyWithAscendingWithSelector(_ key: String?, _ ascending: Bool, _ selector: Selector?) -> Self

  // Instance Methods

  /**
    - Selector: allowEvaluation
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func allowEvaluation()

  /**
    - Selector: compareObject:toObject:
  */
  @objc (compareObject:toObject:) func compare(_: Any, to: Any) -> ComparisonResult

  // Own Instance Properties

  /**
    - Selector: ascending
  */
  @objc var ascending: Bool { @objc get }

  /**
    - Selector: comparator
    - Introduced: 10.6
  */
// jsvalue   @objc @available(OSX 10.6, *) var comparator: JSValue { @objc get }

  /**
    - Selector: key
  */
  @objc var key: String? { @objc get }

  /**
    - Selector: reversedSortDescriptor
  */
  @objc var reversedSortDescriptor: Any { @objc get }

  /**
    - Selector: selector
  */
  @objc var selector: Selector? { @objc get }
}

extension NSSortDescriptor: NSSortDescriptorExports {

  /**
    - Selector: sortDescriptorWithKey:ascending:
    - Introduced: 10.6
  */
  @objc public static func createWithKeyWithAscending(_ key: String?, _ ascending: Bool) -> Self {
    return self.init(key: key, ascending: ascending)
  }


  /**
    - Selector: sortDescriptorWithKey:ascending:comparator:
    - Introduced: 10.6
  */
  @objc public static func createWithKeyWithAscendingWithComparator(_ key: String?, _ ascending: Bool, _ comparator: JSValue) -> Self {
    return self.init(key: key, ascending: ascending, comparator: { p1, p2 in
      let res = comparator.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
      return ComparisonResult.init(rawValue: Int(res.toInt32()))!
    })
  }


  /**
    - Selector: sortDescriptorWithKey:ascending:selector:
    - Introduced: 10.6
  */
  @objc public static func createWithKeyWithAscendingWithSelector(_ key: String?, _ ascending: Bool, _ selector: Selector?) -> Self {
    return self.init(key: key, ascending: ascending, selector: selector)
  }

}
