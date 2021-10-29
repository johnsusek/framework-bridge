import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSToolbarItem
    - name: NSToolbarItem
    - argLabels: 
  */

@objc(NSToolbarItem) protocol NSToolbarItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithItemIdentifier
    - name: initWithItemIdentifier:
    - argLabels: 
    - constructorTokens: itemIdentifier
  */
  @objc static func createWithItemIdentifier(_: NSToolbarItem.Identifier) -> Self

  /**
    - jsName: validate
    - name: validate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func validate()

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: allowsDuplicatesInToolbar
    - name: allowsDuplicatesInToolbar
    - argLabels: 
  */
  @objc var allowsDuplicatesInToolbar: Bool { @objc get }

  /**
    - jsName: autovalidates
    - name: autovalidates
    - argLabels: 
  */
  @objc var autovalidates: Bool { @objc get @objc (setAutovalidates:) set }

  /**
    - jsName: isBordered
    - name: bordered
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: isBordered
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: itemIdentifier
    - name: itemIdentifier
    - argLabels: 
  */
  @objc var itemIdentifier: NSToolbarItem.Identifier { @objc get }

  /**
    - jsName: label
    - name: label
    - argLabels: 
  */
  @objc var label: String { @objc get @objc (setLabel:) set }

  /**
    - jsName: maxSize
    - name: maxSize
    - argLabels: 
    - introduced: 10.0
    - deprecated: 100000
    - message: This property is no longer recommended. Instead, let the system automatically measure the size of the view using constraints.
  */
  @objc var maxSize: CGSize { @objc get @objc (setMaxSize:) set }

  /**
    - jsName: menuFormRepresentation
    - name: menuFormRepresentation
    - argLabels: 
  */
  @objc var menuFormRepresentation: NSMenuItem? { @objc get @objc (setMenuFormRepresentation:) set }

  /**
    - jsName: minSize
    - name: minSize
    - argLabels: 
    - introduced: 10.0
    - deprecated: 100000
    - message: This property is no longer recommended. Instead, let the system automatically measure the size of the view using constraints.
  */
  @objc var minSize: CGSize { @objc get @objc (setMinSize:) set }

  /**
    - jsName: paletteLabel
    - name: paletteLabel
    - argLabels: 
  */
  @objc var paletteLabel: String { @objc get @objc (setPaletteLabel:) set }

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
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: toolTip
    - name: toolTip
    - argLabels: 
  */
  @objc var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - jsName: toolbar
    - name: toolbar
    - argLabels: 
  */
  @objc var toolbar: NSToolbar? { @objc get }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView? { @objc get @objc (setView:) set }

  /**
    - jsName: visibilityPriority
    - name: visibilityPriority
    - argLabels: 
  */
  @objc var visibilityPriority: NSToolbarItem.VisibilityPriority { @objc get @objc (setVisibilityPriority:) set }
}

extension NSToolbarItem: NSToolbarItemExports {
  @objc public static func createWithItemIdentifier(_ itemIdentifier: NSToolbarItem.Identifier) -> Self {
    return self.init(itemIdentifier: itemIdentifier)
  }

}
