import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSRuleEditor
    - name: NSRuleEditor
    - argLabels: 
  */

@objc(NSRuleEditor) protocol NSRuleEditorExports: JSExport, NSControlExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addRow
    - name: addRow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addRow(_: Any?)

  /**
    - jsName: criteria
    - name: criteriaForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: criteria(forRow:)
  */
  @objc (criteriaForRow:) func criteria(forRow: Int) -> [Any]

  /**
    - jsName: displayValues
    - name: displayValuesForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayValues(forRow:)
  */
  @objc (displayValuesForRow:) func displayValues(forRow: Int) -> [Any]

  /**
    - jsName: insertRow
    - name: insertRowAtIndex:withType:asSubrowOfRow:animate:
    - argLabels: at, with, asSubrowOfRow, animate
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertRow(at:with:asSubrowOfRow:animate:)
  */
  @objc (insertRowAtIndex:withType:asSubrowOfRow:animate:) func insertRow(at: Int, with: NSRuleEditor.RowType, asSubrowOfRow: Int, animate: Bool)

  /**
    - jsName: parentRow
    - name: parentRowForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: parentRow(forRow:)
  */
  @objc (parentRowForRow:) func parentRow(forRow: Int) -> Int

  /**
    - jsName: predicate
    - name: predicateForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: predicate(forRow:)
  */
  @objc (predicateForRow:) func predicate(forRow: Int) -> NSPredicate?

  /**
    - jsName: reloadCriteria
    - name: reloadCriteria
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadCriteria()

  /**
    - jsName: reloadPredicate
    - name: reloadPredicate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadPredicate()

  /**
    - jsName: removeRow
    - name: removeRowAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeRow(at:)
  */
  @objc (removeRowAtIndex:) func removeRow(at: Int)

  /**
    - jsName: removeRows
    - name: removeRowsAtIndexes:includeSubrows:
    - argLabels: at, includeSubrows
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeRows(at:includeSubrows:)
  */
  @objc (removeRowsAtIndexes:includeSubrows:) func removeRows(at: IndexSet, includeSubrows: Bool)

  /**
    - jsName: row
    - name: rowForDisplayValue:
    - argLabels: forDisplayValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: row(forDisplayValue:)
  */
  @objc (rowForDisplayValue:) func row(forDisplayValue: Any) -> Int

  /**
    - jsName: rowType
    - name: rowTypeForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rowType(forRow:)
  */
  @objc (rowTypeForRow:) func rowType(forRow: Int) -> NSRuleEditor.RowType

  /**
    - jsName: selectRowIndexes
    - name: selectRowIndexes:byExtendingSelection:
    - argLabels: byExtendingSelection
    - constructorTokens: 
  */
  @objc func selectRowIndexes(_: IndexSet, byExtendingSelection: Bool)

  /**
    - jsName: setCriteria
    - name: setCriteria:andDisplayValues:forRowAtIndex:
    - argLabels: _, andDisplayValues, forRowAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setCriteria(_:andDisplayValues:forRowAt:)
  */
  @objc (setCriteria:andDisplayValues:forRowAtIndex:) func setCriteria(_: [Any], andDisplayValues: [Any], forRowAt: Int)

  /**
    - jsName: subrowIndexes
    - name: subrowIndexesForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: subrowIndexes(forRow:)
  */
  @objc (subrowIndexesForRow:) func subrowIndexes(forRow: Int) -> IndexSet

  // Own Instance Properties

  /**
    - jsName: canRemoveAllRows
    - name: canRemoveAllRows
    - argLabels: 
  */
  @objc var canRemoveAllRows: Bool { @objc get @objc (setCanRemoveAllRows:) set }

  /**
    - jsName: criteriaKeyPath
    - name: criteriaKeyPath
    - argLabels: 
  */
  @objc var criteriaKeyPath: String { @objc get @objc (setCriteriaKeyPath:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSRuleEditorDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: displayValuesKeyPath
    - name: displayValuesKeyPath
    - argLabels: 
  */
  @objc var displayValuesKeyPath: String { @objc get @objc (setDisplayValuesKeyPath:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: formattingDictionary
    - name: formattingDictionary
    - argLabels: 
  */
  @objc var formattingDictionary: [String: String]? { @objc get @objc (setFormattingDictionary:) set }

  /**
    - jsName: formattingStringsFilename
    - name: formattingStringsFilename
    - argLabels: 
  */
  @objc var formattingStringsFilename: String? { @objc get @objc (setFormattingStringsFilename:) set }

  /**
    - jsName: nestingMode
    - name: nestingMode
    - argLabels: 
  */
  @objc var nestingMode: NSRuleEditor.NestingMode { @objc get @objc (setNestingMode:) set }

  /**
    - jsName: numberOfRows
    - name: numberOfRows
    - argLabels: 
  */
  @objc var numberOfRows: Int { @objc get }

  /**
    - jsName: predicate
    - name: predicate
    - argLabels: 
  */
  @objc var predicate: NSPredicate? { @objc get }

  /**
    - jsName: rowClass
    - name: rowClass
    - argLabels: 
  */
  @objc var rowClass: AnyClass { @objc get @objc (setRowClass:) set }

  /**
    - jsName: rowHeight
    - name: rowHeight
    - argLabels: 
  */
  @objc var rowHeight: CGFloat { @objc get @objc (setRowHeight:) set }

  /**
    - jsName: rowTypeKeyPath
    - name: rowTypeKeyPath
    - argLabels: 
  */
  @objc var rowTypeKeyPath: String { @objc get @objc (setRowTypeKeyPath:) set }

  /**
    - jsName: selectedRowIndexes
    - name: selectedRowIndexes
    - argLabels: 
  */
  @objc var selectedRowIndexes: IndexSet { @objc get }

  /**
    - jsName: subrowsKeyPath
    - name: subrowsKeyPath
    - argLabels: 
  */
  @objc var subrowsKeyPath: String { @objc get @objc (setSubrowsKeyPath:) set }
}

@objc protocol RuleEditorExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(RuleEditor) public class RuleEditor: NSRuleEditor, RuleEditorExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSRuleEditor: NSRuleEditorExports {
}
