import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSIndexSpecifier
    - name: NSIndexSpecifier
    - argLabels: 
  */

@objc(NSIndexSpecifier) protocol NSIndexSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:index:
    - argLabels: containerSpecifier, key, index
    - constructorTokens: containerClassDescription, containerSpecifier, key, index
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, index: Int) -> Self

  // Own Instance Properties

  /**
    - jsName: index
    - name: index
    - argLabels: 
  */
  @objc var index: Int { @objc get @objc (setIndex:) set }
}

extension NSIndexSpecifier: NSIndexSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, index: Int) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, index: index)
  }

}
