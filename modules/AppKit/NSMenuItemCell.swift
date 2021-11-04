import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSMenuItemCell
  */

@objc(NSMenuItemCell) protocol NSMenuItemCellExports: JSExport, NSButtonCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: calcSize
  */
  @objc func calcSize()

  /**
    - Selector: drawBorderAndBackgroundWithFrame:inView:
  */
  @objc (drawBorderAndBackgroundWithFrame:inView:) func drawBorderAndBackground(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawImageWithFrame:inView:
  */
  @objc (drawImageWithFrame:inView:) func drawImage(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawKeyEquivalentWithFrame:inView:
  */
  @objc (drawKeyEquivalentWithFrame:inView:) func drawKeyEquivalent(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawSeparatorItemWithFrame:inView:
  */
  @objc (drawSeparatorItemWithFrame:inView:) func drawSeparatorItem(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawStateImageWithFrame:inView:
  */
  @objc (drawStateImageWithFrame:inView:) func drawStateImage(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawTitleWithFrame:inView:
  */
  @objc (drawTitleWithFrame:inView:) func drawTitle(withFrame: CGRect, in: NSView)

  /**
    - Selector: keyEquivalentRectForBounds:
  */
  @objc (keyEquivalentRectForBounds:) func keyEquivalentRect(forBounds: CGRect) -> CGRect

  /**
    - Selector: stateImageRectForBounds:
  */
  @objc (stateImageRectForBounds:) func stateImageRect(forBounds: CGRect) -> CGRect

  // Own Instance Properties

  /**
    - Selector: imageWidth
  */
  @objc var imageWidth: CGFloat { @objc get }

  /**
    - Selector: keyEquivalentWidth
  */
  @objc var keyEquivalentWidth: CGFloat { @objc get }

  /**
    - Selector: menuItem
  */
  @objc var menuItem: NSMenuItem? { @objc get @objc (setMenuItem:) set }

  /**
    - Selector: needsDisplay
  */
  @objc var needsDisplay: Bool { @objc get @objc (setNeedsDisplay:) set }

  /**
    - Selector: needsSizing
  */
  @objc var needsSizing: Bool { @objc get @objc (setNeedsSizing:) set }

  /**
    - Selector: stateImageWidth
  */
  @objc var stateImageWidth: CGFloat { @objc get }

  /**
    - Selector: titleWidth
  */
  @objc var titleWidth: CGFloat { @objc get }
}

extension NSMenuItemCell: NSMenuItemCellExports {
}
