import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionView
    - Introduced: 10.5
  */

@objc(NSCollectionView) protocol NSCollectionViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: deleteItemsAtIndexPaths:
    - Introduced: 10.11
  */
  @objc (deleteItemsAtIndexPaths:) @available(OSX 10.11, *) func deleteItems(at: Set<IndexPath>)

  /**
    - Selector: deleteSections:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func deleteSections(_: IndexSet)

  /**
    - Selector: deselectAll:
  */
  @objc func deselectAll(_: Any?)

  /**
    - Selector: deselectItemsAtIndexPaths:
    - Introduced: 10.11
  */
  @objc (deselectItemsAtIndexPaths:) @available(OSX 10.11, *) func deselectItems(at: Set<IndexPath>)

  /**
    - Selector: draggingImageForItemsAtIndexPaths:withEvent:offset:
    - Introduced: 10.11
  */
  @objc (draggingImageForItemsAtIndexPaths:withEvent:offset:) @available(OSX 10.11, *) func draggingImageForItems(at: Set<IndexPath>, with: NSEvent, offset: NSPointPointer) -> NSImage

  /**
    - Selector: draggingImageForItemsAtIndexes:withEvent:offset:
    - Introduced: 10.6
  */
  @objc (draggingImageForItemsAtIndexes:withEvent:offset:) @available(OSX 10.6, *) func draggingImageForItems(at: IndexSet, with: NSEvent, offset: NSPointPointer) -> NSImage

  /**
    - Selector: frameForItemAtIndex:
    - Introduced: 10.6
  */
  @objc (frameForItemAtIndex:) @available(OSX 10.6, *) func frameForItem(at: Int) -> CGRect

  /**
    - Selector: frameForItemAtIndex:withNumberOfItems:
    - Introduced: 10.7
  */
  @objc (frameForItemAtIndex:withNumberOfItems:) @available(OSX 10.7, *) func frameForItem(at: Int, withNumberOfItems: Int) -> CGRect

  /**
    - Selector: indexPathForItem:
    - Introduced: 10.11
  */
  @objc (indexPathForItem:) @available(OSX 10.11, *) func indexPath(`for`: NSCollectionViewItem) -> IndexPath?

  /**
    - Selector: indexPathForItemAtPoint:
    - Introduced: 10.11
  */
  @objc (indexPathForItemAtPoint:) @available(OSX 10.11, *) func indexPathForItem(at: CGPoint) -> IndexPath?

  /**
    - Selector: indexPathsForVisibleItems
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func indexPathsForVisibleItems() -> Set<IndexPath>

  /**
    - Selector: indexPathsForVisibleSupplementaryElementsOfKind:
    - Introduced: 10.11
  */
  @objc (indexPathsForVisibleSupplementaryElementsOfKind:) @available(OSX 10.11, *) func indexPathsForVisibleSupplementaryElements(ofKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>

  /**
    - Selector: insertItemsAtIndexPaths:
    - Introduced: 10.11
  */
  @objc (insertItemsAtIndexPaths:) @available(OSX 10.11, *) func insertItems(at: Set<IndexPath>)

  /**
    - Selector: insertSections:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func insertSections(_: IndexSet)

  /**
    - Selector: itemAtIndex:
    - Introduced: 10.6
  */
  @objc (itemAtIndex:) @available(OSX 10.6, *) func item(at: Int) -> NSCollectionViewItem?

  /**
    - Selector: itemAtIndexPath:
    - Introduced: 10.11
  */
  @objc (itemAtIndexPath:) @available(OSX 10.11, *) func item(at: IndexPath) -> NSCollectionViewItem?

  /**
    - Selector: layoutAttributesForItemAtIndexPath:
    - Introduced: 10.11
  */
  @objc (layoutAttributesForItemAtIndexPath:) @available(OSX 10.11, *) func layoutAttributesForItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: layoutAttributesForSupplementaryElementOfKind:atIndexPath:
    - Introduced: 10.11
  */
  @objc (layoutAttributesForSupplementaryElementOfKind:atIndexPath:) @available(OSX 10.11, *) func layoutAttributesForSupplementaryElement(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: makeItemWithIdentifier:forIndexPath:
    - Introduced: 10.11
  */
  @objc (makeItemWithIdentifier:forIndexPath:) @available(OSX 10.11, *) func makeItem(withIdentifier: NSUserInterfaceItemIdentifier, `for`: IndexPath) -> NSCollectionViewItem

  /**
    - Selector: makeSupplementaryViewOfKind:withIdentifier:forIndexPath:
    - Introduced: 10.11
  */
  @objc (makeSupplementaryViewOfKind:withIdentifier:forIndexPath:) @available(OSX 10.11, *) func makeSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier, `for`: IndexPath) -> NSView

  /**
    - Selector: moveItemAtIndexPath:toIndexPath:
    - Introduced: 10.11
  */
  @objc (moveItemAtIndexPath:toIndexPath:) @available(OSX 10.11, *) func moveItem(at: IndexPath, to: IndexPath)

  /**
    - Selector: moveSection:toSection:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func moveSection(_: Int, toSection: Int)

  /**
    - Selector: numberOfItemsInSection:
    - Introduced: 10.11
  */
  @objc (numberOfItemsInSection:) @available(OSX 10.11, *) func numberOfItems(inSection: Int) -> Int

  /**
    - Selector: performBatchUpdates:completionHandler:
    - Introduced: 10.11
  */
  // jsvalue @objc @available(OSX 10.11, *) func performBatchUpdates(_: JSValue, completionHandler: JSValue)

  /**
    - Selector: registerClass:forItemWithIdentifier:
    - Introduced: 10.11
  */
  @objc (registerClass:forItemWithIdentifier:) @available(OSX 10.11, *) func register(_: AnyClass?, forItemWithIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: registerClass:forSupplementaryViewOfKind:withIdentifier:
    - Introduced: 10.11
  */
  @objc (registerClass:forSupplementaryViewOfKind:withIdentifier:) @available(OSX 10.11, *) func register(_: AnyClass?, forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: registerNib:forItemWithIdentifier:
    - Introduced: 10.11
  */
  @objc (registerNib:forItemWithIdentifier:) @available(OSX 10.11, *) func register(_: NSNib?, forItemWithIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: registerNib:forSupplementaryViewOfKind:withIdentifier:
    - Introduced: 10.11
  */
  @objc (registerNib:forSupplementaryViewOfKind:withIdentifier:) @available(OSX 10.11, *) func register(_: NSNib?, forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: reloadData
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func reloadData()

  /**
    - Selector: reloadItemsAtIndexPaths:
    - Introduced: 10.11
  */
  @objc (reloadItemsAtIndexPaths:) @available(OSX 10.11, *) func reloadItems(at: Set<IndexPath>)

  /**
    - Selector: reloadSections:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func reloadSections(_: IndexSet)

  /**
    - Selector: scrollToItemsAtIndexPaths:scrollPosition:
    - Introduced: 10.11
  */
  @objc (scrollToItemsAtIndexPaths:scrollPosition:) @available(OSX 10.11, *) func scrollToItems(at: Set<IndexPath>, scrollPosition: NSCollectionView.ScrollPosition)

  /**
    - Selector: selectItemsAtIndexPaths:scrollPosition:
    - Introduced: 10.11
  */
  @objc (selectItemsAtIndexPaths:scrollPosition:) @available(OSX 10.11, *) func selectItems(at: Set<IndexPath>, scrollPosition: NSCollectionView.ScrollPosition)

  /**
    - Selector: setDraggingSourceOperationMask:forLocal:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  /**
    - Selector: supplementaryViewForElementKind:atIndexPath:
    - Introduced: 10.11
  */
  @objc (supplementaryViewForElementKind:atIndexPath:) @available(OSX 10.11, *) func supplementaryView(forElementKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> (NSView & NSCollectionViewElement)?

  /**
    - Selector: toggleSectionCollapse:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func toggleSectionCollapse(_: Any)

  /**
    - Selector: visibleItems
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func visibleItems() -> [NSCollectionViewItem]

  /**
    - Selector: visibleSupplementaryViewsOfKind:
    - Introduced: 10.11
  */
  @objc (visibleSupplementaryViewsOfKind:) @available(OSX 10.11, *) func visibleSupplementaryViews(ofKind: NSCollectionView.SupplementaryElementKind) -> [(NSView & NSCollectionViewElement)]

  // Own Instance Properties

  /**
    - Selector: allowsEmptySelection
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsEmptySelection: Bool { @objc get @objc (setAllowsEmptySelection:) set }

  /**
    - Selector: allowsMultipleSelection
  */
  @objc var allowsMultipleSelection: Bool { @objc get @objc (setAllowsMultipleSelection:) set }

  /**
    - Selector: backgroundColors
  */
  @objc var backgroundColors: [NSColor]! { @objc get @objc (setBackgroundColors:) set }

  /**
    - Selector: backgroundView
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var backgroundView: NSView? { @objc get @objc (setBackgroundView:) set }

  /**
    - Selector: backgroundViewScrollsWithContent
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var backgroundViewScrollsWithContent: Bool { @objc get @objc (setBackgroundViewScrollsWithContent:) set }

  /**
    - Selector: collectionViewLayout
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var collectionViewLayout: NSCollectionViewLayout? { @objc get @objc (setCollectionViewLayout:) set }

  /**
    - Selector: content
  */
  @objc var content: [Any] { @objc get @objc (setContent:) set }

  /**
    - Selector: dataSource
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var dataSource: NSCollectionViewDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSCollectionViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: firstResponder
  */
  @objc var isFirstResponder: Bool { @objc get }

  /**
    - Selector: numberOfSections
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var numberOfSections: Int { @objc get }

  /**
    - Selector: prefetchDataSource
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var prefetchDataSource: NSCollectionViewPrefetching? { @objc get @objc (setPrefetchDataSource:) set }

  /**
    - Selector: selectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - Selector: selectionIndexPaths
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var selectionIndexPaths: Set<IndexPath> { @objc get @objc (setSelectionIndexPaths:) set }

  /**
    - Selector: selectionIndexes
  */
  @objc var selectionIndexes: IndexSet { @objc get @objc (setSelectionIndexes:) set }
}

@objc protocol CollectionViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(CollectionView) public class CollectionView: NSCollectionView, CollectionViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSCollectionView: NSCollectionViewExports {
}
