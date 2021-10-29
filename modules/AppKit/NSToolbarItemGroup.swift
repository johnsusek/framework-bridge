import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSToolbarItemGroup
    - name: NSToolbarItemGroup
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSToolbarItemGroup) protocol NSToolbarItemGroupExports: JSExport, NSToolbarItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: groupWithItemIdentifier:images:selectionMode:labels:target:action:
    - argLabels: itemIdentifier, images, selectionMode, labels, target, action
    - constructorTokens: 
    - available: 10.15
    - unavailable: true
    - renamed: init(itemIdentifier:images:selectionMode:labels:target:action:)
    - message: Not available in Swift
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func create(itemIdentifier: NSToolbarItem.Identifier, images: [NSImage], selectionMode: NSToolbarItemGroup.SelectionMode, labels: [String]?) -> Self

  /**
    - jsName: create
    - name: groupWithItemIdentifier:titles:selectionMode:labels:target:action:
    - argLabels: itemIdentifier, titles, selectionMode, labels, target, action
    - constructorTokens: 
    - available: 10.15
    - unavailable: true
    - renamed: init(itemIdentifier:titles:selectionMode:labels:target:action:)
    - message: Not available in Swift
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func create(itemIdentifier: NSToolbarItem.Identifier, titles: [String], selectionMode: NSToolbarItemGroup.SelectionMode, labels: [String]?) -> Self

  // Instance Methods

  /**
    - jsName: isSelected
    - name: isSelectedAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: isSelected(at:)
    - Introduced: 10.15
  */
  @objc (isSelectedAtIndex:) @available(OSX 10.15, *) func isSelected(at: Int) -> Bool

  /**
    - jsName: setSelected
    - name: setSelected:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: setSelected(_:at:)
    - Introduced: 10.15
  */
  @objc (setSelected:atIndex:) @available(OSX 10.15, *) func setSelected(_: Bool, at: Int)

  // Own Instance Properties

  /**
    - jsName: controlRepresentation
    - name: controlRepresentation
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var controlRepresentation: NSToolbarItemGroup.ControlRepresentation { @objc get @objc (setControlRepresentation:) set }

  /**
    - jsName: selectedIndex
    - name: selectedIndex
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - jsName: selectionMode
    - name: selectionMode
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var selectionMode: NSToolbarItemGroup.SelectionMode { @objc get @objc (setSelectionMode:) set }

  /**
    - jsName: subitems
    - name: subitems
    - argLabels: 
  */
  @objc var subitems: [NSToolbarItem] { @objc get @objc (setSubitems:) set }
}

extension NSToolbarItemGroup: NSToolbarItemGroupExports {
  @objc public static func create(itemIdentifier: NSToolbarItem.Identifier, images: [NSImage], selectionMode: NSToolbarItemGroup.SelectionMode, labels: [String]?) -> Self {
    return self.init(itemIdentifier: itemIdentifier, images: images, selectionMode: selectionMode, labels: labels, target: nil, action: nil)
  }

  @objc public static func create(itemIdentifier: NSToolbarItem.Identifier, titles: [String], selectionMode: NSToolbarItemGroup.SelectionMode, labels: [String]?) -> Self {
    return self.init(itemIdentifier: itemIdentifier, titles: titles, selectionMode: selectionMode, labels: labels, target: nil, action: nil)
  }

}
