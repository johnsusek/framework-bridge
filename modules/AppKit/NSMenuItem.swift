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
    - Selector: NSMenuItem
  */

@objc(NSMenuItem) protocol NSMenuItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: usesUserKeyEquivalents
  */
  @objc static var usesUserKeyEquivalents: Bool { @objc get @objc (setUsesUserKeyEquivalents:) set }

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: allowsKeyEquivalentWhenHidden
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowsKeyEquivalentWhenHidden: Bool { @objc get @objc (setAllowsKeyEquivalentWhenHidden:) set }

  /**
    - Selector: alternate
  */
  @objc var isAlternate: Bool { @objc get @objc (setAlternate:) set }

  /**
    - Selector: attributedTitle
  */
  @objc var attributedTitle: NSAttributedString? { @objc get @objc (setAttributedTitle:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: hasSubmenu
  */
  @objc var hasSubmenu: Bool { @objc get }

  /**
    - Selector: hidden
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: hiddenOrHasHiddenAncestor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHiddenOrHasHiddenAncestor: Bool { @objc get }

  /**
    - Selector: highlighted
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHighlighted: Bool { @objc get }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: indentationLevel
  */
  @objc var indentationLevel: Int { @objc get @objc (setIndentationLevel:) set }

  /**
    - Selector: keyEquivalent
  */
  @objc var keyEquivalent: String { @objc get @objc (setKeyEquivalent:) set }

  /**
    - Selector: keyEquivalentModifierMask
  */
  @objc var keyEquivalentModifierMask: NSEvent.ModifierFlags { @objc get @objc (setKeyEquivalentModifierMask:) set }

  /**
    - Selector: menu
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - Selector: mixedStateImage
  */
  @objc var mixedStateImage: NSImage! { @objc get @objc (setMixedStateImage:) set }

  /**
    - Selector: offStateImage
  */
  @objc var offStateImage: NSImage? { @objc get @objc (setOffStateImage:) set }

  /**
    - Selector: onStateImage
  */
  @objc var onStateImage: NSImage! { @objc get @objc (setOnStateImage:) set }

  /**
    - Selector: parentItem
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var parent: NSMenuItem? { @objc (parentItem) get }

  /**
    - Selector: representedObject
  */
  @objc var representedObject: Any? { @objc get @objc (setRepresentedObject:) set }

  /**
    - Selector: separatorItem
  */
  @objc var isSeparatorItem: Bool { @objc get }

  /**
    - Selector: state
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }

  /**
    - Selector: submenu
  */
  @objc var submenu: NSMenu? { @objc get @objc (setSubmenu:) set }

  /**
    - Selector: tag
  */
  @objc var tag: Int { @objc get @objc (setTag:) set }

  /**
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: toolTip
  */
  @objc var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - Selector: userKeyEquivalent
  */
  @objc var userKeyEquivalent: String { @objc get }

  /**
    - Selector: view
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var view: NSView? { @objc get @objc (setView:) set }
}

extension NSMenuItem: NSMenuItemExports {
}
