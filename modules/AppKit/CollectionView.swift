import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionView
    - name: NSCollectionView
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSCollectionView) protocol NSCollectionViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: deleteItems
    - name: deleteItemsAtIndexPaths:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: deleteItems(at:)
    - Introduced: 10.11
  */
  @objc (deleteItemsAtIndexPaths:) @available(OSX 10.11, *) func deleteItems(at: Set<IndexPath>)

  /**
    - jsName: deleteSections
    - name: deleteSections:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func deleteSections(_: IndexSet)

  /**
    - jsName: deselectAll
    - name: deselectAll:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deselectAll(_: Any?)

  /**
    - jsName: deselectItems
    - name: deselectItemsAtIndexPaths:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: deselectItems(at:)
    - Introduced: 10.11
  */
  @objc (deselectItemsAtIndexPaths:) @available(OSX 10.11, *) func deselectItems(at: Set<IndexPath>)

  /**
    - jsName: draggingImageForItems
    - name: draggingImageForItemsAtIndexPaths:withEvent:offset:
    - argLabels: at, with, offset
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: draggingImageForItems(at:with:offset:)
    - Introduced: 10.11
  */
  @objc (draggingImageForItemsAtIndexPaths:withEvent:offset:) @available(OSX 10.11, *) func draggingImageForItems(at: Set<IndexPath>, with: NSEvent, offset: NSPointPointer) -> NSImage

  /**
    - jsName: draggingImageForItems
    - name: draggingImageForItemsAtIndexes:withEvent:offset:
    - argLabels: at, with, offset
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: draggingImageForItems(at:with:offset:)
    - Introduced: 10.6
  */
  @objc (draggingImageForItemsAtIndexes:withEvent:offset:) @available(OSX 10.6, *) func draggingImageForItems(at: IndexSet, with: NSEvent, offset: NSPointPointer) -> NSImage

  /**
    - jsName: frameForItem
    - name: frameForItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: frameForItem(at:)
    - Introduced: 10.6
  */
  @objc (frameForItemAtIndex:) @available(OSX 10.6, *) func frameForItem(at: Int) -> CGRect

  /**
    - jsName: frameForItem
    - name: frameForItemAtIndex:withNumberOfItems:
    - argLabels: at, withNumberOfItems
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: frameForItem(at:withNumberOfItems:)
    - Introduced: 10.7
  */
  @objc (frameForItemAtIndex:withNumberOfItems:) @available(OSX 10.7, *) func frameForItem(at: Int, withNumberOfItems: Int) -> CGRect

  /**
    - jsName: indexPath
    - name: indexPathForItem:
    - argLabels: for
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: indexPath(for:)
    - Introduced: 10.11
  */
  @objc (indexPathForItem:) @available(OSX 10.11, *) func indexPath(`for`: NSCollectionViewItem) -> IndexPath?

  /**
    - jsName: indexPathForItem
    - name: indexPathForItemAtPoint:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: indexPathForItem(at:)
    - Introduced: 10.11
  */
  @objc (indexPathForItemAtPoint:) @available(OSX 10.11, *) func indexPathForItem(at: CGPoint) -> IndexPath?

  /**
    - jsName: indexPathsForVisibleItems
    - name: indexPathsForVisibleItems
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func indexPathsForVisibleItems() -> Set<IndexPath>

  /**
    - jsName: indexPathsForVisibleSupplementaryElements
    - name: indexPathsForVisibleSupplementaryElementsOfKind:
    - argLabels: ofKind
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: indexPathsForVisibleSupplementaryElements(ofKind:)
    - Introduced: 10.11
  */
  @objc (indexPathsForVisibleSupplementaryElementsOfKind:) @available(OSX 10.11, *) func indexPathsForVisibleSupplementaryElements(ofKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>

  /**
    - jsName: insertItems
    - name: insertItemsAtIndexPaths:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: insertItems(at:)
    - Introduced: 10.11
  */
  @objc (insertItemsAtIndexPaths:) @available(OSX 10.11, *) func insertItems(at: Set<IndexPath>)

  /**
    - jsName: insertSections
    - name: insertSections:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func insertSections(_: IndexSet)

  /**
    - jsName: item
    - name: itemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: item(at:)
    - Introduced: 10.6
  */
  @objc (itemAtIndex:) @available(OSX 10.6, *) func item(at: Int) -> NSCollectionViewItem?

  /**
    - jsName: item
    - name: itemAtIndexPath:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: item(at:)
    - Introduced: 10.11
  */
  @objc (itemAtIndexPath:) @available(OSX 10.11, *) func item(at: IndexPath) -> NSCollectionViewItem?

  /**
    - jsName: layoutAttributesForItem
    - name: layoutAttributesForItemAtIndexPath:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: layoutAttributesForItem(at:)
    - Introduced: 10.11
  */
  @objc (layoutAttributesForItemAtIndexPath:) @available(OSX 10.11, *) func layoutAttributesForItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: layoutAttributesForSupplementaryElement
    - name: layoutAttributesForSupplementaryElementOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: layoutAttributesForSupplementaryElement(ofKind:at:)
    - Introduced: 10.11
  */
  @objc (layoutAttributesForSupplementaryElementOfKind:atIndexPath:) @available(OSX 10.11, *) func layoutAttributesForSupplementaryElement(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: makeItem
    - name: makeItemWithIdentifier:forIndexPath:
    - argLabels: withIdentifier, for
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: makeItem(withIdentifier:for:)
    - Introduced: 10.11
  */
  @objc (makeItemWithIdentifier:forIndexPath:) @available(OSX 10.11, *) func makeItem(withIdentifier: NSUserInterfaceItemIdentifier, `for`: IndexPath) -> NSCollectionViewItem

  /**
    - jsName: makeSupplementaryView
    - name: makeSupplementaryViewOfKind:withIdentifier:forIndexPath:
    - argLabels: ofKind, withIdentifier, for
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: makeSupplementaryView(ofKind:withIdentifier:for:)
    - Introduced: 10.11
  */
  @objc (makeSupplementaryViewOfKind:withIdentifier:forIndexPath:) @available(OSX 10.11, *) func makeSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier, `for`: IndexPath) -> NSView

  /**
    - jsName: moveItem
    - name: moveItemAtIndexPath:toIndexPath:
    - argLabels: at, to
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: moveItem(at:to:)
    - Introduced: 10.11
  */
  @objc (moveItemAtIndexPath:toIndexPath:) @available(OSX 10.11, *) func moveItem(at: IndexPath, to: IndexPath)

  /**
    - jsName: moveSection
    - name: moveSection:toSection:
    - argLabels: toSection
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func moveSection(_: Int, toSection: Int)

  /**
    - jsName: numberOfItems
    - name: numberOfItemsInSection:
    - argLabels: inSection
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: numberOfItems(inSection:)
    - Introduced: 10.11
  */
  @objc (numberOfItemsInSection:) @available(OSX 10.11, *) func numberOfItems(inSection: Int) -> Int

  /**
    - jsName: performBatchUpdates
    - name: performBatchUpdates:completionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  // jsvalue - @objc @available(OSX 10.11, *) func performBatchUpdates(_: JSValue, completionHandler: JSValue)

  /**
    - jsName: register
    - name: registerClass:forItemWithIdentifier:
    - argLabels: _, forItemWithIdentifier
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: register(_:forItemWithIdentifier:)
    - Introduced: 10.11
  */
  @objc (registerClass:forItemWithIdentifier:) @available(OSX 10.11, *) func register(_: AnyClass?, forItemWithIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: register
    - name: registerClass:forSupplementaryViewOfKind:withIdentifier:
    - argLabels: _, forSupplementaryViewOfKind, withIdentifier
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: register(_:forSupplementaryViewOfKind:withIdentifier:)
    - Introduced: 10.11
  */
  @objc (registerClass:forSupplementaryViewOfKind:withIdentifier:) @available(OSX 10.11, *) func register(_: AnyClass?, forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: register
    - name: registerNib:forItemWithIdentifier:
    - argLabels: _, forItemWithIdentifier
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: register(_:forItemWithIdentifier:)
    - Introduced: 10.11
  */
  @objc (registerNib:forItemWithIdentifier:) @available(OSX 10.11, *) func register(_: NSNib?, forItemWithIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: register
    - name: registerNib:forSupplementaryViewOfKind:withIdentifier:
    - argLabels: _, forSupplementaryViewOfKind, withIdentifier
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: register(_:forSupplementaryViewOfKind:withIdentifier:)
    - Introduced: 10.11
  */
  @objc (registerNib:forSupplementaryViewOfKind:withIdentifier:) @available(OSX 10.11, *) func register(_: NSNib?, forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: reloadData
    - name: reloadData
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func reloadData()

  /**
    - jsName: reloadItems
    - name: reloadItemsAtIndexPaths:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: reloadItems(at:)
    - Introduced: 10.11
  */
  @objc (reloadItemsAtIndexPaths:) @available(OSX 10.11, *) func reloadItems(at: Set<IndexPath>)

  /**
    - jsName: reloadSections
    - name: reloadSections:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func reloadSections(_: IndexSet)

  /**
    - jsName: scrollToItems
    - name: scrollToItemsAtIndexPaths:scrollPosition:
    - argLabels: at, scrollPosition
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: scrollToItems(at:scrollPosition:)
    - Introduced: 10.11
  */
  @objc (scrollToItemsAtIndexPaths:scrollPosition:) @available(OSX 10.11, *) func scrollToItems(at: Set<IndexPath>, scrollPosition: NSCollectionView.ScrollPosition)

  /**
    - jsName: selectItems
    - name: selectItemsAtIndexPaths:scrollPosition:
    - argLabels: at, scrollPosition
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: selectItems(at:scrollPosition:)
    - Introduced: 10.11
  */
  @objc (selectItemsAtIndexPaths:scrollPosition:) @available(OSX 10.11, *) func selectItems(at: Set<IndexPath>, scrollPosition: NSCollectionView.ScrollPosition)

  /**
    - jsName: setDraggingSourceOperationMask
    - name: setDraggingSourceOperationMask:forLocal:
    - argLabels: forLocal
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  /**
    - jsName: supplementaryView
    - name: supplementaryViewForElementKind:atIndexPath:
    - argLabels: forElementKind, at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: supplementaryView(forElementKind:at:)
    - Introduced: 10.11
  */
  @objc (supplementaryViewForElementKind:atIndexPath:) @available(OSX 10.11, *) func supplementaryView(forElementKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> (NSView & NSCollectionViewElement)?

  /**
    - jsName: toggleSectionCollapse
    - name: toggleSectionCollapse:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func toggleSectionCollapse(_: Any)

  /**
    - jsName: visibleItems
    - name: visibleItems
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func visibleItems() -> [NSCollectionViewItem]

  /**
    - jsName: visibleSupplementaryViews
    - name: visibleSupplementaryViewsOfKind:
    - argLabels: ofKind
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: visibleSupplementaryViews(ofKind:)
    - Introduced: 10.11
  */
  @objc (visibleSupplementaryViewsOfKind:) @available(OSX 10.11, *) func visibleSupplementaryViews(ofKind: NSCollectionView.SupplementaryElementKind) -> [(NSView & NSCollectionViewElement)]

  // Own Instance Properties

  /**
    - jsName: allowsEmptySelection
    - name: allowsEmptySelection
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsEmptySelection: Bool { @objc get @objc (setAllowsEmptySelection:) set }

  /**
    - jsName: allowsMultipleSelection
    - name: allowsMultipleSelection
    - argLabels: 
  */
  @objc var allowsMultipleSelection: Bool { @objc get @objc (setAllowsMultipleSelection:) set }

  /**
    - jsName: backgroundColors
    - name: backgroundColors
    - argLabels: 
  */
  @objc var backgroundColors: [NSColor]! { @objc get @objc (setBackgroundColors:) set }

  /**
    - jsName: backgroundView
    - name: backgroundView
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var backgroundView: NSView? { @objc get @objc (setBackgroundView:) set }

  /**
    - jsName: backgroundViewScrollsWithContent
    - name: backgroundViewScrollsWithContent
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var backgroundViewScrollsWithContent: Bool { @objc get @objc (setBackgroundViewScrollsWithContent:) set }

  /**
    - jsName: collectionViewLayout
    - name: collectionViewLayout
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var collectionViewLayout: NSCollectionViewLayout? { @objc get @objc (setCollectionViewLayout:) set }

  /**
    - jsName: content
    - name: content
    - argLabels: 
  */
  @objc var content: [Any] { @objc get @objc (setContent:) set }

  /**
    - jsName: dataSource
    - name: dataSource
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var dataSource: NSCollectionViewDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSCollectionViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: isFirstResponder
    - name: firstResponder
    - argLabels: 
    - obsoleted: 3
    - renamed: isFirstResponder
  */
  @objc var isFirstResponder: Bool { @objc get }

  /**
    - jsName: numberOfSections
    - name: numberOfSections
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var numberOfSections: Int { @objc get }

  /**
    - jsName: prefetchDataSource
    - name: prefetchDataSource
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var prefetchDataSource: NSCollectionViewPrefetching? { @objc get @objc (setPrefetchDataSource:) set }

  /**
    - jsName: isSelectable
    - name: selectable
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - jsName: selectionIndexPaths
    - name: selectionIndexPaths
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var selectionIndexPaths: Set<IndexPath> { @objc get @objc (setSelectionIndexPaths:) set }

  /**
    - jsName: selectionIndexes
    - name: selectionIndexes
    - argLabels: 
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
