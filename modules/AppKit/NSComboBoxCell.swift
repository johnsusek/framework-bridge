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
    - Selector: NSComboBoxCell
  */

@objc(NSComboBoxCell) protocol NSComboBoxCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addItemWithObjectValue:
  */
  @objc (addItemWithObjectValue:) func addItem(withObjectValue: Any)

  /**
    - Selector: addItemsWithObjectValues:
  */
  @objc (addItemsWithObjectValues:) func addItems(withObjectValues: [Any])

  /**
    - Selector: completedString:
  */
  @objc func completedString(_ p0: String) -> String?

  /**
    - Selector: deselectItemAtIndex:
  */
  @objc (deselectItemAtIndex:) func deselectItem(at: Int)

  /**
    - Selector: indexOfItemWithObjectValue:
  */
  @objc (indexOfItemWithObjectValue:) func indexOfItem(withObjectValue: Any) -> Int

  /**
    - Selector: insertItemWithObjectValue:atIndex:
  */
  @objc (insertItemWithObjectValue:atIndex:) func insertItem(withObjectValue: Any, at: Int)

  /**
    - Selector: itemObjectValueAtIndex:
  */
  @objc (itemObjectValueAtIndex:) func itemObjectValue(at: Int) -> Any

  /**
    - Selector: noteNumberOfItemsChanged
  */
  @objc func noteNumberOfItemsChanged()

  /**
    - Selector: reloadData
  */
  @objc func reloadData()

  /**
    - Selector: removeAllItems
  */
  @objc func removeAllItems()

  /**
    - Selector: removeItemAtIndex:
  */
  @objc (removeItemAtIndex:) func removeItem(at: Int)

  /**
    - Selector: removeItemWithObjectValue:
  */
  @objc (removeItemWithObjectValue:) func removeItem(withObjectValue: Any)

  /**
    - Selector: scrollItemAtIndexToTop:
  */
  @objc (scrollItemAtIndexToTop:) func scrollItemAtIndexToTop(_ p0: Int)

  /**
    - Selector: scrollItemAtIndexToVisible:
  */
  @objc func scrollItemAtIndexToVisible(_ p0: Int)

  /**
    - Selector: selectItemAtIndex:
  */
  @objc (selectItemAtIndex:) func selectItem(at: Int)

  /**
    - Selector: selectItemWithObjectValue:
  */
  @objc (selectItemWithObjectValue:) func selectItem(withObjectValue: Any?)

  // Own Instance Properties

  /**
    - Selector: buttonBordered
  */
  @objc var isButtonBordered: Bool { @objc get @objc (setButtonBordered:) set }

  /**
    - Selector: completes
  */
  @objc var completes: Bool { @objc get @objc (setCompletes:) set }

  /**
    - Selector: dataSource
  */
  @objc var dataSource: NSComboBoxCellDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - Selector: hasVerticalScroller
  */
  @objc var hasVerticalScroller: Bool { @objc get @objc (setHasVerticalScroller:) set }

  /**
    - Selector: indexOfSelectedItem
  */
  @objc var indexOfSelectedItem: Int { @objc get }

  /**
    - Selector: intercellSpacing
  */
  @objc var intercellSpacing: CGSize { @objc get @objc (setIntercellSpacing:) set }

  /**
    - Selector: itemHeight
  */
  @objc var itemHeight: CGFloat { @objc get @objc (setItemHeight:) set }

  /**
    - Selector: numberOfItems
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - Selector: numberOfVisibleItems
  */
  @objc var numberOfVisibleItems: Int { @objc get @objc (setNumberOfVisibleItems:) set }

  /**
    - Selector: objectValueOfSelectedItem
  */
  @objc var objectValueOfSelectedItem: Any? { @objc get }

  /**
    - Selector: objectValues
  */
  @objc var objectValues: [Any] { @objc get }

  /**
    - Selector: usesDataSource
  */
  @objc var usesDataSource: Bool { @objc get @objc (setUsesDataSource:) set }
}

extension NSComboBoxCell: NSComboBoxCellExports {
}
