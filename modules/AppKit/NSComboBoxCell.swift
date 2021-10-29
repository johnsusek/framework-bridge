import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSComboBoxCell
    - name: NSComboBoxCell
    - argLabels: 
  */

@objc(NSComboBoxCell) protocol NSComboBoxCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addItem
    - name: addItemWithObjectValue:
    - argLabels: withObjectValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addItem(withObjectValue:)
  */
  @objc (addItemWithObjectValue:) func addItem(withObjectValue: Any)

  /**
    - jsName: addItems
    - name: addItemsWithObjectValues:
    - argLabels: withObjectValues
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addItems(withObjectValues:)
  */
  @objc (addItemsWithObjectValues:) func addItems(withObjectValues: [Any])

  /**
    - jsName: completedString
    - name: completedString:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func completedString(_: String) -> String?

  /**
    - jsName: deselectItem
    - name: deselectItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: deselectItem(at:)
  */
  @objc (deselectItemAtIndex:) func deselectItem(at: Int)

  /**
    - jsName: indexOfItem
    - name: indexOfItemWithObjectValue:
    - argLabels: withObjectValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfItem(withObjectValue:)
  */
  @objc (indexOfItemWithObjectValue:) func indexOfItem(withObjectValue: Any) -> Int

  /**
    - jsName: insertItem
    - name: insertItemWithObjectValue:atIndex:
    - argLabels: withObjectValue, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertItem(withObjectValue:at:)
  */
  @objc (insertItemWithObjectValue:atIndex:) func insertItem(withObjectValue: Any, at: Int)

  /**
    - jsName: itemObjectValue
    - name: itemObjectValueAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: itemObjectValue(at:)
  */
  @objc (itemObjectValueAtIndex:) func itemObjectValue(at: Int) -> Any

  /**
    - jsName: noteNumberOfItemsChanged
    - name: noteNumberOfItemsChanged
    - argLabels: 
    - constructorTokens: 
  */
  @objc func noteNumberOfItemsChanged()

  /**
    - jsName: reloadData
    - name: reloadData
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadData()

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
    - name: removeItemWithObjectValue:
    - argLabels: withObjectValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeItem(withObjectValue:)
  */
  @objc (removeItemWithObjectValue:) func removeItem(withObjectValue: Any)

  /**
    - jsName: scrollItemAtIndexToTop
    - name: scrollItemAtIndexToTop:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (scrollItemAtIndexToTop:) func scrollItemAtIndexToTop(_: Int)

  /**
    - jsName: scrollItemAtIndexToVisible
    - name: scrollItemAtIndexToVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func scrollItemAtIndexToVisible(_: Int)

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
    - name: selectItemWithObjectValue:
    - argLabels: withObjectValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectItem(withObjectValue:)
  */
  @objc (selectItemWithObjectValue:) func selectItem(withObjectValue: Any?)

  // Own Instance Properties

  /**
    - jsName: isButtonBordered
    - name: buttonBordered
    - argLabels: 
    - obsoleted: 3
    - renamed: isButtonBordered
  */
  @objc var isButtonBordered: Bool { @objc get @objc (setButtonBordered:) set }

  /**
    - jsName: completes
    - name: completes
    - argLabels: 
  */
  @objc var completes: Bool { @objc get @objc (setCompletes:) set }

  /**
    - jsName: dataSource
    - name: dataSource
    - argLabels: 
  */
  @objc var dataSource: NSComboBoxCellDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - jsName: hasVerticalScroller
    - name: hasVerticalScroller
    - argLabels: 
  */
  @objc var hasVerticalScroller: Bool { @objc get @objc (setHasVerticalScroller:) set }

  /**
    - jsName: indexOfSelectedItem
    - name: indexOfSelectedItem
    - argLabels: 
  */
  @objc var indexOfSelectedItem: Int { @objc get }

  /**
    - jsName: intercellSpacing
    - name: intercellSpacing
    - argLabels: 
  */
  @objc var intercellSpacing: CGSize { @objc get @objc (setIntercellSpacing:) set }

  /**
    - jsName: itemHeight
    - name: itemHeight
    - argLabels: 
  */
  @objc var itemHeight: CGFloat { @objc get @objc (setItemHeight:) set }

  /**
    - jsName: numberOfItems
    - name: numberOfItems
    - argLabels: 
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - jsName: numberOfVisibleItems
    - name: numberOfVisibleItems
    - argLabels: 
  */
  @objc var numberOfVisibleItems: Int { @objc get @objc (setNumberOfVisibleItems:) set }

  /**
    - jsName: objectValueOfSelectedItem
    - name: objectValueOfSelectedItem
    - argLabels: 
  */
  @objc var objectValueOfSelectedItem: Any? { @objc get }

  /**
    - jsName: objectValues
    - name: objectValues
    - argLabels: 
  */
  @objc var objectValues: [Any] { @objc get }

  /**
    - jsName: usesDataSource
    - name: usesDataSource
    - argLabels: 
  */
  @objc var usesDataSource: Bool { @objc get @objc (setUsesDataSource:) set }
}

extension NSComboBoxCell: NSComboBoxCellExports {
}
