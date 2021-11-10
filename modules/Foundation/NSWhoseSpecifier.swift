import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSWhoseSpecifier
  */

@objc(NSWhoseSpecifier) protocol NSWhoseSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: endSubelementIdentifier
  */
  @objc var endSubelementIdentifier: NSWhoseSpecifier.SubelementIdentifier { @objc get @objc (setEndSubelementIdentifier:) set }

  /**
    - Selector: endSubelementIndex
  */
  @objc var endSubelementIndex: Int { @objc get @objc (setEndSubelementIndex:) set }

  /**
    - Selector: startSubelementIdentifier
  */
  @objc var startSubelementIdentifier: NSWhoseSpecifier.SubelementIdentifier { @objc get @objc (setStartSubelementIdentifier:) set }

  /**
    - Selector: startSubelementIndex
  */
  @objc var startSubelementIndex: Int { @objc get @objc (setStartSubelementIndex:) set }

  /**
    - Selector: test
  */
  @objc var test: NSScriptWhoseTest { @objc get @objc (setTest:) set }
}

extension NSWhoseSpecifier: NSWhoseSpecifierExports {
}
