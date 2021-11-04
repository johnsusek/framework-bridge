import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSToolbar
  */

@objc(NSToolbar) protocol NSToolbarExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: insertItemWithItemIdentifier:atIndex:
  */
  @objc (insertItemWithItemIdentifier:atIndex:) func insertItem(withItemIdentifier: NSToolbarItem.Identifier, at: Int)

  /**
    - Selector: removeItemAtIndex:
  */
  @objc (removeItemAtIndex:) func removeItem(at: Int)

  /**
    - Selector: runCustomizationPalette:
  */
  @objc func runCustomizationPalette(_: Any?)

  /**
    - Selector: setConfigurationFromDictionary:
  */
  @objc (setConfigurationFromDictionary:) func setConfiguration(_: [String: Any])

  /**
    - Selector: validateVisibleItems
  */
  @objc func validateVisibleItems()

  // Own Instance Properties

  /**
    - Selector: allowsExtensionItems
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowsExtensionItems: Bool { @objc get @objc (setAllowsExtensionItems:) set }

  /**
    - Selector: allowsUserCustomization
  */
  @objc var allowsUserCustomization: Bool { @objc get @objc (setAllowsUserCustomization:) set }

  /**
    - Selector: autosavesConfiguration
  */
  @objc var autosavesConfiguration: Bool { @objc get @objc (setAutosavesConfiguration:) set }

  /**
    - Selector: centeredItemIdentifier
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var centeredItemIdentifier: NSToolbarItem.Identifier? { @objc get @objc (setCenteredItemIdentifier:) set }

  /**
    - Selector: configurationDictionary
  */
  @objc var configuration: [String: Any] { @objc (configurationDictionary) get }

  /**
    - Selector: customizationPaletteIsRunning
  */
  @objc var customizationPaletteIsRunning: Bool { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSToolbarDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displayMode
  */
  @objc var displayMode: NSToolbar.DisplayMode { @objc get @objc (setDisplayMode:) set }

  /**
    - Selector: identifier
  */
  @objc var identifier: NSToolbar.Identifier { @objc get }

  /**
    - Selector: items
  */
  @objc var items: [NSToolbarItem] { @objc get }

  /**
    - Selector: selectedItemIdentifier
  */
  @objc var selectedItemIdentifier: NSToolbarItem.Identifier? { @objc get @objc (setSelectedItemIdentifier:) set }

  /**
    - Selector: showsBaselineSeparator
  */
  @objc var showsBaselineSeparator: Bool { @objc get @objc (setShowsBaselineSeparator:) set }

  /**
    - Selector: sizeMode
  */
  @objc var sizeMode: NSToolbar.SizeMode { @objc get @objc (setSizeMode:) set }

  /**
    - Selector: visible
  */
  @objc var isVisible: Bool { @objc get @objc (setVisible:) set }

  /**
    - Selector: visibleItems
  */
  @objc var visibleItems: [NSToolbarItem]? { @objc get }
}

extension NSToolbar: NSToolbarExports {
}
