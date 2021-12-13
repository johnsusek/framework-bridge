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
    - Selector: NSRuleEditor
  */

@objc(NSRuleEditor) protocol NSRuleEditorExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: addRow:
  */
  @objc func addRow(_ p0: Any?)

  /**
    - Selector: criteriaForRow:
  */
  @objc (criteriaForRow:) func criteria(forRow: Int) -> [Any]

  /**
    - Selector: displayValuesForRow:
  */
  @objc (displayValuesForRow:) func displayValues(forRow: Int) -> [Any]

  /**
    - Selector: insertRowAtIndex:withType:asSubrowOfRow:animate:
  */
  @objc (insertRowAtIndex:withType:asSubrowOfRow:animate:) func insertRow(at: Int, with: NSRuleEditor.RowType, asSubrowOfRow: Int, animate: Bool)

  /**
    - Selector: parentRowForRow:
  */
  @objc (parentRowForRow:) func parentRow(forRow: Int) -> Int

  /**
    - Selector: predicateForRow:
  */
  @objc (predicateForRow:) func predicate(forRow: Int) -> NSPredicate?

  /**
    - Selector: reloadCriteria
  */
  @objc func reloadCriteria()

  /**
    - Selector: reloadPredicate
  */
  @objc func reloadPredicate()

  /**
    - Selector: removeRowAtIndex:
  */
  @objc (removeRowAtIndex:) func removeRow(at: Int)

  /**
    - Selector: removeRowsAtIndexes:includeSubrows:
  */
  @objc (removeRowsAtIndexes:includeSubrows:) func removeRows(at: IndexSet, includeSubrows: Bool)

  /**
    - Selector: rowForDisplayValue:
  */
  @objc (rowForDisplayValue:) func row(forDisplayValue: Any) -> Int

  /**
    - Selector: rowTypeForRow:
  */
  @objc (rowTypeForRow:) func rowType(forRow: Int) -> NSRuleEditor.RowType

  /**
    - Selector: selectRowIndexes:byExtendingSelection:
  */
  @objc func selectRowIndexes(_ p0: IndexSet, byExtendingSelection: Bool)

  /**
    - Selector: setCriteria:andDisplayValues:forRowAtIndex:
  */
  @objc (setCriteria:andDisplayValues:forRowAtIndex:) func setCriteria(_ p0: [Any], andDisplayValues: [Any], forRowAt: Int)

  /**
    - Selector: subrowIndexesForRow:
  */
  @objc (subrowIndexesForRow:) func subrowIndexes(forRow: Int) -> IndexSet

  // Own Instance Properties

  /**
    - Selector: canRemoveAllRows
  */
  @objc var canRemoveAllRows: Bool { @objc get @objc (setCanRemoveAllRows:) set }

  /**
    - Selector: criteriaKeyPath
  */
  @objc var criteriaKeyPath: String { @objc get @objc (setCriteriaKeyPath:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSRuleEditorDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displayValuesKeyPath
  */
  @objc var displayValuesKeyPath: String { @objc get @objc (setDisplayValuesKeyPath:) set }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: formattingDictionary
  */
  @objc var formattingDictionary: [String: String]? { @objc get @objc (setFormattingDictionary:) set }

  /**
    - Selector: formattingStringsFilename
  */
  @objc var formattingStringsFilename: String? { @objc get @objc (setFormattingStringsFilename:) set }

  /**
    - Selector: nestingMode
  */
  @objc var nestingMode: NSRuleEditor.NestingMode { @objc get @objc (setNestingMode:) set }

  /**
    - Selector: numberOfRows
  */
  @objc var numberOfRows: Int { @objc get }

  /**
    - Selector: predicate
  */
  @objc var predicate: NSPredicate? { @objc get }

  /**
    - Selector: rowClass
  */
  @objc var rowClass: AnyClass { @objc get @objc (setRowClass:) set }

  /**
    - Selector: rowHeight
  */
  @objc var rowHeight: CGFloat { @objc get @objc (setRowHeight:) set }

  /**
    - Selector: rowTypeKeyPath
  */
  @objc var rowTypeKeyPath: String { @objc get @objc (setRowTypeKeyPath:) set }

  /**
    - Selector: selectedRowIndexes
  */
  @objc var selectedRowIndexes: IndexSet { @objc get }

  /**
    - Selector: subrowsKeyPath
  */
  @objc var subrowsKeyPath: String { @objc get @objc (setSubrowsKeyPath:) set }
}

extension NSRuleEditor: NSRuleEditorExports {
}
