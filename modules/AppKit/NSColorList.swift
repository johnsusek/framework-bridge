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
    - Selector: NSColorList
  */

@objc(NSColorList) protocol NSColorListExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: colorListNamed:
  */
  @objc static func createWithColorListNamed(_ named: NSColorList.Name) -> NSColorList?

  // Own Static Properties

  /**
    - Selector: availableColorLists
  */
  @objc static var availableColorLists: [NSColorList] { @objc get }

  // Instance Methods

  /**
    - Selector: colorWithKey:
  */
  @objc (colorWithKey:) func color(withKey: NSColor.Name) -> NSColor?

  /**
    - Selector: insertColor:key:atIndex:
  */
  @objc (insertColor:key:atIndex:) func insertColor(_: NSColor, key: NSColor.Name, at: Int)

  /**
    - Selector: removeColorWithKey:
  */
  @objc (removeColorWithKey:) func removeColor(withKey: NSColor.Name)

  /**
    - Selector: removeFile
  */
  @objc func removeFile()

  /**
    - Selector: setColor:forKey:
  */
  @objc func setColor(_: NSColor, forKey: NSColor.Name)

  /**
    - Selector: writeToURL:error:
    - Introduced: 10.11
  */
  // throws - @objc @available(OSX 10.11, *) func writeToURL(url: URL?) -> Bool

  // Own Instance Properties

  /**
    - Selector: allKeys
  */
  @objc var allKeys: [NSColor.Name] { @objc get }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get }

  /**
    - Selector: name
  */
  @objc var name: NSColorList.Name? { @objc get }
}

extension NSColorList: NSColorListExports {

  /**
    - Selector: colorListNamed:
  */
  @objc public static func createWithColorListNamed(_ named: NSColorList.Name) -> NSColorList? {
    return self.init(named: named)
  }

}
