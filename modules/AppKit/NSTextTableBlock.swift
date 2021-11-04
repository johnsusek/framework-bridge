import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextTableBlock
  */

@objc(NSTextTableBlock) protocol NSTextTableBlockExports: JSExport, NSTextBlockExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithTable:startingRow:rowSpan:startingColumn:columnSpan:
  */
  @objc static func createWithTable(_: NSTextTable, startingRow: Int, rowSpan: Int, startingColumn: Int, columnSpan: Int) -> Self

  // Own Instance Properties

  /**
    - Selector: columnSpan
  */
  @objc var columnSpan: Int { @objc get }

  /**
    - Selector: rowSpan
  */
  @objc var rowSpan: Int { @objc get }

  /**
    - Selector: startingColumn
  */
  @objc var startingColumn: Int { @objc get }

  /**
    - Selector: startingRow
  */
  @objc var startingRow: Int { @objc get }

  /**
    - Selector: table
  */
  @objc var table: NSTextTable { @objc get }
}

extension NSTextTableBlock: NSTextTableBlockExports {
  @objc public static func createWithTable(_ table: NSTextTable, startingRow: Int, rowSpan: Int, startingColumn: Int, columnSpan: Int) -> Self {
    return self.init(table: table, startingRow: startingRow, rowSpan: rowSpan, startingColumn: startingColumn, columnSpan: columnSpan)
  }

}
