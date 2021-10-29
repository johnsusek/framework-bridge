import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSSetCommand
    - name: NSSetCommand
    - argLabels: 
  */

@objc(NSSetCommand) protocol NSSetCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: setReceiversSpecifier
    - name: setReceiversSpecifier:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setReceiversSpecifier(_: NSScriptObjectSpecifier?)

  // Own Instance Properties

  /**
    - jsName: keySpecifier
    - name: keySpecifier
    - argLabels: 
  */
  @objc var keySpecifier: NSScriptObjectSpecifier { @objc get }
}

extension NSSetCommand: NSSetCommandExports {
}