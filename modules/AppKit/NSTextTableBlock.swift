import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextTableBlock
    - name: NSTextTableBlock
    - argLabels: 
  */

@objc(NSTextTableBlock) protocol NSTextTableBlockExports: JSExport, NSTextBlockExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithTable
    - name: initWithTable:startingRow:rowSpan:startingColumn:columnSpan:
    - argLabels: startingRow, rowSpan, startingColumn, columnSpan
    - constructorTokens: table, startingRow, rowSpan, startingColumn, columnSpan
  */
  @objc static func createWithTable(_: NSTextTable, startingRow: Int, rowSpan: Int, startingColumn: Int, columnSpan: Int) -> Self

  // Own Instance Properties

  /**
    - jsName: columnSpan
    - name: columnSpan
    - argLabels: 
  */
  @objc var columnSpan: Int { @objc get }

  /**
    - jsName: rowSpan
    - name: rowSpan
    - argLabels: 
  */
  @objc var rowSpan: Int { @objc get }

  /**
    - jsName: startingColumn
    - name: startingColumn
    - argLabels: 
  */
  @objc var startingColumn: Int { @objc get }

  /**
    - jsName: startingRow
    - name: startingRow
    - argLabels: 
  */
  @objc var startingRow: Int { @objc get }

  /**
    - jsName: table
    - name: table
    - argLabels: 
  */
  @objc var table: NSTextTable { @objc get }
}

extension NSTextTableBlock: NSTextTableBlockExports {
  @objc public static func createWithTable(_ table: NSTextTable, startingRow: Int, rowSpan: Int, startingColumn: Int, columnSpan: Int) -> Self {
    return self.init(table: table, startingRow: startingRow, rowSpan: rowSpan, startingColumn: startingColumn, columnSpan: columnSpan)
  }

}
