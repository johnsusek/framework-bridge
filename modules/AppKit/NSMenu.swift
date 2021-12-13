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
    - Selector: NSMenu
  */

@objc(NSMenu) protocol NSMenuExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: menuBarVisible
  */
  @objc static func menuBarVisible() -> Bool

  /**
    - Selector: popUpContextMenu:withEvent:forView:
  */
  @objc (popUpContextMenu:withEvent:forView:) static func popUpContextMenu(_ p0: NSMenu, with: NSEvent, `for`: NSView)

  /**
    - Selector: popUpContextMenu:withEvent:forView:withFont:
  */
  @objc (popUpContextMenu:withEvent:forView:withFont:) static func popUpContextMenu(_ p0: NSMenu, with: NSEvent, `for`: NSView, with: NSFont?)

  /**
    - Selector: setMenuBarVisible:
  */
  @objc static func setMenuBarVisible(_ p0: Bool)

  // Instance Methods

  /**
    - Selector: addItem:
  */
  @objc (addItem:) func addItem(_ p0: NSMenuItem)

  /**
    - Selector: addItemWithTitle:action:keyEquivalent:
  */
  @objc (addItemWithTitle:action:keyEquivalent:) func addItem(withTitle: String, action: Selector?, keyEquivalent: String) -> NSMenuItem

  /**
    - Selector: cancelTracking
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func cancelTracking()

  /**
    - Selector: cancelTrackingWithoutAnimation
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func cancelTrackingWithoutAnimation()

  /**
    - Selector: indexOfItem:
  */
  @objc (indexOfItem:) func index(of: NSMenuItem) -> Int

  /**
    - Selector: indexOfItemWithRepresentedObject:
  */
  @objc (indexOfItemWithRepresentedObject:) func indexOfItem(withRepresentedObject: Any?) -> Int

  /**
    - Selector: indexOfItemWithSubmenu:
  */
  @objc (indexOfItemWithSubmenu:) func indexOfItem(withSubmenu: NSMenu?) -> Int

  /**
    - Selector: indexOfItemWithTag:
  */
  @objc (indexOfItemWithTag:) func indexOfItem(withTag: Int) -> Int

  /**
    - Selector: indexOfItemWithTarget:andAction:
  */
  @objc (indexOfItemWithTarget:andAction:) func indexOfItem(withTarget: Any?, andAction: Selector?) -> Int

  /**
    - Selector: indexOfItemWithTitle:
  */
  @objc (indexOfItemWithTitle:) func indexOfItem(withTitle: String) -> Int

  /**
    - Selector: insertItem:atIndex:
  */
  @objc (insertItem:atIndex:) func insertItem(_ p0: NSMenuItem, at: Int)

  /**
    - Selector: insertItemWithTitle:action:keyEquivalent:atIndex:
  */
  @objc (insertItemWithTitle:action:keyEquivalent:atIndex:) func insertItem(withTitle: String, action: Selector?, keyEquivalent: String, at: Int) -> NSMenuItem

  /**
    - Selector: itemAtIndex:
  */
  @objc (itemAtIndex:) func item(at: Int) -> NSMenuItem?

  /**
    - Selector: itemChanged:
  */
  @objc func itemChanged(_ p0: NSMenuItem)

  /**
    - Selector: itemWithTag:
  */
  @objc (itemWithTag:) func item(withTag: Int) -> NSMenuItem?

  /**
    - Selector: itemWithTitle:
  */
  @objc (itemWithTitle:) func item(withTitle: String) -> NSMenuItem?

  /**
    - Selector: performActionForItemAtIndex:
  */
  @objc (performActionForItemAtIndex:) func performActionForItem(at: Int)

  /**
    - Selector: performKeyEquivalent:
  */
  @objc (performKeyEquivalent:) func performKeyEquivalent(with: NSEvent) -> Bool

  /**
    - Selector: popUpMenuPositioningItem:atLocation:inView:
    - Introduced: 10.6
  */
  @objc (popUpMenuPositioningItem:atLocation:inView:) @available(OSX 10.6, *) func popUp(positioning: NSMenuItem?, at: CGPoint, in: NSView?) -> Bool

  /**
    - Selector: removeAllItems
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func removeAllItems()

  /**
    - Selector: removeItem:
  */
  @objc (removeItem:) func removeItem(_ p0: NSMenuItem)

  /**
    - Selector: removeItemAtIndex:
  */
  @objc (removeItemAtIndex:) func removeItem(at: Int)

  /**
    - Selector: setSubmenu:forItem:
  */
  @objc (setSubmenu:forItem:) func setSubmenu(_ p0: NSMenu?, `for`: NSMenuItem)

  /**
    - Selector: submenuAction:
  */
  @objc func submenuAction(_ p0: Any?)

  /**
    - Selector: update
  */
  @objc func update()

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: allowsContextMenuPlugIns
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allowsContextMenuPlugIns: Bool { @objc get @objc (setAllowsContextMenuPlugIns:) set }

  /**
    - Selector: autoenablesItems
  */
  @objc var autoenablesItems: Bool { @objc get @objc (setAutoenablesItems:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSMenuDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: font
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var font: NSFont! { @objc get @objc (setFont:) set }

  /**
    - Selector: highlightedItem
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var highlightedItem: NSMenuItem? { @objc get }

  /**
    - Selector: itemArray
  */
  @objc var items: [NSMenuItem] { @objc (itemArray) get @objc (setItemArray:) set }

  /**
    - Selector: menuBarHeight
  */
  @objc var menuBarHeight: CGFloat { @objc get }

  /**
    - Selector: minimumWidth
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var minimumWidth: CGFloat { @objc get @objc (setMinimumWidth:) set }

  /**
    - Selector: numberOfItems
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - Selector: propertiesToUpdate
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var propertiesToUpdate: NSMenu.Properties { @objc get }

  /**
    - Selector: showsStateColumn
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var showsStateColumn: Bool { @objc get @objc (setShowsStateColumn:) set }

  /**
    - Selector: size
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var size: CGSize { @objc get }

  /**
    - Selector: supermenu
  */
  @objc var supermenu: NSMenu? { @objc get @objc (setSupermenu:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: userInterfaceLayoutDirection
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setUserInterfaceLayoutDirection:) set }
}

extension NSMenu: NSMenuExports {
}
