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
    - Selector: NSButton
  */

@objc(NSButton) protocol NSButtonExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: buttonWithImage:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithImage(_ image: NSImage) -> Self

  /**
    - Selector: buttonWithTitle:image:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithTitle_Image(_ title: String, _ image: NSImage) -> Self

  /**
    - Selector: buttonWithTitle:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithTitle(_ title: String) -> Self

  /**
    - Selector: checkboxWithTitle:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithCheckbox_Title(_ checkboxWithTitle: String) -> Self

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: radioButtonWithTitle:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithRadioButton_Title(_ radioButtonWithTitle: String) -> Self

  // Instance Methods

  /**
    - Selector: getPeriodicDelay:interval:
  */
  @objc func getPeriodicDelay(_ p0: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)

  /**
    - Selector: highlight:
  */
  @objc func highlight(_ p0: Bool)

  /**
    - Selector: setButtonType:
  */
  @objc func setButtonType(_ p0: NSButton.ButtonType)

  /**
    - Selector: setNextState
  */
  @objc func setNextState()

  /**
    - Selector: setPeriodicDelay:interval:
  */
  @objc func setPeriodicDelay(_ p0: Float, interval: Float)

  // Own Instance Properties

  /**
    - Selector: allowsMixedState
  */
  @objc var allowsMixedState: Bool { @objc get @objc (setAllowsMixedState:) set }

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
    - Selector: bezelColor
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var bezelColor: NSColor? { @objc get @objc (setBezelColor:) set }

  /**
    - Selector: bezelStyle
  */
  @objc var bezelStyle: NSButton.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - Selector: bordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - Selector: contentTintColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var contentTintColor: NSColor? { @objc get @objc (setContentTintColor:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: imageHugsTitle
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var imageHugsTitle: Bool { @objc get @objc (setImageHugsTitle:) set }

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
    - Selector: maxAcceleratorLevel
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var maxAcceleratorLevel: Int { @objc get @objc (setMaxAcceleratorLevel:) set }

  /**
    - Selector: showsBorderOnlyWhileMouseInside
  */
  @objc var showsBorderOnlyWhileMouseInside: Bool { @objc get @objc (setShowsBorderOnlyWhileMouseInside:) set }

  /**
    - Selector: sound
  */
  @objc var sound: NSSound? { @objc get @objc (setSound:) set }

  /**
    - Selector: springLoaded
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var isSpringLoaded: Bool { @objc get @objc (setSpringLoaded:) set }

  /**
    - Selector: state
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: transparent
  */
  @objc var isTransparent: Bool { @objc get @objc (setTransparent:) set }
}

extension NSButton: NSButtonExports {

  /**
    - Selector: buttonWithImage:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithImage(_ image: NSImage) -> Self {
    return self.init(image: image, target: nil, action: nil)
  }


  /**
    - Selector: buttonWithTitle:image:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithTitle_Image(_ title: String, _ image: NSImage) -> Self {
    return self.init(title: title, image: image, target: nil, action: nil)
  }


  /**
    - Selector: buttonWithTitle:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithTitle(_ title: String) -> Self {
    return self.init(title: title, target: nil, action: nil)
  }


  /**
    - Selector: checkboxWithTitle:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithCheckbox_Title(_ checkboxWithTitle: String) -> Self {
    return self.init(checkboxWithTitle: checkboxWithTitle, target: nil, action: nil)
  }


  /**
    - Selector: radioButtonWithTitle:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithRadioButton_Title(_ radioButtonWithTitle: String) -> Self {
    return self.init(radioButtonWithTitle: radioButtonWithTitle, target: nil, action: nil)
  }

}
