import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSNameSpecifier
    - name: NSNameSpecifier
    - argLabels: 
  */

@objc(NSNameSpecifier) protocol NSNameSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:name:
    - argLabels: containerSpecifier, key, name
    - constructorTokens: containerClassDescription, containerSpecifier, key, name
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, name: String) -> Self

  // Own Instance Properties

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: String { @objc get @objc (setName:) set }
}

extension NSNameSpecifier: NSNameSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, name: String) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, name: name)
  }

}
