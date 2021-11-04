import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSHapticFeedbackManager
    - Introduced: 10.11
  */

@objc(NSHapticFeedbackManager) protocol NSHapticFeedbackManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultPerformer
  */
  @objc static var defaultPerformer: NSHapticFeedbackPerformer { @objc get }
}

extension NSHapticFeedbackManager: NSHapticFeedbackManagerExports {
}
