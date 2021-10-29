import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSToolbar
    - name: NSToolbar
    - argLabels: 
  */

@objc(NSToolbar) protocol NSToolbarExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: insertItem
    - name: insertItemWithItemIdentifier:atIndex:
    - argLabels: withItemIdentifier, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertItem(withItemIdentifier:at:)
  */
  @objc (insertItemWithItemIdentifier:atIndex:) func insertItem(withItemIdentifier: NSToolbarItem.Identifier, at: Int)

  /**
    - jsName: removeItem
    - name: removeItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeItem(at:)
  */
  @objc (removeItemAtIndex:) func removeItem(at: Int)

  /**
    - jsName: runCustomizationPalette
    - name: runCustomizationPalette:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runCustomizationPalette(_: Any?)

  /**
    - jsName: setConfiguration
    - name: setConfigurationFromDictionary:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setConfiguration(_:)
  */
  @objc (setConfigurationFromDictionary:) func setConfiguration(_: [String: Any])

  /**
    - jsName: validateVisibleItems
    - name: validateVisibleItems
    - argLabels: 
    - constructorTokens: 
  */
  @objc func validateVisibleItems()

  // Own Instance Properties

  /**
    - jsName: allowsExtensionItems
    - name: allowsExtensionItems
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowsExtensionItems: Bool { @objc get @objc (setAllowsExtensionItems:) set }

  /**
    - jsName: allowsUserCustomization
    - name: allowsUserCustomization
    - argLabels: 
  */
  @objc var allowsUserCustomization: Bool { @objc get @objc (setAllowsUserCustomization:) set }

  /**
    - jsName: autosavesConfiguration
    - name: autosavesConfiguration
    - argLabels: 
  */
  @objc var autosavesConfiguration: Bool { @objc get @objc (setAutosavesConfiguration:) set }

  /**
    - jsName: centeredItemIdentifier
    - name: centeredItemIdentifier
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var centeredItemIdentifier: NSToolbarItem.Identifier? { @objc get @objc (setCenteredItemIdentifier:) set }

  /**
    - jsName: configuration
    - name: configurationDictionary
    - argLabels: 
    - obsoleted: 3
    - renamed: configuration
  */
  @objc var configuration: [String: Any] { @objc (configurationDictionary) get }

  /**
    - jsName: customizationPaletteIsRunning
    - name: customizationPaletteIsRunning
    - argLabels: 
  */
  @objc var customizationPaletteIsRunning: Bool { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSToolbarDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: displayMode
    - name: displayMode
    - argLabels: 
  */
  @objc var displayMode: NSToolbar.DisplayMode { @objc get @objc (setDisplayMode:) set }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSToolbar.Identifier { @objc get }

  /**
    - jsName: items
    - name: items
    - argLabels: 
  */
  @objc var items: [NSToolbarItem] { @objc get }

  /**
    - jsName: selectedItemIdentifier
    - name: selectedItemIdentifier
    - argLabels: 
  */
  @objc var selectedItemIdentifier: NSToolbarItem.Identifier? { @objc get @objc (setSelectedItemIdentifier:) set }

  /**
    - jsName: showsBaselineSeparator
    - name: showsBaselineSeparator
    - argLabels: 
  */
  @objc var showsBaselineSeparator: Bool { @objc get @objc (setShowsBaselineSeparator:) set }

  /**
    - jsName: sizeMode
    - name: sizeMode
    - argLabels: 
  */
  @objc var sizeMode: NSToolbar.SizeMode { @objc get @objc (setSizeMode:) set }

  /**
    - jsName: isVisible
    - name: visible
    - argLabels: 
    - obsoleted: 3
    - renamed: isVisible
  */
  @objc var isVisible: Bool { @objc get @objc (setVisible:) set }

  /**
    - jsName: visibleItems
    - name: visibleItems
    - argLabels: 
  */
  @objc var visibleItems: [NSToolbarItem]? { @objc get }
}

extension NSToolbar: NSToolbarExports {
}
