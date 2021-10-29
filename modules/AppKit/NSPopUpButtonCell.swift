import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPopUpButtonCell
    - name: NSPopUpButtonCell
    - argLabels: 
  */

@objc(NSPopUpButtonCell) protocol NSPopUpButtonCellExports: JSExport, NSMenuItemCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addItem
    - name: addItemWithTitle:
    - argLabels: withTitle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addItem(withTitle:)
  */
  @objc (addItemWithTitle:) func addItem(withTitle: String)

  /**
    - jsName: addItems
    - name: addItemsWithTitles:
    - argLabels: withTitles
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addItems(withTitles:)
  */
  @objc (addItemsWithTitles:) func addItems(withTitles: [String])

  /**
    - jsName: attachPopUp
    - name: attachPopUpWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attachPopUp(withFrame:in:)
  */
  @objc (attachPopUpWithFrame:inView:) func attachPopUp(withFrame: CGRect, in: NSView)

  /**
    - jsName: dismissPopUp
    - name: dismissPopUp
    - argLabels: 
    - constructorTokens: 
  */
  @objc func dismissPopUp()

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
    - jsName: createTextCell
    - name: initTextCell:pullsDown:
    - argLabels: pullsDown
    - constructorTokens: textCell, pullsDown
  */
  @objc static func createTextCell(_: String, pullsDown: Bool) -> Self

  /**
    - jsName: insertItem
    - name: insertItemWithTitle:atIndex:
    - argLabels: withTitle, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertItem(withTitle:at:)
  */
  @objc (insertItemWithTitle:atIndex:) func insertItem(withTitle: String, at: Int)

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
    - jsName: itemTitle
    - name: itemTitleAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: itemTitle(at:)
  */
  @objc (itemTitleAtIndex:) func itemTitle(at: Int) -> String

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
    - jsName: performClick
    - name: performClickWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: performClick(withFrame:in:)
  */
  @objc (performClickWithFrame:inView:) func performClick(withFrame: CGRect, in: NSView)

  /**
    - jsName: removeAllItems
    - name: removeAllItems
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeAllItems()

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
    - jsName: removeItem
    - name: removeItemWithTitle:
    - argLabels: withTitle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeItem(withTitle:)
  */
  @objc (removeItemWithTitle:) func removeItem(withTitle: String)

  /**
    - jsName: select
    - name: selectItem:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: select(_:)
  */
  @objc (selectItem:) func select(_: NSMenuItem?)

  /**
    - jsName: selectItem
    - name: selectItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectItem(at:)
  */
  @objc (selectItemAtIndex:) func selectItem(at: Int)

  /**
    - jsName: selectItem
    - name: selectItemWithTag:
    - argLabels: withTag
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectItem(withTag:)
  */
  @objc (selectItemWithTag:) func selectItem(withTag: Int) -> Bool

  /**
    - jsName: selectItem
    - name: selectItemWithTitle:
    - argLabels: withTitle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectItem(withTitle:)
  */
  @objc (selectItemWithTitle:) func selectItem(withTitle: String)

  /**
    - jsName: setTitle
    - name: setTitle:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setTitle(_: String?)

  /**
    - jsName: synchronizeTitleAndSelectedItem
    - name: synchronizeTitleAndSelectedItem
    - argLabels: 
    - constructorTokens: 
  */
  @objc func synchronizeTitleAndSelectedItem()

  // Own Instance Properties

  /**
    - jsName: altersStateOfSelectedItem
    - name: altersStateOfSelectedItem
    - argLabels: 
  */
  @objc var altersStateOfSelectedItem: Bool { @objc get @objc (setAltersStateOfSelectedItem:) set }

  /**
    - jsName: arrowPosition
    - name: arrowPosition
    - argLabels: 
  */
  @objc var arrowPosition: NSPopUpButton.ArrowPosition { @objc get @objc (setArrowPosition:) set }

  /**
    - jsName: autoenablesItems
    - name: autoenablesItems
    - argLabels: 
  */
  @objc var autoenablesItems: Bool { @objc get @objc (setAutoenablesItems:) set }

  /**
    - jsName: indexOfSelectedItem
    - name: indexOfSelectedItem
    - argLabels: 
  */
  @objc var indexOfSelectedItem: Int { @objc get }

  /**
    - jsName: itemArray
    - name: itemArray
    - argLabels: 
  */
  @objc var itemArray: [NSMenuItem] { @objc get }

  /**
    - jsName: itemTitles
    - name: itemTitles
    - argLabels: 
  */
  @objc var itemTitles: [String] { @objc get }

  /**
    - jsName: lastItem
    - name: lastItem
    - argLabels: 
  */
  @objc var lastItem: NSMenuItem? { @objc get }

  /**
    - jsName: numberOfItems
    - name: numberOfItems
    - argLabels: 
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - jsName: preferredEdge
    - name: preferredEdge
    - argLabels: 
  */
  @objc var preferredEdge: NSRectEdge { @objc get @objc (setPreferredEdge:) set }

  /**
    - jsName: pullsDown
    - name: pullsDown
    - argLabels: 
  */
  @objc var pullsDown: Bool { @objc get @objc (setPullsDown:) set }

  /**
    - jsName: selectedItem
    - name: selectedItem
    - argLabels: 
  */
  @objc var selectedItem: NSMenuItem? { @objc get }

  /**
    - jsName: titleOfSelectedItem
    - name: titleOfSelectedItem
    - argLabels: 
  */
  @objc var titleOfSelectedItem: String? { @objc get }

  /**
    - jsName: usesItemFromMenu
    - name: usesItemFromMenu
    - argLabels: 
  */
  @objc var usesItemFromMenu: Bool { @objc get @objc (setUsesItemFromMenu:) set }
}

extension NSPopUpButtonCell: NSPopUpButtonCellExports {
  @objc public static func createTextCell(_ textCell: String, pullsDown: Bool) -> Self {
    return self.init(textCell: textCell, pullsDown: pullsDown)
  }

}
