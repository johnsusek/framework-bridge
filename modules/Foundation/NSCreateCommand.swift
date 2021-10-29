import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSCreateCommand
    - name: NSCreateCommand
    - argLabels: 
  */

@objc(NSCreateCommand) protocol NSCreateCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: createClassDescription
    - name: createClassDescription
    - argLabels: 
  */
  @objc var createClassDescription: NSScriptClassDescription { @objc get }

  /**
    - jsName: resolvedKeyDictionary
    - name: resolvedKeyDictionary
    - argLabels: 
  */
  @objc var resolvedKeyDictionary: [String: Any] { @objc get }
}

extension NSCreateCommand: NSCreateCommandExports {
}
