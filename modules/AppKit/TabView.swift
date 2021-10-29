import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTabView
    - name: NSTabView
    - argLabels: 
  */

@objc(NSTabView) protocol NSTabViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addTabViewItem
    - name: addTabViewItem:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (addTabViewItem:) func addTabViewItem(_: NSTabViewItem)

  /**
    - jsName: indexOfTabViewItem
    - name: indexOfTabViewItem:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (indexOfTabViewItem:) func indexOfTabViewItem(_: NSTabViewItem) -> Int

  /**
    - jsName: indexOfTabViewItem
    - name: indexOfTabViewItemWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfTabViewItem(withIdentifier:)
  */
  @objc (indexOfTabViewItemWithIdentifier:) func indexOfTabViewItem(withIdentifier: Any) -> Int

  /**
    - jsName: insertTabViewItem
    - name: insertTabViewItem:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertTabViewItem(_:at:)
  */
  @objc (insertTabViewItem:atIndex:) func insertTabViewItem(_: NSTabViewItem, at: Int)

  /**
    - jsName: removeTabViewItem
    - name: removeTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeTabViewItem(_: NSTabViewItem)

  /**
    - jsName: selectFirstTabViewItem
    - name: selectFirstTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectFirstTabViewItem(_: Any?)

  /**
    - jsName: selectLastTabViewItem
    - name: selectLastTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectLastTabViewItem(_: Any?)

  /**
    - jsName: selectNextTabViewItem
    - name: selectNextTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectNextTabViewItem(_: Any?)

  /**
    - jsName: selectPreviousTabViewItem
    - name: selectPreviousTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectPreviousTabViewItem(_: Any?)

  /**
    - jsName: selectTabViewItem
    - name: selectTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectTabViewItem(_: NSTabViewItem?)

  /**
    - jsName: selectTabViewItem
    - name: selectTabViewItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectTabViewItem(at:)
  */
  @objc (selectTabViewItemAtIndex:) func selectTabViewItem(at: Int)

  /**
    - jsName: selectTabViewItem
    - name: selectTabViewItemWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectTabViewItem(withIdentifier:)
  */
  @objc (selectTabViewItemWithIdentifier:) func selectTabViewItem(withIdentifier: Any)

  /**
    - jsName: tabViewItem
    - name: tabViewItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tabViewItem(at:)
  */
  @objc (tabViewItemAtIndex:) func tabViewItem(at: Int) -> NSTabViewItem

  /**
    - jsName: tabViewItem
    - name: tabViewItemAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tabViewItem(at:)
  */
  @objc (tabViewItemAtPoint:) func tabViewItem(at: CGPoint) -> NSTabViewItem?

  /**
    - jsName: takeSelectedTabViewItemFromSender
    - name: takeSelectedTabViewItemFromSender:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeSelectedTabViewItemFromSender(_: Any?)

  // Own Instance Properties

  /**
    - jsName: allowsTruncatedLabels
    - name: allowsTruncatedLabels
    - argLabels: 
  */
  @objc var allowsTruncatedLabels: Bool { @objc get @objc (setAllowsTruncatedLabels:) set }

  /**
    - jsName: contentRect
    - name: contentRect
    - argLabels: 
  */
  @objc var contentRect: CGRect { @objc get }

  /**
    - jsName: controlSize
    - name: controlSize
    - argLabels: 
  */
  @objc var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - jsName: controlTint
    - name: controlTint
    - argLabels: 
    - introduced: 10.0
    - deprecated: 10.14
    - message: The controlTint property is not respected on 10.14 and later.
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: The controlTint property is not respected on 10.14 and later.
  */
  @objc @available(OSX 10.0, *) var controlTint: NSControlTint { @objc get @objc (setControlTint:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTabViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - jsName: font
    - name: font
    - argLabels: 
  */
  @objc var font: NSFont { @objc get @objc (setFont:) set }

  /**
    - jsName: minimumSize
    - name: minimumSize
    - argLabels: 
  */
  @objc var minimumSize: CGSize { @objc get }

  /**
    - jsName: numberOfTabViewItems
    - name: numberOfTabViewItems
    - argLabels: 
  */
  @objc var numberOfTabViewItems: Int { @objc get }

  /**
    - jsName: selectedTabViewItem
    - name: selectedTabViewItem
    - argLabels: 
  */
  @objc var selectedTabViewItem: NSTabViewItem? { @objc get }

  /**
    - jsName: tabPosition
    - name: tabPosition
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabPosition: NSTabView.TabPosition { @objc get @objc (setTabPosition:) set }

  /**
    - jsName: tabViewBorderType
    - name: tabViewBorderType
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabViewBorderType: NSTabView.TabViewBorderType { @objc get @objc (setTabViewBorderType:) set }

  /**
    - jsName: tabViewItems
    - name: tabViewItems
    - argLabels: 
  */
  @objc var tabViewItems: [NSTabViewItem] { @objc get @objc (setTabViewItems:) set }

  /**
    - jsName: tabViewType
    - name: tabViewType
    - argLabels: 
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
