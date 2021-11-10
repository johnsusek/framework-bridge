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
    - Selector: NSTextTableBlock
  */

@objc(NSTextTableBlock) protocol NSTextTableBlockExports: JSExport, NSTextBlockExports {
  // Static Methods

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
}
