import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMenu
    - name: NSMenu
    - argLabels: 
  */

@objc(NSMenu) protocol NSMenuExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: menuBarVisible
    - name: menuBarVisible
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func menuBarVisible() -> Bool

  /**
    - jsName: popUpContextMenu
    - name: popUpContextMenu:withEvent:forView:
    - argLabels: _, with, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: popUpContextMenu(_:with:for:)
  */
  @objc (popUpContextMenu:withEvent:forView:) static func popUpContextMenu(_: NSMenu, with: NSEvent, `for`: NSView)

  /**
    - jsName: popUpContextMenu
    - name: popUpContextMenu:withEvent:forView:withFont:
    - argLabels: _, with, for, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: popUpContextMenu(_:with:for:with:)
  */
  @objc (popUpContextMenu:withEvent:forView:withFont:) static func popUpContextMenu(_: NSMenu, with: NSEvent, `for`: NSView, with: NSFont?)

  /**
    - jsName: setMenuBarVisible
    - name: setMenuBarVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func setMenuBarVisible(_: Bool)

  // Instance Methods

  /**
    - jsName: addItem
    - name: addItem:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (addItem:) func addItem(_: NSMenuItem)

  /**
    - jsName: addItem
    - name: addItemWithTitle:action:keyEquivalent:
    - argLabels: withTitle, action, keyEquivalent
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addItem(withTitle:action:keyEquivalent:)
  */
  @objc (addItemWithTitle:action:keyEquivalent:) func addItem(withTitle: String, action: Selector?, keyEquivalent: String) -> NSMenuItem

  /**
    - jsName: cancelTracking
    - name: cancelTracking
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func cancelTracking()

  /**
    - jsName: cancelTrackingWithoutAnimation
    - name: cancelTrackingWithoutAnimation
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func cancelTrackingWithoutAnimation()

  /**
    - jsName: index
    - name: indexOfItem:
    - argLabels: of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: index(of:)
  */
  @objc (indexOfItem:) func index(of: NSMenuItem) -> Int

  /**
    - jsName: indexOfItem
    - name: indexOfItemWithRepresentedObject:
    - argLabels: withRepresentedObject
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfItem(withRepresentedObject:)
  */
  @objc (indexOfItemWithRepresentedObject:) func indexOfItem(withRepresentedObject: Any?) -> Int

  /**
    - jsName: indexOfItem
    - name: indexOfItemWithSubmenu:
    - argLabels: withSubmenu
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfItem(withSubmenu:)
  */
  @objc (indexOfItemWithSubmenu:) func indexOfItem(withSubmenu: NSMenu?) -> Int

  /**
    - jsName: indexOfItem
    - name: indexOfItemWithTag:
    - argLabels: withTag
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfItem(withTag:)
  */
  @objc (indexOfItemWithTag:) func indexOfItem(withTag: Int) -> Int

  /**
    - jsName: indexOfItem
    - name: indexOfItemWithTarget:andAction:
    - argLabels: withTarget, andAction
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfItem(withTarget:andAction:)
  */
  @objc (indexOfItemWithTarget:andAction:) func indexOfItem(withTarget: Any?, andAction: Selector?) -> Int

  /**
    - jsName: indexOfItem
    - name: indexOfItemWithTitle:
    - argLabels: withTitle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfItem(withTitle:)
  */
  @objc (indexOfItemWithTitle:) func indexOfItem(withTitle: String) -> Int

  /**
    - jsName: createWithTitle
    - name: initWithTitle:
    - argLabels: 
    - constructorTokens: title
  */
  @objc static func createWithTitle(_: String) -> Self

  /**
    - jsName: insertItem
    - name: insertItem:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertItem(_:at:)
  */
  @objc (insertItem:atIndex:) func insertItem(_: NSMenuItem, at: Int)

  /**
    - jsName: insertItem
    - name: insertItemWithTitle:action:keyEquivalent:atIndex:
    - argLabels: withTitle, action, keyEquivalent, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertItem(withTitle:action:keyEquivalent:at:)
  */
  @objc (insertItemWithTitle:action:keyEquivalent:atIndex:) func insertItem(withTitle: String, action: Selector?, keyEquivalent: String, at: Int) -> NSMenuItem

  /**
    - jsName: item
    - name: itemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: item(at:)
  */
  @objc (itemAtIndex:) func item(at: Int) -> NSMenuItem?

  /**
    - jsName: itemChanged
    - name: itemChanged:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func itemChanged(_: NSMenuItem)

  /**
    - jsName: item
    - name: itemWithTag:
    - argLabels: withTag
    - constructorTokens: 
    - obsoleted: 3
    - renamed: item(withTag:)
  */
  @objc (itemWithTag:) func item(withTag: Int) -> NSMenuItem?

  /**
    - jsName: item
    - name: itemWithTitle:
    - argLabels: withTitle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: item(withTitle:)
  */
  @objc (itemWithTitle:) func item(withTitle: String) -> NSMenuItem?

  /**
    - jsName: performActionForItem
    - name: performActionForItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: performActionForItem(at:)
  */
  @objc (performActionForItemAtIndex:) func performActionForItem(at: Int)

  /**
    - jsName: performKeyEquivalent
    - name: performKeyEquivalent:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: performKeyEquivalent(with:)
  */
  @objc (performKeyEquivalent:) func performKeyEquivalent(with: NSEvent) -> Bool

  /**
    - jsName: popUp
    - name: popUpMenuPositioningItem:atLocation:inView:
    - argLabels: positioning, at, in
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: popUp(positioning:at:in:)
    - Introduced: 10.6
  */
  @objc (popUpMenuPositioningItem:atLocation:inView:) @available(OSX 10.6, *) func popUp(positioning: NSMenuItem?, at: CGPoint, in: NSView?) -> Bool

  /**
    - jsName: removeAllItems
    - name: removeAllItems
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func removeAllItems()

  /**
    - jsName: removeItem
    - name: removeItem:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (removeItem:) func removeItem(_: NSMenuItem)

  /**
    - jsName: removeItem
    - name: removeItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeItem(at:)
  */
  @objc (removeItemAtIndex:) func removeItem(at: Int)

  /**
    - jsName: setSubmenu
    - name: setSubmenu:forItem:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setSubmenu(_:for:)
  */
  @objc (setSubmenu:forItem:) func setSubmenu(_: NSMenu?, `for`: NSMenuItem)

  /**
    - jsName: submenuAction
    - name: submenuAction:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func submenuAction(_: Any?)

  /**
    - jsName: update
    - name: update
    - argLabels: 
    - constructorTokens: 
  */
  @objc func update()

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: allowsContextMenuPlugIns
    - name: allowsContextMenuPlugIns
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allowsContextMenuPlugIns: Bool { @objc get @objc (setAllowsContextMenuPlugIns:) set }

  /**
    - jsName: autoenablesItems
    - name: autoenablesItems
    - argLabels: 
  */
  @objc var autoenablesItems: Bool { @objc get @objc (setAutoenablesItems:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSMenuDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: font
    - name: font
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var font: NSFont! { @objc get @objc (setFont:) set }

  /**
    - jsName: highlightedItem
    - name: highlightedItem
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var highlightedItem: NSMenuItem? { @objc get }

  /**
    - jsName: items
    - name: itemArray
    - argLabels: 
    - obsoleted: 3
    - renamed: items
  */
  @objc var items: [NSMenuItem] { @objc (itemArray) get @objc (setItemArray:) set }

  /**
    - jsName: menuBarHeight
    - name: menuBarHeight
    - argLabels: 
  */
  @objc var menuBarHeight: CGFloat { @objc get }

  /**
    - jsName: minimumWidth
    - name: minimumWidth
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var minimumWidth: CGFloat { @objc get @objc (setMinimumWidth:) set }

  /**
    - jsName: numberOfItems
    - name: numberOfItems
    - argLabels: 
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - jsName: propertiesToUpdate
    - name: propertiesToUpdate
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var propertiesToUpdate: NSMenu.Properties { @objc get }

  /**
    - jsName: showsStateColumn
    - name: showsStateColumn
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var showsStateColumn: Bool { @objc get @objc (setShowsStateColumn:) set }

  /**
    - jsName: size
    - name: size
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var size: CGSize { @objc get }

  /**
    - jsName: supermenu
    - name: supermenu
    - argLabels: 
  */
  @objc var supermenu: NSMenu? { @objc get @objc (setSupermenu:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: userInterfaceLayoutDirection
    - name: userInterfaceLayoutDirection
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setUserInterfaceLayoutDirection:) set }
}

extension NSMenu: NSMenuExports {
  @objc public static func createWithTitle(_ title: String) -> Self {
    return self.init(title: title)
  }

}
