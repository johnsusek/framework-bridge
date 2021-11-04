import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScrubber
    - Introduced: 10.12.2
  */

@objc(NSScrubber) protocol NSScrubberExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: insertItemsAtIndexes:
  */
  @objc (insertItemsAtIndexes:) func insertItems(at: IndexSet)

  /**
    - Selector: itemViewForItemAtIndex:
  */
  @objc (itemViewForItemAtIndex:) func itemViewForItem(at: Int) -> NSScrubberItemView?

  /**
    - Selector: makeItemWithIdentifier:owner:
  */
  @objc (makeItemWithIdentifier:owner:) func makeItem(withIdentifier: NSUserInterfaceItemIdentifier, owner: Any?) -> NSScrubberItemView?

  /**
    - Selector: moveItemAtIndex:toIndex:
  */
  @objc (moveItemAtIndex:toIndex:) func moveItem(at: Int, to: Int)

  /**
    - Selector: performSequentialBatchUpdates:
  */
  // jsvalue @objc func performSequentialBatchUpdates(_: JSValue)

  /**
    - Selector: registerClass:forItemIdentifier:
  */
  @objc (registerClass:forItemIdentifier:) func register(_: AnyClass?, forItemIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: registerNib:forItemIdentifier:
  */
  @objc (registerNib:forItemIdentifier:) func register(_: NSNib?, forItemIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: reloadData
  */
  @objc func reloadData()

  /**
    - Selector: reloadItemsAtIndexes:
  */
  @objc (reloadItemsAtIndexes:) func reloadItems(at: IndexSet)

  /**
    - Selector: removeItemsAtIndexes:
  */
  @objc (removeItemsAtIndexes:) func removeItems(at: IndexSet)

  /**
    - Selector: scrollItemAtIndex:toAlignment:
  */
  @objc (scrollItemAtIndex:toAlignment:) func scrollItem(at: Int, to: NSScrubber.Alignment)

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: backgroundView
  */
  @objc var backgroundView: NSView? { @objc get @objc (setBackgroundView:) set }

  /**
    - Selector: continuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - Selector: dataSource
  */
  @objc var dataSource: NSScrubberDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSScrubberDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: floatsSelectionViews
  */
  @objc var floatsSelectionViews: Bool { @objc get @objc (setFloatsSelectionViews:) set }

  /**
    - Selector: highlightedIndex
  */
  @objc var highlightedIndex: Int { @objc get }

  /**
    - Selector: itemAlignment
  */
  @objc var itemAlignment: NSScrubber.Alignment { @objc get @objc (setItemAlignment:) set }

  /**
    - Selector: mode
  */
  @objc var mode: NSScrubber.Mode { @objc get @objc (setMode:) set }

  /**
    - Selector: numberOfItems
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - Selector: scrubberLayout
  */
  @objc var scrubberLayout: NSScrubberLayout { @objc get @objc (setScrubberLayout:) set }

  /**
    - Selector: selectedIndex
  */
  @objc var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - Selector: selectionBackgroundStyle
  */
  @objc var selectionBackgroundStyle: NSScrubberSelectionStyle? { @objc get @objc (setSelectionBackgroundStyle:) set }

  /**
    - Selector: selectionOverlayStyle
  */
  @objc var selectionOverlayStyle: NSScrubberSelectionStyle? { @objc get @objc (setSelectionOverlayStyle:) set }

  /**
    - Selector: showsAdditionalContentIndicators
  */
  @objc var showsAdditionalContentIndicators: Bool { @objc get @objc (setShowsAdditionalContentIndicators:) set }

  /**
    - Selector: showsArrowButtons
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
