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
    - Selector: NSToolbarItemGroup
    - Introduced: 10.5
  */

@objc(NSToolbarItemGroup) protocol NSToolbarItemGroupExports: JSExport, NSToolbarItemExports {
  // Static Methods

  /**
    - Selector: groupWithItemIdentifier:images:selectionMode:labels:target:action:
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func createWithGroupWithItemIdentifierWithImagesWithSelectionModeWithLabels(_ itemIdentifier: NSToolbarItem.Identifier, _ images: [NSImage], _ selectionMode: NSToolbarItemGroup.SelectionMode, _ labels: [String]?) -> Self

  /**
    - Selector: groupWithItemIdentifier:titles:selectionMode:labels:target:action:
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func createWithGroupWithItemIdentifierWithTitlesWithSelectionModeWithLabels(_ itemIdentifier: NSToolbarItem.Identifier, _ titles: [String], _ selectionMode: NSToolbarItemGroup.SelectionMode, _ labels: [String]?) -> Self

  // Instance Methods

  /**
    - Selector: isSelectedAtIndex:
    - Introduced: 10.15
  */
  @objc (isSelectedAtIndex:) @available(OSX 10.15, *) func isSelected(at: Int) -> Bool

  /**
    - Selector: setSelected:atIndex:
    - Introduced: 10.15
  */
  @objc (setSelected:atIndex:) @available(OSX 10.15, *) func setSelected(_: Bool, at: Int)

  // Own Instance Properties

  /**
    - Selector: controlRepresentation
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var controlRepresentation: NSToolbarItemGroup.ControlRepresentation { @objc get @objc (setControlRepresentation:) set }

  /**
    - Selector: selectedIndex
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - Selector: selectionMode
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var selectionMode: NSToolbarItemGroup.SelectionMode { @objc get @objc (setSelectionMode:) set }

  /**
    - Selector: subitems
  */
  @objc var subitems: [NSToolbarItem] { @objc get @objc (setSubitems:) set }
}

extension NSToolbarItemGroup: NSToolbarItemGroupExports {

  /**
    - Selector: groupWithItemIdentifier:images:selectionMode:labels:target:action:
    - Introduced: 10.15
  */
  @objc public static func createWithGroupWithItemIdentifierWithImagesWithSelectionModeWithLabels(_ itemIdentifier: NSToolbarItem.Identifier, _ images: [NSImage], _ selectionMode: NSToolbarItemGroup.SelectionMode, _ labels: [String]?) -> Self {
    return self.init(itemIdentifier: itemIdentifier, images: images, selectionMode: selectionMode, labels: labels, target: nil, action: nil)
  }


  /**
    - Selector: groupWithItemIdentifier:titles:selectionMode:labels:target:action:
    - Introduced: 10.15
  */
  @objc public static func createWithGroupWithItemIdentifierWithTitlesWithSelectionModeWithLabels(_ itemIdentifier: NSToolbarItem.Identifier, _ titles: [String], _ selectionMode: NSToolbarItemGroup.SelectionMode, _ labels: [String]?) -> Self {
    return self.init(itemIdentifier: itemIdentifier, titles: titles, selectionMode: selectionMode, labels: labels, target: nil, action: nil)
  }

}
