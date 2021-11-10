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
    - Selector: NSToolbarItem
  */

@objc(NSToolbarItem) protocol NSToolbarItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: validate
  */
  @objc func validate()

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: allowsDuplicatesInToolbar
  */
  @objc var allowsDuplicatesInToolbar: Bool { @objc get }

  /**
    - Selector: autovalidates
  */
  @objc var autovalidates: Bool { @objc get @objc (setAutovalidates:) set }

  /**
    - Selector: bordered
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: itemIdentifier
  */
  @objc var itemIdentifier: NSToolbarItem.Identifier { @objc get }

  /**
    - Selector: label
  */
  @objc var label: String { @objc get @objc (setLabel:) set }

  /**
    - Selector: maxSize
  */
  @objc var maxSize: CGSize { @objc get @objc (setMaxSize:) set }

  /**
    - Selector: menuFormRepresentation
  */
  @objc var menuFormRepresentation: NSMenuItem? { @objc get @objc (setMenuFormRepresentation:) set }

  /**
    - Selector: minSize
  */
  @objc var minSize: CGSize { @objc get @objc (setMinSize:) set }

  /**
    - Selector: paletteLabel
  */
  @objc var paletteLabel: String { @objc get @objc (setPaletteLabel:) set }

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
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: toolTip
  */
  @objc var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - Selector: toolbar
  */
  @objc var toolbar: NSToolbar? { @objc get }

  /**
    - Selector: view
  */
  @objc var view: NSView? { @objc get @objc (setView:) set }

  /**
    - Selector: visibilityPriority
  */
  @objc var visibilityPriority: NSToolbarItem.VisibilityPriority { @objc get @objc (setVisibilityPriority:) set }
}

extension NSToolbarItem: NSToolbarItemExports {
}
