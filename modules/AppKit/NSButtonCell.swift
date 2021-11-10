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
    - Selector: NSButtonCell
  */

@objc(NSButtonCell) protocol NSButtonCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: drawBezelWithFrame:inView:
  */
  @objc (drawBezelWithFrame:inView:) func drawBezel(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawImage:withFrame:inView:
  */
  @objc (drawImage:withFrame:inView:) func drawImage(_: NSImage, withFrame: CGRect, in: NSView)

  /**
    - Selector: drawTitle:withFrame:inView:
  */
  @objc (drawTitle:withFrame:inView:) func drawTitle(_: NSAttributedString, withFrame: CGRect, in: NSView) -> CGRect

  /**
    - Selector: mouseEntered:
  */
  @objc (mouseEntered:) func mouseEntered(with: NSEvent)

  /**
    - Selector: mouseExited:
  */
  @objc (mouseExited:) func mouseExited(with: NSEvent)

  /**
    - Selector: setButtonType:
  */
  @objc func setButtonType(_: NSButton.ButtonType)

  /**
    - Selector: setPeriodicDelay:interval:
  */
  @objc func setPeriodicDelay(_: Float, interval: Float)

  // Own Instance Properties

  /**
    - Selector: alternateImage
  */
  @objc var alternateImage: NSImage? { @objc get @objc (setAlternateImage:) set }

  /**
    - Selector: alternateTitle
  */
  @objc var alternateTitle: String { @objc get @objc (setAlternateTitle:) set }

  /**
    - Selector: attributedAlternateTitle
  */
  @objc var attributedAlternateTitle: NSAttributedString { @objc get @objc (setAttributedAlternateTitle:) set }

  /**
    - Selector: attributedTitle
  */
  @objc var attributedTitle: NSAttributedString { @objc get @objc (setAttributedTitle:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: bezelStyle
  */
  @objc var bezelStyle: NSButton.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - Selector: highlightsBy
  */
  @objc var highlightsBy: NSCell.StyleMask { @objc get @objc (setHighlightsBy:) set }

  /**
    - Selector: imageDimsWhenDisabled
  */
  @objc var imageDimsWhenDisabled: Bool { @objc get @objc (setImageDimsWhenDisabled:) set }

  /**
    - Selector: imagePosition
  */
  @objc var imagePosition: NSControl.ImagePosition { @objc get @objc (setImagePosition:) set }

  /**
    - Selector: imageScaling
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var imageScaling: NSImageScaling { @objc get @objc (setImageScaling:) set }

  /**
    - Selector: keyEquivalent
  */
  @objc var keyEquivalent: String { @objc get @objc (setKeyEquivalent:) set }

  /**
    - Selector: keyEquivalentModifierMask
  */
  @objc var keyEquivalentModifierMask: NSEvent.ModifierFlags { @objc get @objc (setKeyEquivalentModifierMask:) set }

  /**
    - Selector: showsBorderOnlyWhileMouseInside
  */
  @objc var showsBorderOnlyWhileMouseInside: Bool { @objc get @objc (setShowsBorderOnlyWhileMouseInside:) set }

  /**
    - Selector: showsStateBy
  */
  @objc var showsStateBy: NSCell.StyleMask { @objc get @objc (setShowsStateBy:) set }

  /**
    - Selector: sound
  */
  @objc var sound: NSSound? { @objc get @objc (setSound:) set }

  /**
    - Selector: transparent
  */
  @objc var isTransparent: Bool { @objc get @objc (setTransparent:) set }
}

extension NSButtonCell: NSButtonCellExports {
}
