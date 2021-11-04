import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPopUpButtonCell
  */

@objc(NSPopUpButtonCell) protocol NSPopUpButtonCellExports: JSExport, NSMenuItemCellExports {
  // Static Methods

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
    - Selector: attachPopUpWithFrame:inView:
  */
  @objc (attachPopUpWithFrame:inView:) func attachPopUp(withFrame: CGRect, in: NSView)

  /**
    - Selector: dismissPopUp
  */
  @objc func dismissPopUp()

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
    - Selector: initTextCell:pullsDown:
  */
  @objc static func createTextCell(_: String, pullsDown: Bool) -> Self

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
    - Selector: performClickWithFrame:inView:
  */
  @objc (performClickWithFrame:inView:) func performClick(withFrame: CGRect, in: NSView)

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
  @objc func setTitle(_: String?)

  /**
    - Selector: synchronizeTitleAndSelectedItem
  */
  @objc func synchronizeTitleAndSelectedItem()

  // Own Instance Properties

  /**
    - Selector: altersStateOfSelectedItem
  */
  @objc var altersStateOfSelectedItem: Bool { @objc get @objc (setAltersStateOfSelectedItem:) set }

  /**
    - Selector: arrowPosition
  */
  @objc var arrowPosition: NSPopUpButton.ArrowPosition { @objc get @objc (setArrowPosition:) set }

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

  /**
    - Selector: usesItemFromMenu
  */
  @objc var usesItemFromMenu: Bool { @objc get @objc (setUsesItemFromMenu:) set }
}

extension NSPopUpButtonCell: NSPopUpButtonCellExports {
  @objc public static func createTextCell(_ textCell: String, pullsDown: Bool) -> Self {
    return self.init(textCell: textCell, pullsDown: pullsDown)
  }

}
