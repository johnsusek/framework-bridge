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
    - Selector: NSController
  */

@objc(NSController) protocol NSControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: editing
  */
  @objc var isEditing: Bool { @objc get }
}

extension NSController: NSControllerExports {
}
