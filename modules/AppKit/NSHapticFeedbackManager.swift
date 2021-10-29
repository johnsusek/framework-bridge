import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSHapticFeedbackManager
    - name: NSHapticFeedbackManager
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSHapticFeedbackManager) protocol NSHapticFeedbackManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: defaultPerformer
    - name: defaultPerformer
    - argLabels: 
  */
  @objc static var defaultPerformer: NSHapticFeedbackPerformer { @objc get }
}

extension NSHapticFeedbackManager: NSHapticFeedbackManagerExports {
}
