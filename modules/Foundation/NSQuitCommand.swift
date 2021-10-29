import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSQuitCommand
    - name: NSQuitCommand
    - argLabels: 
  */

@objc(NSQuitCommand) protocol NSQuitCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: saveOptions
    - name: saveOptions
    - argLabels: 
  */
  @objc var saveOptions: NSSaveOptions { @objc get }
}

extension NSQuitCommand: NSQuitCommandExports {
}
