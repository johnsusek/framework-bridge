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
    - Selector: NSPopUpButton
  */

@objc(NSPopUpButton) protocol NSPopUpButtonExports: JSExport, NSButtonExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: addItemWithTitle:
  */
  @objc (addItemWithTitle:) func addItem(withTitle: String)

  /**
    - Selector: addItemsWithTitles:
  */
  @objc (addItemsWithTitles:) func addItems(withTitles: [String])

  /**
    - Selector: indexOfItem:
  */
  @objc (indexOfItem:) func index(of: NSMenuItem) -> Int

  /**
    - Selector: indexOfItemWithRepresentedObject:
  */
  @objc (indexOfItemWithRepresentedObject:) func indexOfItem(withRepresentedObject: Any?) -> Int

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
    - Selector: insertItemWithTitle:atIndex:
  */
  @objc (insertItemWithTitle:atIndex:) func insertItem(withTitle: String, at: Int)

  /**
    - Selector: itemAtIndex:
  */
  @objc (itemAtIndex:) func item(at: Int) -> NSMenuItem?

  /**
    - Selector: itemTitleAtIndex:
  */
  @objc (itemTitleAtIndex:) func itemTitle(at: Int) -> String

  /**
    - Selector: itemWithTitle:
  */
  @objc (itemWithTitle:) func item(withTitle: String) -> NSMenuItem?

  /**
    - Selector: removeAllItems
  */
  @objc func removeAllItems()

  /**
    - Selector: removeItemAtIndex:
  */
  @objc (removeItemAtIndex:) func removeItem(at: Int)

  /**
    - Selector: removeItemWithTitle:
  */
  @objc (removeItemWithTitle:) func removeItem(withTitle: String)

  /**
    - Selector: selectItem:
  */
  @objc (selectItem:) func select(_: NSMenuItem?)

  /**
    - Selector: selectItemAtIndex:
  */
  @objc (selectItemAtIndex:) func selectItem(at: Int)

  /**
    - Selector: selectItemWithTag:
  */
  @objc (selectItemWithTag:) func selectItem(withTag: Int) -> Bool

  /**
    - Selector: selectItemWithTitle:
  */
  @objc (selectItemWithTitle:) func selectItem(withTitle: String)

  /**
    - Selector: setTitle:
  */
  @objc func setTitle(_: String)

  /**
    - Selector: synchronizeTitleAndSelectedItem
  */
  @objc func synchronizeTitleAndSelectedItem()

  // Own Instance Properties

  /**
    - Selector: autoenablesItems
  */
  @objc var autoenablesItems: Bool { @objc get @objc (setAutoenablesItems:) set }

  /**
    - Selector: indexOfSelectedItem
  */
  @objc var indexOfSelectedItem: Int { @objc get }

  /**
    - Selector: itemArray
  */
  @objc var itemArray: [NSMenuItem] { @objc get }

  /**
    - Selector: itemTitles
  */
  @objc var itemTitles: [String] { @objc get }

  /**
    - Selector: lastItem
  */
  @objc var lastItem: NSMenuItem? { @objc get }

  /**
    - Selector: numberOfItems
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - Selector: preferredEdge
  */
  @objc var preferredEdge: NSRectEdge { @objc get @objc (setPreferredEdge:) set }

  /**
    - Selector: pullsDown
  */
  @objc var pullsDown: Bool { @objc get @objc (setPullsDown:) set }

  /**
    - Selector: selectedItem
  */
  @objc var selectedItem: NSMenuItem? { @objc get }

  /**
    - Selector: titleOfSelectedItem
  */
  @objc var titleOfSelectedItem: String? { @objc get }
}

@objc protocol PopUpButtonExports: JSExport, NSButtonExports {
  // Static Methods
}

@objc(PopUpButton) public class PopUpButton: NSPopUpButton, PopUpButtonExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSPopUpButton: NSPopUpButtonExports {
}
