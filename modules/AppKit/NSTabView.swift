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
    - Selector: NSTabView
  */

@objc(NSTabView) protocol NSTabViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: addTabViewItem:
  */
  @objc (addTabViewItem:) func addTabViewItem(_: NSTabViewItem)

  /**
    - Selector: indexOfTabViewItem:
  */
  @objc (indexOfTabViewItem:) func indexOfTabViewItem(_: NSTabViewItem) -> Int

  /**
    - Selector: indexOfTabViewItemWithIdentifier:
  */
  @objc (indexOfTabViewItemWithIdentifier:) func indexOfTabViewItem(withIdentifier: Any) -> Int

  /**
    - Selector: insertTabViewItem:atIndex:
  */
  @objc (insertTabViewItem:atIndex:) func insertTabViewItem(_: NSTabViewItem, at: Int)

  /**
    - Selector: removeTabViewItem:
  */
  @objc func removeTabViewItem(_: NSTabViewItem)

  /**
    - Selector: selectFirstTabViewItem:
  */
  @objc func selectFirstTabViewItem(_: Any?)

  /**
    - Selector: selectLastTabViewItem:
  */
  @objc func selectLastTabViewItem(_: Any?)

  /**
    - Selector: selectNextTabViewItem:
  */
  @objc func selectNextTabViewItem(_: Any?)

  /**
    - Selector: selectPreviousTabViewItem:
  */
  @objc func selectPreviousTabViewItem(_: Any?)

  /**
    - Selector: selectTabViewItem:
  */
  @objc func selectTabViewItem(_: NSTabViewItem?)

  /**
    - Selector: selectTabViewItemAtIndex:
  */
  @objc (selectTabViewItemAtIndex:) func selectTabViewItem(at: Int)

  /**
    - Selector: selectTabViewItemWithIdentifier:
  */
  @objc (selectTabViewItemWithIdentifier:) func selectTabViewItem(withIdentifier: Any)

  /**
    - Selector: tabViewItemAtIndex:
  */
  @objc (tabViewItemAtIndex:) func tabViewItem(at: Int) -> NSTabViewItem

  /**
    - Selector: tabViewItemAtPoint:
  */
  @objc (tabViewItemAtPoint:) func tabViewItem(at: CGPoint) -> NSTabViewItem?

  /**
    - Selector: takeSelectedTabViewItemFromSender:
  */
  @objc func takeSelectedTabViewItemFromSender(_: Any?)

  // Own Instance Properties

  /**
    - Selector: allowsTruncatedLabels
  */
  @objc var allowsTruncatedLabels: Bool { @objc get @objc (setAllowsTruncatedLabels:) set }

  /**
    - Selector: contentRect
  */
  @objc var contentRect: CGRect { @objc get }

  /**
    - Selector: controlSize
  */
  @objc var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - Selector: controlTint
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: The controlTint property is not respected on 10.14 and later.
  */
  @objc @available(OSX 10.0, *) var controlTint: NSControlTint { @objc get @objc (setControlTint:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTabViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - Selector: font
  */
  @objc var font: NSFont { @objc get @objc (setFont:) set }

  /**
    - Selector: minimumSize
  */
  @objc var minimumSize: CGSize { @objc get }

  /**
    - Selector: numberOfTabViewItems
  */
  @objc var numberOfTabViewItems: Int { @objc get }

  /**
    - Selector: selectedTabViewItem
  */
  @objc var selectedTabViewItem: NSTabViewItem? { @objc get }

  /**
    - Selector: tabPosition
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabPosition: NSTabView.TabPosition { @objc get @objc (setTabPosition:) set }

  /**
    - Selector: tabViewBorderType
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabViewBorderType: NSTabView.TabViewBorderType { @objc get @objc (setTabViewBorderType:) set }

  /**
    - Selector: tabViewItems
  */
  @objc var tabViewItems: [NSTabViewItem] { @objc get @objc (setTabViewItems:) set }

  /**
    - Selector: tabViewType
  */
  @objc var tabViewType: NSTabView.TabType { @objc get @objc (setTabViewType:) set }
}

@objc protocol TabViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(TabView) public class TabView: NSTabView, TabViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTabView: NSTabViewExports {
}
