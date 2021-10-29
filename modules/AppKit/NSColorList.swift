import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorList
    - name: NSColorList
    - argLabels: 
  */

@objc(NSColorList) protocol NSColorListExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: availableColorLists
    - name: availableColorLists
    - argLabels: 
  */
  @objc static var availableColorLists: [NSColorList] { @objc get }

  // Instance Methods

  /**
    - jsName: color
    - name: colorWithKey:
    - argLabels: withKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: color(withKey:)
  */
  @objc (colorWithKey:) func color(withKey: NSColor.Name) -> NSColor?

  /**
    - jsName: createWithName
    - name: initWithName:
    - argLabels: 
    - constructorTokens: name
  */
  @objc static func createWithName(_: NSColorList.Name) -> Self

  /**
    - jsName: createWithName
    - name: initWithName:fromFile:
    - argLabels: fromFile
    - constructorTokens: name, fromFile
  */
  @objc static func createWithName(_: NSColorList.Name, fromFile: String?) -> Self?

  /**
    - jsName: insertColor
    - name: insertColor:key:atIndex:
    - argLabels: _, key, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertColor(_:key:at:)
  */
  @objc (insertColor:key:atIndex:) func insertColor(_: NSColor, key: NSColor.Name, at: Int)

  /**
    - jsName: removeColor
    - name: removeColorWithKey:
    - argLabels: withKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeColor(withKey:)
  */
  @objc (removeColorWithKey:) func removeColor(withKey: NSColor.Name)

  /**
    - jsName: removeFile
    - name: removeFile
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeFile()

  /**
    - jsName: setColor
    - name: setColor:forKey:
    - argLabels: forKey
    - constructorTokens: 
  */
  @objc func setColor(_: NSColor, forKey: NSColor.Name)

  /**
    - jsName: writeToURL
    - name: writeToURL:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.11
  */
  // throws - @objc @available(OSX 10.11, *) func writeToURL(error: URL?) -> Bool

  // Own Instance Properties

  /**
    - jsName: allKeys
    - name: allKeys
    - argLabels: 
  */
  @objc var allKeys: [NSColor.Name] { @objc get }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
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
