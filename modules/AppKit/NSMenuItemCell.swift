import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMenuItemCell
    - name: NSMenuItemCell
    - argLabels: 
  */

@objc(NSMenuItemCell) protocol NSMenuItemCellExports: JSExport, NSButtonCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: calcSize
    - name: calcSize
    - argLabels: 
    - constructorTokens: 
  */
  @objc func calcSize()

  /**
    - jsName: drawBorderAndBackground
    - name: drawBorderAndBackgroundWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBorderAndBackground(withFrame:in:)
  */
  @objc (drawBorderAndBackgroundWithFrame:inView:) func drawBorderAndBackground(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawImage
    - name: drawImageWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawImage(withFrame:in:)
  */
  @objc (drawImageWithFrame:inView:) func drawImage(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawKeyEquivalent
    - name: drawKeyEquivalentWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawKeyEquivalent(withFrame:in:)
  */
  @objc (drawKeyEquivalentWithFrame:inView:) func drawKeyEquivalent(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawSeparatorItem
    - name: drawSeparatorItemWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawSeparatorItem(withFrame:in:)
  */
  @objc (drawSeparatorItemWithFrame:inView:) func drawSeparatorItem(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawStateImage
    - name: drawStateImageWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawStateImage(withFrame:in:)
  */
  @objc (drawStateImageWithFrame:inView:) func drawStateImage(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawTitle
    - name: drawTitleWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawTitle(withFrame:in:)
  */
  @objc (drawTitleWithFrame:inView:) func drawTitle(withFrame: CGRect, in: NSView)

  /**
    - jsName: keyEquivalentRect
    - name: keyEquivalentRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: keyEquivalentRect(forBounds:)
  */
  @objc (keyEquivalentRectForBounds:) func keyEquivalentRect(forBounds: CGRect) -> CGRect

  /**
    - jsName: stateImageRect
    - name: stateImageRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stateImageRect(forBounds:)
  */
  @objc (stateImageRectForBounds:) func stateImageRect(forBounds: CGRect) -> CGRect

  // Own Instance Properties

  /**
    - jsName: imageWidth
    - name: imageWidth
    - argLabels: 
  */
  @objc var imageWidth: CGFloat { @objc get }

  /**
    - jsName: keyEquivalentWidth
    - name: keyEquivalentWidth
    - argLabels: 
  */
  @objc var keyEquivalentWidth: CGFloat { @objc get }

  /**
    - jsName: menuItem
    - name: menuItem
    - argLabels: 
  */
  @objc var menuItem: NSMenuItem? { @objc get @objc (setMenuItem:) set }

  /**
    - jsName: needsDisplay
    - name: needsDisplay
    - argLabels: 
  */
  @objc var needsDisplay: Bool { @objc get @objc (setNeedsDisplay:) set }

  /**
    - jsName: needsSizing
    - name: needsSizing
    - argLabels: 
  */
  @objc var needsSizing: Bool { @objc get @objc (setNeedsSizing:) set }

  /**
    - jsName: stateImageWidth
    - name: stateImageWidth
    - argLabels: 
  */
  @objc var stateImageWidth: CGFloat { @objc get }

  /**
    - jsName: titleWidth
    - name: titleWidth
    - argLabels: 
  */
  @objc var titleWidth: CGFloat { @objc get }
}

extension NSMenuItemCell: NSMenuItemCellExports {
}
