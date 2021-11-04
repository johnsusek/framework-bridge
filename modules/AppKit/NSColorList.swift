import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSColorList
  */

@objc(NSColorList) protocol NSColorListExports: JSExport, NSObjectExports {
  // Static Methods

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
    - Selector: initWithName:
  */
  @objc static func createWithName(_: NSColorList.Name) -> Self

  /**
    - Selector: initWithName:fromFile:
  */
  @objc static func createWithName(_: NSColorList.Name, fromFile: String?) -> Self?

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
  // throws - @objc @available(OSX 10.11, *) func writeToURL(error: URL?) -> Bool

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
  @objc public static func createWithName(_ name: NSColorList.Name) -> Self {
    return self.init(name: name)
  }

  @objc public static func createWithName(_ name: NSColorList.Name, fromFile: String?) -> Self? {
    return self.init(name: name, fromFile: fromFile)
  }

}
