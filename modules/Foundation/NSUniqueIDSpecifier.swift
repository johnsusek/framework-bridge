import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUniqueIDSpecifier
    - name: NSUniqueIDSpecifier
    - argLabels: 
  */

@objc(NSUniqueIDSpecifier) protocol NSUniqueIDSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:uniqueID:
    - argLabels: containerSpecifier, key, uniqueID
    - constructorTokens: containerClassDescription, containerSpecifier, key, uniqueID
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, uniqueID: Any) -> Self

  // Own Instance Properties

  /**
    - jsName: uniqueID
    - name: uniqueID
    - argLabels: 
  */
  @objc var uniqueID: Any { @objc get @objc (setUniqueID:) set }
}

extension NSUniqueIDSpecifier: NSUniqueIDSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, uniqueID: Any) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, uniqueID: uniqueID)
  }

}
