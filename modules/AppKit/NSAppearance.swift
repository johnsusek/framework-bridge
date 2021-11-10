import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSAppearance
    - Introduced: 10.9
  */

@objc(NSAppearance) protocol NSAppearanceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: appearanceNamed:
  */
  @objc static func createWithAppearanceNamed(_ named: NSAppearance.Name) -> NSAppearance?

  // Own Static Properties

  /**
    - Selector: currentAppearance
  */
  @objc static var current: NSAppearance! { @objc (currentAppearance) get @objc (setCurrentAppearance:) set }

  // Instance Methods

  /**
    - Selector: bestMatchFromAppearancesWithNames:
    - Introduced: 10.14
  */
  @objc (bestMatchFromAppearancesWithNames:) @available(OSX 10.14, *) func bestMatch(from: [NSAppearance.Name]) -> NSAppearance.Name?

  // Own Instance Properties

  /**
    - Selector: allowsVibrancy
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowsVibrancy: Bool { @objc get }

  /**
    - Selector: name
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var name: NSAppearance.Name { @objc get }
}

extension NSAppearance: NSAppearanceExports {

  /**
    - Selector: appearanceNamed:
  */
  @objc public static func createWithAppearanceNamed(_ named: NSAppearance.Name) -> NSAppearance? {
    return self.init(named: named)
  }

}
