import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubber
    - name: NSScrubber
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubber) protocol NSScrubberExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: insertItems
    - name: insertItemsAtIndexes:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertItems(at:)
  */
  @objc (insertItemsAtIndexes:) func insertItems(at: IndexSet)

  /**
    - jsName: itemViewForItem
    - name: itemViewForItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: itemViewForItem(at:)
  */
  @objc (itemViewForItemAtIndex:) func itemViewForItem(at: Int) -> NSScrubberItemView?

  /**
    - jsName: makeItem
    - name: makeItemWithIdentifier:owner:
    - argLabels: withIdentifier, owner
    - constructorTokens: 
    - obsoleted: 3
    - renamed: makeItem(withIdentifier:owner:)
  */
  @objc (makeItemWithIdentifier:owner:) func makeItem(withIdentifier: NSUserInterfaceItemIdentifier, owner: Any?) -> NSScrubberItemView?

  /**
    - jsName: moveItem
    - name: moveItemAtIndex:toIndex:
    - argLabels: at, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: moveItem(at:to:)
  */
  @objc (moveItemAtIndex:toIndex:) func moveItem(at: Int, to: Int)

  /**
    - jsName: performSequentialBatchUpdates
    - name: performSequentialBatchUpdates:
    - argLabels: 
    - constructorTokens: 
  */
  // jsvalue - @objc func performSequentialBatchUpdates(_: JSValue)

  /**
    - jsName: register
    - name: registerClass:forItemIdentifier:
    - argLabels: _, forItemIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:forItemIdentifier:)
  */
  @objc (registerClass:forItemIdentifier:) func register(_: AnyClass?, forItemIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: register
    - name: registerNib:forItemIdentifier:
    - argLabels: _, forItemIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:forItemIdentifier:)
  */
  @objc (registerNib:forItemIdentifier:) func register(_: NSNib?, forItemIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: reloadData
    - name: reloadData
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadData()

  /**
    - jsName: reloadItems
    - name: reloadItemsAtIndexes:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: reloadItems(at:)
  */
  @objc (reloadItemsAtIndexes:) func reloadItems(at: IndexSet)

  /**
    - jsName: removeItems
    - name: removeItemsAtIndexes:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeItems(at:)
  */
  @objc (removeItemsAtIndexes:) func removeItems(at: IndexSet)

  /**
    - jsName: scrollItem
    - name: scrollItemAtIndex:toAlignment:
    - argLabels: at, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scrollItem(at:to:)
  */
  @objc (scrollItemAtIndex:toAlignment:) func scrollItem(at: Int, to: NSScrubber.Alignment)

  // Own Instance Properties

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: backgroundView
    - name: backgroundView
    - argLabels: 
  */
  @objc var backgroundView: NSView? { @objc get @objc (setBackgroundView:) set }

  /**
    - jsName: isContinuous
    - name: continuous
    - argLabels: 
    - obsoleted: 3
    - renamed: isContinuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - jsName: dataSource
    - name: dataSource
    - argLabels: 
  */
  @objc var dataSource: NSScrubberDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSScrubberDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: floatsSelectionViews
    - name: floatsSelectionViews
    - argLabels: 
  */
  @objc var floatsSelectionViews: Bool { @objc get @objc (setFloatsSelectionViews:) set }

  /**
    - jsName: highlightedIndex
    - name: highlightedIndex
    - argLabels: 
  */
  @objc var highlightedIndex: Int { @objc get }

  /**
    - jsName: itemAlignment
    - name: itemAlignment
    - argLabels: 
  */
  @objc var itemAlignment: NSScrubber.Alignment { @objc get @objc (setItemAlignment:) set }

  /**
    - jsName: mode
    - name: mode
    - argLabels: 
  */
  @objc var mode: NSScrubber.Mode { @objc get @objc (setMode:) set }

  /**
    - jsName: numberOfItems
    - name: numberOfItems
    - argLabels: 
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - jsName: scrubberLayout
    - name: scrubberLayout
    - argLabels: 
  */
  @objc var scrubberLayout: NSScrubberLayout { @objc get @objc (setScrubberLayout:) set }

  /**
    - jsName: selectedIndex
    - name: selectedIndex
    - argLabels: 
  */
  @objc var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - jsName: selectionBackgroundStyle
    - name: selectionBackgroundStyle
    - argLabels: 
  */
  @objc var selectionBackgroundStyle: NSScrubberSelectionStyle? { @objc get @objc (setSelectionBackgroundStyle:) set }

  /**
    - jsName: selectionOverlayStyle
    - name: selectionOverlayStyle
    - argLabels: 
  */
  @objc var selectionOverlayStyle: NSScrubberSelectionStyle? { @objc get @objc (setSelectionOverlayStyle:) set }

  /**
    - jsName: showsAdditionalContentIndicators
    - name: showsAdditionalContentIndicators
    - argLabels: 
  */
  @objc var showsAdditionalContentIndicators: Bool { @objc get @objc (setShowsAdditionalContentIndicators:) set }

  /**
    - jsName: showsArrowButtons
    - name: showsArrowButtons
    - argLabels: 
  */
  @objc var showsArrowButtons: Bool { @objc get @objc (setShowsArrowButtons:) set }
}

@objc protocol ScrubberExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(Scrubber) public class Scrubber: NSScrubber, ScrubberExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrubber: NSScrubberExports {
}
