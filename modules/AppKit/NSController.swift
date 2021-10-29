import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSController
    - name: NSController
    - argLabels: 
  */

@objc(NSController) protocol NSControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: isEditing
    - name: editing
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditing
  */
  @objc var isEditing: Bool { @objc get }
}

extension NSController: NSControllerExports {
}
