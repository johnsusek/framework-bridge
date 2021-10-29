import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMenuItem
    - name: NSMenuItem
    - argLabels: 
  */

@objc(NSMenuItem) protocol NSMenuItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: usesUserKeyEquivalents
    - name: usesUserKeyEquivalents
    - argLabels: 
  */
  @objc static var usesUserKeyEquivalents: Bool { @objc get @objc (setUsesUserKeyEquivalents:) set }

  // Instance Methods

  /**
    - jsName: createWithTitle
    - name: initWithTitle:action:keyEquivalent:
    - argLabels: action, keyEquivalent
    - constructorTokens: title, action, keyEquivalent
  */
  @objc static func createWithTitle(_: String, action: Selector?, keyEquivalent: String) -> Self

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: allowsKeyEquivalentWhenHidden
    - name: allowsKeyEquivalentWhenHidden
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowsKeyEquivalentWhenHidden: Bool { @objc get @objc (setAllowsKeyEquivalentWhenHidden:) set }

  /**
    - jsName: isAlternate
    - name: alternate
    - argLabels: 
    - obsoleted: 3
    - renamed: isAlternate
  */
  @objc var isAlternate: Bool { @objc get @objc (setAlternate:) set }

  /**
    - jsName: attributedTitle
    - name: attributedTitle
    - argLabels: 
  */
  @objc var attributedTitle: NSAttributedString? { @objc get @objc (setAttributedTitle:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - jsName: hasSubmenu
    - name: hasSubmenu
    - argLabels: 
  */
  @objc var hasSubmenu: Bool { @objc get }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isHidden
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: isHiddenOrHasHiddenAncestor
    - name: hiddenOrHasHiddenAncestor
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isHiddenOrHasHiddenAncestor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHiddenOrHasHiddenAncestor: Bool { @objc get }

  /**
    - jsName: isHighlighted
    - name: highlighted
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isHighlighted
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHighlighted: Bool { @objc get }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: indentationLevel
    - name: indentationLevel
    - argLabels: 
  */
  @objc var indentationLevel: Int { @objc get @objc (setIndentationLevel:) set }

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
    - jsName: menu
    - name: menu
    - argLabels: 
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - jsName: mixedStateImage
    - name: mixedStateImage
    - argLabels: 
  */
  @objc var mixedStateImage: NSImage! { @objc get @objc (setMixedStateImage:) set }

  /**
    - jsName: offStateImage
    - name: offStateImage
    - argLabels: 
  */
  @objc var offStateImage: NSImage? { @objc get @objc (setOffStateImage:) set }

  /**
    - jsName: onStateImage
    - name: onStateImage
    - argLabels: 
  */
  @objc var onStateImage: NSImage! { @objc get @objc (setOnStateImage:) set }

  /**
    - jsName: parent
    - name: parentItem
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: parent
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var parent: NSMenuItem? { @objc (parentItem) get }

  /**
    - jsName: representedObject
    - name: representedObject
    - argLabels: 
  */
  @objc var representedObject: Any? { @objc get @objc (setRepresentedObject:) set }

  /**
    - jsName: isSeparatorItem
    - name: separatorItem
    - argLabels: 
    - obsoleted: 3
    - renamed: isSeparatorItem
  */
  @objc var isSeparatorItem: Bool { @objc get }

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }

  /**
    - jsName: submenu
    - name: submenu
    - argLabels: 
  */
  @objc var submenu: NSMenu? { @objc get @objc (setSubmenu:) set }

  /**
    - jsName: tag
    - name: tag
    - argLabels: 
  */
  @objc var tag: Int { @objc get @objc (setTag:) set }

  /**
    - jsName: target
    - name: target
    - argLabels: 
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: toolTip
    - name: toolTip
    - argLabels: 
  */
  @objc var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - jsName: userKeyEquivalent
    - name: userKeyEquivalent
    - argLabels: 
  */
  @objc var userKeyEquivalent: String { @objc get }

  /**
    - jsName: view
    - name: view
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var view: NSView? { @objc get @objc (setView:) set }
}

extension NSMenuItem: NSMenuItemExports {
  @objc public static func createWithTitle(_ title: String, action: Selector?, keyEquivalent: String) -> Self {
    return self.init(title: title, action: action, keyEquivalent: keyEquivalent)
  }

}
