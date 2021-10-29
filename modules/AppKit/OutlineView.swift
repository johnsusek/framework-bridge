import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSOutlineView
    - name: NSOutlineView
    - argLabels: 
  */

@objc(NSOutlineView) protocol NSOutlineViewExports: JSExport, NSTableViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: child
    - name: child:ofItem:
    - argLabels: ofItem
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func child(_: Int, ofItem: Any?) -> Any?

  /**
    - jsName: childIndex
    - name: childIndexForItem:
    - argLabels: forItem
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: childIndex(forItem:)
    - Introduced: 10.11
  */
  @objc (childIndexForItem:) @available(OSX 10.11, *) func childIndex(forItem: Any) -> Int

  /**
    - jsName: collapseItem
    - name: collapseItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func collapseItem(_: Any?)

  /**
    - jsName: collapseItem
    - name: collapseItem:collapseChildren:
    - argLabels: collapseChildren
    - constructorTokens: 
  */
  @objc func collapseItem(_: Any?, collapseChildren: Bool)

  /**
    - jsName: expandItem
    - name: expandItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func expandItem(_: Any?)

  /**
    - jsName: expandItem
    - name: expandItem:expandChildren:
    - argLabels: expandChildren
    - constructorTokens: 
  */
  @objc func expandItem(_: Any?, expandChildren: Bool)

  /**
    - jsName: frameOfOutlineCell
    - name: frameOfOutlineCellAtRow:
    - argLabels: atRow
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: frameOfOutlineCell(atRow:)
    - Introduced: 10.5
  */
  @objc (frameOfOutlineCellAtRow:) @available(OSX 10.5, *) func frameOfOutlineCell(atRow: Int) -> CGRect

  /**
    - jsName: insertItems
    - name: insertItemsAtIndexes:inParent:withAnimation:
    - argLabels: at, inParent, withAnimation
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: insertItems(at:inParent:withAnimation:)
    - Introduced: 10.7
  */
  @objc (insertItemsAtIndexes:inParent:withAnimation:) @available(OSX 10.7, *) func insertItems(at: IndexSet, inParent: Any?, withAnimation: NSTableView.AnimationOptions)

  /**
    - jsName: isExpandable
    - name: isExpandable:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func isExpandable(_: Any?) -> Bool

  /**
    - jsName: isItemExpanded
    - name: isItemExpanded:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func isItemExpanded(_: Any?) -> Bool

  /**
    - jsName: item
    - name: itemAtRow:
    - argLabels: atRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: item(atRow:)
  */
  @objc (itemAtRow:) func item(atRow: Int) -> Any?

  /**
    - jsName: level
    - name: levelForItem:
    - argLabels: forItem
    - constructorTokens: 
    - obsoleted: 3
    - renamed: level(forItem:)
  */
  @objc (levelForItem:) func level(forItem: Any?) -> Int

  /**
    - jsName: level
    - name: levelForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: level(forRow:)
  */
  @objc (levelForRow:) func level(forRow: Int) -> Int

  /**
    - jsName: moveItem
    - name: moveItemAtIndex:inParent:toIndex:inParent:
    - argLabels: at, inParent, to, inParent
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: moveItem(at:inParent:to:inParent:)
    - Introduced: 10.7
  */
  @objc (moveItemAtIndex:inParent:toIndex:inParent:) @available(OSX 10.7, *) func moveItem(at: Int, inParent: Any?, to: Int, inParent: Any?)

  /**
    - jsName: numberOfChildren
    - name: numberOfChildrenOfItem:
    - argLabels: ofItem
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: numberOfChildren(ofItem:)
    - Introduced: 10.10
  */
  @objc (numberOfChildrenOfItem:) @available(OSX 10.10, *) func numberOfChildren(ofItem: Any?) -> Int

  /**
    - jsName: parent
    - name: parentForItem:
    - argLabels: forItem
    - constructorTokens: 
    - obsoleted: 3
    - renamed: parent(forItem:)
  */
  @objc (parentForItem:) func parent(forItem: Any?) -> Any?

  /**
    - jsName: reloadItem
    - name: reloadItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadItem(_: Any?)

  /**
    - jsName: reloadItem
    - name: reloadItem:reloadChildren:
    - argLabels: reloadChildren
    - constructorTokens: 
  */
  @objc func reloadItem(_: Any?, reloadChildren: Bool)

  /**
    - jsName: removeItems
    - name: removeItemsAtIndexes:inParent:withAnimation:
    - argLabels: at, inParent, withAnimation
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: removeItems(at:inParent:withAnimation:)
    - Introduced: 10.7
  */
  @objc (removeItemsAtIndexes:inParent:withAnimation:) @available(OSX 10.7, *) func removeItems(at: IndexSet, inParent: Any?, withAnimation: NSTableView.AnimationOptions)

  /**
    - jsName: row
    - name: rowForItem:
    - argLabels: forItem
    - constructorTokens: 
    - obsoleted: 3
    - renamed: row(forItem:)
  */
  @objc (rowForItem:) func row(forItem: Any?) -> Int

  /**
    - jsName: setDropItem
    - name: setDropItem:dropChildIndex:
    - argLabels: dropChildIndex
    - constructorTokens: 
  */
  @objc func setDropItem(_: Any?, dropChildIndex: Int)

  /**
    - jsName: shouldCollapseAutoExpandedItems
    - name: shouldCollapseAutoExpandedItemsForDeposited:
    - argLabels: forDeposited
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldCollapseAutoExpandedItems(forDeposited:)
  */
  @objc (shouldCollapseAutoExpandedItemsForDeposited:) func shouldCollapseAutoExpandedItems(forDeposited: Bool) -> Bool

  // Own Instance Properties

  /**
    - jsName: autoresizesOutlineColumn
    - name: autoresizesOutlineColumn
    - argLabels: 
  */
  @objc var autoresizesOutlineColumn: Bool { @objc get @objc (setAutoresizesOutlineColumn:) set }

  /**
    - jsName: autosaveExpandedItems
    - name: autosaveExpandedItems
    - argLabels: 
  */
  @objc var autosaveExpandedItems: Bool { @objc get @objc (setAutosaveExpandedItems:) set }

  /**
    - jsName: dataSource
    - name: dataSource
    - argLabels: 
  */
  @objc var dataSource: NSOutlineViewDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSOutlineViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: indentationMarkerFollowsCell
    - name: indentationMarkerFollowsCell
    - argLabels: 
  */
  @objc var indentationMarkerFollowsCell: Bool { @objc get @objc (setIndentationMarkerFollowsCell:) set }

  /**
    - jsName: indentationPerLevel
    - name: indentationPerLevel
    - argLabels: 
  */
  @objc var indentationPerLevel: CGFloat { @objc get @objc (setIndentationPerLevel:) set }

  /**
    - jsName: outlineTableColumn
    - name: outlineTableColumn
    - argLabels: 
  */
  @objc var outlineTableColumn: NSTableColumn? { @objc get @objc (setOutlineTableColumn:) set }

  /**
    - jsName: stronglyReferencesItems
    - name: stronglyReferencesItems
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var stronglyReferencesItems: Bool { @objc get @objc (setStronglyReferencesItems:) set }
}

@objc protocol OutlineViewExports: JSExport, NSTableViewExports {
  // Static Methods
}

@objc(OutlineView) public class OutlineView: NSOutlineView, OutlineViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSOutlineView: NSOutlineViewExports {
}
