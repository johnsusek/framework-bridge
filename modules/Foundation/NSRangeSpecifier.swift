import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSRangeSpecifier
    - name: NSRangeSpecifier
    - argLabels: 
  */

@objc(NSRangeSpecifier) protocol NSRangeSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:startSpecifier:endSpecifier:
    - argLabels: containerSpecifier, key, startSpecifier, endSpecifier
    - constructorTokens: containerClassDescription, containerSpecifier, key, startSpecifier, endSpecifier
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, start: NSScriptObjectSpecifier?, end: NSScriptObjectSpecifier?) -> Self

  // Own Instance Properties

  /**
    - jsName: endSpecifier
    - name: endSpecifier
    - argLabels: 
  */
  @objc var endSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setEndSpecifier:) set }

  /**
    - jsName: startSpecifier
    - name: startSpecifier
    - argLabels: 
  */
  @objc var startSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setStartSpecifier:) set }
}

extension NSRangeSpecifier: NSRangeSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, start: NSScriptObjectSpecifier?, end: NSScriptObjectSpecifier?) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, start: start, end: end)
  }

}
