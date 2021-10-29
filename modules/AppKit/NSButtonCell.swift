import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSButtonCell
    - name: NSButtonCell
    - argLabels: 
  */

@objc(NSButtonCell) protocol NSButtonCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: drawBezel
    - name: drawBezelWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBezel(withFrame:in:)
  */
  @objc (drawBezelWithFrame:inView:) func drawBezel(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawImage
    - name: drawImage:withFrame:inView:
    - argLabels: _, withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawImage(_:withFrame:in:)
  */
  @objc (drawImage:withFrame:inView:) func drawImage(_: NSImage, withFrame: CGRect, in: NSView)

  /**
    - jsName: drawTitle
    - name: drawTitle:withFrame:inView:
    - argLabels: _, withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawTitle(_:withFrame:in:)
  */
  @objc (drawTitle:withFrame:inView:) func drawTitle(_: NSAttributedString, withFrame: CGRect, in: NSView) -> CGRect

  /**
    - jsName: mouseEntered
    - name: mouseEntered:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseEntered(with:)
  */
  @objc (mouseEntered:) func mouseEntered(with: NSEvent)

  /**
    - jsName: mouseExited
    - name: mouseExited:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseExited(with:)
  */
  @objc (mouseExited:) func mouseExited(with: NSEvent)

  /**
    - jsName: setButtonType
    - name: setButtonType:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setButtonType(_: NSButton.ButtonType)

  /**
    - jsName: setPeriodicDelay
    - name: setPeriodicDelay:interval:
    - argLabels: interval
    - constructorTokens: 
  */
  @objc func setPeriodicDelay(_: Float, interval: Float)

  // Own Instance Properties

  /**
    - jsName: alternateImage
    - name: alternateImage
    - argLabels: 
  */
  @objc var alternateImage: NSImage? { @objc get @objc (setAlternateImage:) set }

  /**
    - jsName: alternateTitle
    - name: alternateTitle
    - argLabels: 
  */
  @objc var alternateTitle: String { @objc get @objc (setAlternateTitle:) set }

  /**
    - jsName: attributedAlternateTitle
    - name: attributedAlternateTitle
    - argLabels: 
  */
  @objc var attributedAlternateTitle: NSAttributedString { @objc get @objc (setAttributedAlternateTitle:) set }

  /**
    - jsName: attributedTitle
    - name: attributedTitle
    - argLabels: 
  */
  @objc var attributedTitle: NSAttributedString { @objc get @objc (setAttributedTitle:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: bezelStyle
    - name: bezelStyle
    - argLabels: 
  */
  @objc var bezelStyle: NSButton.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - jsName: highlightsBy
    - name: highlightsBy
    - argLabels: 
  */
  @objc var highlightsBy: NSCell.StyleMask { @objc get @objc (setHighlightsBy:) set }

  /**
    - jsName: imageDimsWhenDisabled
    - name: imageDimsWhenDisabled
    - argLabels: 
  */
  @objc var imageDimsWhenDisabled: Bool { @objc get @objc (setImageDimsWhenDisabled:) set }

  /**
    - jsName: imagePosition
    - name: imagePosition
    - argLabels: 
  */
  @objc var imagePosition: NSControl.ImagePosition { @objc get @objc (setImagePosition:) set }

  /**
    - jsName: imageScaling
    - name: imageScaling
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var imageScaling: NSImageScaling { @objc get @objc (setImageScaling:) set }

  /**
    - jsName: keyEquivalent
    - name: keyEquivalent
    - argLabels: 
  */
  @objc var keyEquivalent: String { @objc get @objc (setKeyEquivalent:) set }

  /**
    - jsName: keyEquivalentModifierMask
    - name: keyEquivalentModifierMask
    - argLabels: 
  */
  @objc var keyEquivalentModifierMask: NSEvent.ModifierFlags { @objc get @objc (setKeyEquivalentModifierMask:) set }

  /**
    - jsName: showsBorderOnlyWhileMouseInside
    - name: showsBorderOnlyWhileMouseInside
    - argLabels: 
  */
  @objc var showsBorderOnlyWhileMouseInside: Bool { @objc get @objc (setShowsBorderOnlyWhileMouseInside:) set }

  /**
    - jsName: showsStateBy
    - name: showsStateBy
    - argLabels: 
  */
  @objc var showsStateBy: NSCell.StyleMask { @objc get @objc (setShowsStateBy:) set }

  /**
    - jsName: sound
    - name: sound
    - argLabels: 
  */
  @objc var sound: NSSound? { @objc get @objc (setSound:) set }

  /**
    - jsName: isTransparent
    - name: transparent
    - argLabels: 
    - obsoleted: 3
    - renamed: isTransparent
  */
  @objc var isTransparent: Bool { @objc get @objc (setTransparent:) set }
}

extension NSButtonCell: NSButtonCellExports {
}
