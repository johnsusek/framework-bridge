import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSButton
    - name: NSButton
    - argLabels: 
  */

@objc(NSButton) protocol NSButtonExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: buttonWithImage:target:action:
    - argLabels: image, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(image:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(image: NSImage) -> Self

  /**
    - jsName: create
    - name: buttonWithTitle:image:target:action:
    - argLabels: title, image, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(title:image:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(title: String, image: NSImage) -> Self

  /**
    - jsName: create
    - name: buttonWithTitle:target:action:
    - argLabels: title, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(title:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(title: String) -> Self

  /**
    - jsName: create
    - name: checkboxWithTitle:target:action:
    - argLabels: checkboxWithTitle, target, action
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(checkboxWithTitle:target:action:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(checkboxWithTitle: String) -> Self

  /**
    - jsName: create
    - name: radioButtonWithTitle:target:action:
    - argLabels: radioButtonWithTitle, target, action
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(radioButtonWithTitle:target:action:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(radioButtonWithTitle: String) -> Self

  // Instance Methods

  /**
    - jsName: getPeriodicDelay
    - name: getPeriodicDelay:interval:
    - argLabels: interval
    - constructorTokens: 
  */
  @objc func getPeriodicDelay(_: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)

  /**
    - jsName: highlight
    - name: highlight:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func highlight(_: Bool)

  /**
    - jsName: setButtonType
    - name: setButtonType:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setButtonType(_: NSButton.ButtonType)

  /**
    - jsName: setNextState
    - name: setNextState
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setNextState()

  /**
    - jsName: setPeriodicDelay
    - name: setPeriodicDelay:interval:
    - argLabels: interval
    - constructorTokens: 
  */
  @objc func setPeriodicDelay(_: Float, interval: Float)

  // Own Instance Properties

  /**
    - jsName: allowsMixedState
    - name: allowsMixedState
    - argLabels: 
  */
  @objc var allowsMixedState: Bool { @objc get @objc (setAllowsMixedState:) set }

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
    - jsName: bezelColor
    - name: bezelColor
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var bezelColor: NSColor? { @objc get @objc (setBezelColor:) set }

  /**
    - jsName: bezelStyle
    - name: bezelStyle
    - argLabels: 
  */
  @objc var bezelStyle: NSButton.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - jsName: isBordered
    - name: bordered
    - argLabels: 
    - obsoleted: 3
    - renamed: isBordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - jsName: contentTintColor
    - name: contentTintColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var contentTintColor: NSColor? { @objc get @objc (setContentTintColor:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: imageHugsTitle
    - name: imageHugsTitle
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var imageHugsTitle: Bool { @objc get @objc (setImageHugsTitle:) set }

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
    - jsName: maxAcceleratorLevel
    - name: maxAcceleratorLevel
    - argLabels: 
    - available: 10.10.3
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var maxAcceleratorLevel: Int { @objc get @objc (setMaxAcceleratorLevel:) set }

  /**
    - jsName: showsBorderOnlyWhileMouseInside
    - name: showsBorderOnlyWhileMouseInside
    - argLabels: 
  */
  @objc var showsBorderOnlyWhileMouseInside: Bool { @objc get @objc (setShowsBorderOnlyWhileMouseInside:) set }

  /**
    - jsName: sound
    - name: sound
    - argLabels: 
  */
  @objc var sound: NSSound? { @objc get @objc (setSound:) set }

  /**
    - jsName: isSpringLoaded
    - name: springLoaded
    - argLabels: 
    - available: 10.10.3
    - obsoleted: 3
    - renamed: isSpringLoaded
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var isSpringLoaded: Bool { @objc get @objc (setSpringLoaded:) set }

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: isTransparent
    - name: transparent
    - argLabels: 
    - obsoleted: 3
    - renamed: isTransparent
  */
  @objc var isTransparent: Bool { @objc get @objc (setTransparent:) set }
}

@objc protocol ButtonExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: buttonWithImage:target:action:
    - argLabels: image, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(image:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(image: NSImage) -> Self

  /**
    - jsName: create
    - name: buttonWithTitle:image:target:action:
    - argLabels: title, image, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(title:image:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(title: String, image: NSImage) -> Self

  /**
    - jsName: create
    - name: buttonWithTitle:target:action:
    - argLabels: title, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(title:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(title: String) -> Self

  /**
    - jsName: create
    - name: checkboxWithTitle:target:action:
    - argLabels: checkboxWithTitle, target, action
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(checkboxWithTitle:target:action:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(checkboxWithTitle: String) -> Self

  /**
    - jsName: create
    - name: radioButtonWithTitle:target:action:
    - argLabels: radioButtonWithTitle, target, action
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(radioButtonWithTitle:target:action:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(radioButtonWithTitle: String) -> Self
}

@objc(Button) public class Button: NSButton, ButtonExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSButton: NSButtonExports {
  @objc public static func create(image: NSImage) -> Self {
    return self.init(image: image, target: nil, action: nil)
  }

  @objc public static func create(title: String, image: NSImage) -> Self {
    return self.init(title: title, image: image, target: nil, action: nil)
  }

  @objc public static func create(title: String) -> Self {
    return self.init(title: title, target: nil, action: nil)
  }

  @objc public static func create(checkboxWithTitle: String) -> Self {
    return self.init(checkboxWithTitle: checkboxWithTitle, target: nil, action: nil)
  }

  @objc public static func create(radioButtonWithTitle: String) -> Self {
    return self.init(radioButtonWithTitle: radioButtonWithTitle, target: nil, action: nil)
  }

}
