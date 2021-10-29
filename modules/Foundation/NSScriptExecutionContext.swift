import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptExecutionContext
    - name: NSScriptExecutionContext
    - argLabels: 
  */

@objc(NSScriptExecutionContext) protocol NSScriptExecutionContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: shared
    - name: sharedScriptExecutionContext
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shared()
  */
  @objc (sharedScriptExecutionContext) static func shared() -> NSScriptExecutionContext

  // Own Instance Properties

  /**
    - jsName: objectBeingTested
    - name: objectBeingTested
    - argLabels: 
  */
  @objc var objectBeingTested: Any? { @objc get @objc (setObjectBeingTested:) set }

  /**
    - jsName: rangeContainerObject
    - name: rangeContainerObject
    - argLabels: 
  */
  @objc var rangeContainerObject: Any? { @objc get @objc (setRangeContainerObject:) set }

  /**
    - jsName: topLevelObject
    - name: topLevelObject
    - argLabels: 
  */
  @objc var topLevelObject: Any? { @objc get @objc (setTopLevelObject:) set }
}

extension NSScriptExecutionContext: NSScriptExecutionContextExports {
}
