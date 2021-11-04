import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSNameSpecifier
  */

@objc(NSNameSpecifier) protocol NSNameSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithContainerClassDescription:containerSpecifier:key:name:
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, name: String) -> Self

  // Own Instance Properties

  /**
    - Selector: name
  */
  @objc var name: String { @objc get @objc (setName:) set }
}

extension NSNameSpecifier: NSNameSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, name: String) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, name: name)
  }

}
