import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSScriptExecutionContext
  */

@objc(NSScriptExecutionContext) protocol NSScriptExecutionContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sharedScriptExecutionContext
  */
  @objc (sharedScriptExecutionContext) static func shared() -> NSScriptExecutionContext

  // Own Instance Properties

  /**
    - Selector: objectBeingTested
  */
  @objc var objectBeingTested: Any? { @objc get @objc (setObjectBeingTested:) set }

  /**
    - Selector: rangeContainerObject
  */
  @objc var rangeContainerObject: Any? { @objc get @objc (setRangeContainerObject:) set }

  /**
    - Selector: topLevelObject
  */
  @objc var topLevelObject: Any? { @objc get @objc (setTopLevelObject:) set }
}

extension NSScriptExecutionContext: NSScriptExecutionContextExports {
}
