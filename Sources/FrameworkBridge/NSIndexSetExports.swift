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
    - Selector: NSIndexSet
  */

@objc(IndexSet) protocol IndexSetExportsManual: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: indexSetWithIndex:
  */
  @objc static func createWithIndex(_ index: Int) -> Self

  /**
    - Selector: indexSetWithIndexesInRange:
  */
  @objc static func createWithIndexesIn(_ indexesIn: NSRange) -> Self

  // Instance Methods

  /**
    - Selector: containsIndex:
  */
  @objc (containsIndex:) func contains(_ p0: Int) -> Bool

  /**
    - Selector: containsIndexes:
  */
  @objc (containsIndexes:) func contains(_ p0: IndexSet) -> Bool

  /**
    - Selector: containsIndexesInRange:
  */
  @objc (containsIndexesInRange:) func contains(in: NSRange) -> Bool

  /**
    - Selector: countOfIndexesInRange:
    - Introduced: 10.5
  */
  @objc (countOfIndexesInRange:) @available(OSX 10.5, *) func countOfIndexes(in: NSRange) -> Int

  /**
    - Selector: enumerateIndexesInRange:options:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerate(in: NSRange, options: NSEnumerationOptions, using: JSValue)

  /**
    - Selector: enumerateIndexesUsingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerate(_ p0: JSValue)

  /**
    - Selector: enumerateIndexesWithOptions:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerate(options: NSEnumerationOptions, using: JSValue)

  /**
    - Selector: enumerateRangesInRange:options:usingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func enumerateRanges(in: NSRange, options: NSEnumerationOptions, using: JSValue)

  /**
    - Selector: enumerateRangesUsingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func enumerateRanges(_ p0: JSValue)

  /**
    - Selector: enumerateRangesWithOptions:usingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func enumerateRanges(options: NSEnumerationOptions, using: JSValue)

  /**
    - Selector: getIndexes:maxCount:inIndexRange:
  */
  @objc func getIndexes(_ p0: UnsafeMutablePointer<Int>, maxCount: Int, inIndexRange: NSRangePointer?) -> Int

  /**
    - Selector: indexGreaterThanIndex:
  */
  @objc func indexGreaterThanIndex(_ p0: Int) -> Int

  /**
    - Selector: indexGreaterThanOrEqualToIndex:
  */
  @objc (indexGreaterThanOrEqualToIndex:) func indexGreaterThanOrEqual(to: Int) -> Int

  /**
    - Selector: indexInRange:options:passingTest:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func index(in: NSRange, options: NSEnumerationOptions, passingTest: JSValue) -> Int

  /**
    - Selector: indexLessThanIndex:
  */
  @objc func indexLessThanIndex(_ p0: Int) -> Int

  /**
    - Selector: indexLessThanOrEqualToIndex:
  */
  @objc (indexLessThanOrEqualToIndex:) func indexLessThanOrEqual(to: Int) -> Int

  /**
    - Selector: indexPassingTest:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func index(passingTest: JSValue) -> Int

  /**
    - Selector: indexWithOptions:passingTest:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func index(options: NSEnumerationOptions, passingTest: JSValue) -> Int

  /**
    - Selector: indexesInRange:options:passingTest:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func indexes(in: NSRange, options: NSEnumerationOptions, passingTest: JSValue) -> IndexSet

  /**
    - Selector: indexesPassingTest:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func indexes(passingTest: JSValue) -> IndexSet

  /**
    - Selector: indexesWithOptions:passingTest:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func indexes(options: NSEnumerationOptions, passingTest: JSValue) -> IndexSet

  /**
    - Selector: intersectsIndexesInRange:
  */
  @objc (intersectsIndexesInRange:) func intersects(in: NSRange) -> Bool

  /**
    - Selector: isEqualToIndexSet:
  */
  @objc (isEqualToIndexSet:) func isEqual(to: IndexSet) -> Bool

  // Own Instance Properties

  /**
    - Selector: count
  */
  @objc var count: Int { @objc get }

  /**
    - Selector: firstIndex
  */
  @objc var firstIndex: Int { @objc get }

  /**
    - Selector: lastIndex
  */
  @objc var lastIndex: Int { @objc get }
}

extension NSIndexSet: IndexSetExportsManual {

  /**
    - Selector: indexSetWithIndex:
  */
  @objc public static func createWithIndex(_ index: Int) -> Self {
    return self.init(index: index)
  }


  /**
    - Selector: indexSetWithIndexesInRange:
  */
  @objc public static func createWithIndexesIn(_ indexesIn: NSRange) -> Self {
    return self.init(indexesIn: indexesIn)
  }

}
