import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSRelativeSpecifier
    - name: NSRelativeSpecifier
    - argLabels: 
  */

@objc(NSRelativeSpecifier) protocol NSRelativeSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:relativePosition:baseSpecifier:
    - argLabels: containerSpecifier, key, relativePosition, baseSpecifier
    - constructorTokens: containerClassDescription, containerSpecifier, key, relativePosition, baseSpecifier
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, relativePosition: NSRelativeSpecifier.RelativePosition, baseSpecifier: NSScriptObjectSpecifier?) -> Self

  // Own Instance Properties

  /**
    - jsName: baseSpecifier
    - name: baseSpecifier
    - argLabels: 
  */
  @objc var baseSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setBaseSpecifier:) set }

  /**
    - jsName: relativePosition
    - name: relativePosition
    - argLabels: 
  */
  @objc var relativePosition: NSRelativeSpecifier.RelativePosition { @objc get @objc (setRelativePosition:) set }
}

extension NSRelativeSpecifier: NSRelativeSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, relativePosition: NSRelativeSpecifier.RelativePosition, baseSpecifier: NSScriptObjectSpecifier?) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, relativePosition: relativePosition, baseSpecifier: baseSpecifier)
  }

}
