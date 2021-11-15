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
    - Selector: NSClassDescription
  */

@objc(NSClassDescription) protocol NSClassDescriptionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: classDescriptionForClass:
  */
  @objc static func createWithClassDescriptionForClass(_ `for`: AnyClass) -> NSClassDescription?

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

  /**
    - Selector: classDescriptionForClass:
  */
  @objc public static func createWithClassDescriptionForClass(_ `for`: AnyClass) -> NSClassDescription? {
    return self.init(for: `for`)
  }

}
