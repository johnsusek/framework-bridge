import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSClassDescription
  */

@objc(NSClassDescription) protocol NSClassDescriptionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: invalidateClassDescriptionCache
  */
  @objc static func invalidateClassDescriptionCache()

  /**
    - Selector: registerClassDescription:forClass:
  */
  @objc (registerClassDescription:forClass:) static func register(_: NSClassDescription, `for`: AnyClass)
}

extension NSClassDescription: NSClassDescriptionExports {
}
