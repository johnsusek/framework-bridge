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
    - Selector: NSComboBox
  */

@objc(NSComboBox) protocol NSComboBoxExports: JSExport, NSTextFieldExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

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
  @objc (scrollItemAtIndexToTop:) func scrollItemAtIndexToTop(_: Int)

  /**
    - Selector: scrollItemAtIndexToVisible:
  */
  @objc func scrollItemAtIndexToVisible(_: Int)

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
  @objc var dataSource: NSComboBoxDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSComboBoxDelegate? { @objc get @objc (setDelegate:) set }

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

extension NSComboBox: NSComboBoxExports {
}
