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
    - Selector: NSIndexPath
  */

@objc(IndexPath) protocol IndexPathExportsManual: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: indexPathForItem:inSection:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func createWithForItem_InSection(_ forItem: Int, _ inSection: Int) -> Self

  /**
    - Selector: indexPathWithIndex:
  */
  @objc static func createWithIndex(_ index: Int) -> Self

  /**
    - Selector: indexPathWithIndexes:length:
  */
  @objc static func createWithIndexes_Length(_ indexes: UnsafePointer<Int>, _ length: Int) -> Self

  // Instance Methods

  /**
    - Selector: compare:
  */
  @objc func compare(_ p0: IndexPath) -> ComparisonResult

  /**
    - Selector: getIndexes:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: getIndexes:range:
  */
  // unavailableInSwift @objc @available(OSX 10.0, *) func getIndexes(_ p0: UnsafeMutablePointer<Int>)

  /**
    - Selector: getIndexes:range:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func getIndexes(_ p0: UnsafeMutablePointer<Int>, range: NSRange)

  /**
    - Selector: indexAtPosition:
  */
  @objc (indexAtPosition:) func index(atPosition: Int) -> Int

  /**
    - Selector: indexPathByAddingIndex:
  */
  @objc (indexPathByAddingIndex:) func adding(_ p0: Int) -> IndexPath

  /**
    - Selector: indexPathByRemovingLastIndex
  */
  @objc (indexPathByRemovingLastIndex) func removingLastIndex() -> IndexPath

  // Own Instance Properties

  /**
    - Selector: item
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var item: Int { @objc get }

  /**
    - Selector: length
  */
  @objc var length: Int { @objc get }

  /**
    - Selector: section
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var section: Int { @objc get }
}

extension NSIndexPath: IndexPathExportsManual {

  /**
    - Selector: indexPathForItem:inSection:
    - Introduced: 10.11
  */
  @objc public static func createWithForItem_InSection(_ forItem: Int, _ inSection: Int) -> Self {
    return self.init(forItem: forItem, inSection: inSection)
  }


  /**
    - Selector: indexPathWithIndex:
  */
  @objc public static func createWithIndex(_ index: Int) -> Self {
    return self.init(index: index)
  }


  /**
    - Selector: indexPathWithIndexes:length:
  */
  @objc public static func createWithIndexes_Length(_ indexes: UnsafePointer<Int>, _ length: Int) -> Self {
    return self.init(indexes: indexes, length: length)
  }

}
