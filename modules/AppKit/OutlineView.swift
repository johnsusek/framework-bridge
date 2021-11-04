import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSOutlineView
  */

@objc(NSOutlineView) protocol NSOutlineViewExports: JSExport, NSTableViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: child:ofItem:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func child(_: Int, ofItem: Any?) -> Any?

  /**
    - Selector: childIndexForItem:
    - Introduced: 10.11
  */
  @objc (childIndexForItem:) @available(OSX 10.11, *) func childIndex(forItem: Any) -> Int

  /**
    - Selector: collapseItem:
  */
  @objc func collapseItem(_: Any?)

  /**
    - Selector: collapseItem:collapseChildren:
  */
  @objc func collapseItem(_: Any?, collapseChildren: Bool)

  /**
    - Selector: expandItem:
  */
  @objc func expandItem(_: Any?)

  /**
    - Selector: expandItem:expandChildren:
  */
  @objc func expandItem(_: Any?, expandChildren: Bool)

  /**
    - Selector: frameOfOutlineCellAtRow:
    - Introduced: 10.5
  */
  @objc (frameOfOutlineCellAtRow:) @available(OSX 10.5, *) func frameOfOutlineCell(atRow: Int) -> CGRect

  /**
    - Selector: insertItemsAtIndexes:inParent:withAnimation:
    - Introduced: 10.7
  */
  @objc (insertItemsAtIndexes:inParent:withAnimation:) @available(OSX 10.7, *) func insertItems(at: IndexSet, inParent: Any?, withAnimation: NSTableView.AnimationOptions)

  /**
    - Selector: isExpandable:
  */
  @objc func isExpandable(_: Any?) -> Bool

  /**
    - Selector: isItemExpanded:
  */
  @objc func isItemExpanded(_: Any?) -> Bool

  /**
    - Selector: itemAtRow:
  */
  @objc (itemAtRow:) func item(atRow: Int) -> Any?

  /**
    - Selector: levelForItem:
  */
  @objc (levelForItem:) func level(forItem: Any?) -> Int

  /**
    - Selector: levelForRow:
  */
  @objc (levelForRow:) func level(forRow: Int) -> Int

  /**
    - Selector: moveItemAtIndex:inParent:toIndex:inParent:
    - Introduced: 10.7
  */
  @objc (moveItemAtIndex:inParent:toIndex:inParent:) @available(OSX 10.7, *) func moveItem(at: Int, inParent: Any?, to: Int, inParent: Any?)

  /**
    - Selector: numberOfChildrenOfItem:
    - Introduced: 10.10
  */
  @objc (numberOfChildrenOfItem:) @available(OSX 10.10, *) func numberOfChildren(ofItem: Any?) -> Int

  /**
    - Selector: parentForItem:
  */
  @objc (parentForItem:) func parent(forItem: Any?) -> Any?

  /**
    - Selector: reloadItem:
  */
  @objc func reloadItem(_: Any?)

  /**
    - Selector: reloadItem:reloadChildren:
  */
  @objc func reloadItem(_: Any?, reloadChildren: Bool)

  /**
    - Selector: removeItemsAtIndexes:inParent:withAnimation:
    - Introduced: 10.7
  */
  @objc (removeItemsAtIndexes:inParent:withAnimation:) @available(OSX 10.7, *) func removeItems(at: IndexSet, inParent: Any?, withAnimation: NSTableView.AnimationOptions)

  /**
    - Selector: rowForItem:
  */
  @objc (rowForItem:) func row(forItem: Any?) -> Int

  /**
    - Selector: setDropItem:dropChildIndex:
  */
  @objc func setDropItem(_: Any?, dropChildIndex: Int)

  /**
    - Selector: shouldCollapseAutoExpandedItemsForDeposited:
  */
  @objc (shouldCollapseAutoExpandedItemsForDeposited:) func shouldCollapseAutoExpandedItems(forDeposited: Bool) -> Bool

  // Own Instance Properties

  /**
    - Selector: autoresizesOutlineColumn
  */
  @objc var autoresizesOutlineColumn: Bool { @objc get @objc (setAutoresizesOutlineColumn:) set }

  /**
    - Selector: autosaveExpandedItems
  */
  @objc var autosaveExpandedItems: Bool { @objc get @objc (setAutosaveExpandedItems:) set }

  /**
    - Selector: dataSource
  */
  @objc var dataSource: NSOutlineViewDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSOutlineViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: indentationMarkerFollowsCell
  */
  @objc var indentationMarkerFollowsCell: Bool { @objc get @objc (setIndentationMarkerFollowsCell:) set }

  /**
    - Selector: indentationPerLevel
  */
  @objc var indentationPerLevel: CGFloat { @objc get @objc (setIndentationPerLevel:) set }

  /**
    - Selector: outlineTableColumn
  */
  @objc var outlineTableColumn: NSTableColumn? { @objc get @objc (setOutlineTableColumn:) set }

  /**
    - Selector: stronglyReferencesItems
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
