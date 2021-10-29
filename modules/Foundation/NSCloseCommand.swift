import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSCloseCommand
    - name: NSCloseCommand
    - argLabels: 
  */

@objc(NSCloseCommand) protocol NSCloseCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: saveOptions
    - name: saveOptions
    - argLabels: 
  */
  @objc var saveOptions: NSSaveOptions { @objc get }
}

extension NSCloseCommand: NSCloseCommandExports {
}
