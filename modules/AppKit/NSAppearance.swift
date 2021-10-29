import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSAppearance
    - name: NSAppearance
    - argLabels: 
    - Introduced: 10.9
  */

@objc(NSAppearance) protocol NSAppearanceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: appearanceNamed:
    - argLabels: named
    - constructorTokens: 
    - unavailable: true
    - renamed: init(named:)
    - message: Not available in Swift
  */
  @objc static func create(named: NSAppearance.Name) -> NSAppearance?

  // Own Static Properties

  /**
    - jsName: current
    - name: currentAppearance
    - argLabels: 
    - obsoleted: 3
    - renamed: current
    - introduced: 10.9
    - deprecated: 100000
    - message: Use -performAsCurrentDrawingAppearance: to temporarily set the drawing appearance, or +currentDrawingAppearance to access the currently drawing appearance.
  */
  @objc static var current: NSAppearance! { @objc (currentAppearance) get @objc (setCurrentAppearance:) set }

  // Instance Methods

  /**
    - jsName: bestMatch
    - name: bestMatchFromAppearancesWithNames:
    - argLabels: from
    - constructorTokens: 
    - available: 10.14
    - obsoleted: 3
    - renamed: bestMatch(from:)
    - Introduced: 10.14
  */
  @objc (bestMatchFromAppearancesWithNames:) @available(OSX 10.14, *) func bestMatch(from: [NSAppearance.Name]) -> NSAppearance.Name?

  /**
    - jsName: createWithAppearanceNamed
    - name: initWithAppearanceNamed:bundle:
    - argLabels: bundle
    - constructorTokens: appearanceNamed, bundle
  */
  @objc static func createWithAppearanceNamed(_: NSAppearance.Name, bundle: Bundle?) -> Self?

  // Own Instance Properties

  /**
    - jsName: allowsVibrancy
    - name: allowsVibrancy
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowsVibrancy: Bool { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var name: NSAppearance.Name { @objc get }
}

extension NSAppearance: NSAppearanceExports {
  @objc public static func create(named: NSAppearance.Name) -> NSAppearance? {
    return self.init(named: named)
  }

  @objc public static func createWithAppearanceNamed(_ appearanceNamed: NSAppearance.Name, bundle: Bundle?) -> Self? {
    return self.init(appearanceNamed: appearanceNamed, bundle: bundle)
  }

}
