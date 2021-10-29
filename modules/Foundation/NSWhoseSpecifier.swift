import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSWhoseSpecifier
    - name: NSWhoseSpecifier
    - argLabels: 
  */

@objc(NSWhoseSpecifier) protocol NSWhoseSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:test:
    - argLabels: containerSpecifier, key, test
    - constructorTokens: containerClassDescription, containerSpecifier, key, test
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, test: NSScriptWhoseTest) -> Self

  // Own Instance Properties

  /**
    - jsName: endSubelementIdentifier
    - name: endSubelementIdentifier
    - argLabels: 
  */
  @objc var endSubelementIdentifier: NSWhoseSpecifier.SubelementIdentifier { @objc get @objc (setEndSubelementIdentifier:) set }

  /**
    - jsName: endSubelementIndex
    - name: endSubelementIndex
    - argLabels: 
  */
  @objc var endSubelementIndex: Int { @objc get @objc (setEndSubelementIndex:) set }

  /**
    - jsName: startSubelementIdentifier
    - name: startSubelementIdentifier
    - argLabels: 
  */
  @objc var startSubelementIdentifier: NSWhoseSpecifier.SubelementIdentifier { @objc get @objc (setStartSubelementIdentifier:) set }

  /**
    - jsName: startSubelementIndex
    - name: startSubelementIndex
    - argLabels: 
  */
  @objc var startSubelementIndex: Int { @objc get @objc (setStartSubelementIndex:) set }

  /**
    - jsName: test
    - name: test
    - argLabels: 
  */
  @objc var test: NSScriptWhoseTest { @objc get @objc (setTest:) set }
}

extension NSWhoseSpecifier: NSWhoseSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, test: NSScriptWhoseTest) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, test: test)
  }

}
