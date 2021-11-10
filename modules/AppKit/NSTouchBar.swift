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
    - Selector: NSTouchBar
    - Introduced: 10.12.2
  */

@objc(NSTouchBar) protocol NSTouchBarExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: automaticCustomizeTouchBarMenuItemEnabled
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var isAutomaticCustomizeTouchBarMenuItemEnabled: Bool { @objc get @objc (setAutomaticCustomizeTouchBarMenuItemEnabled:) set }

  // Instance Methods

  /**
    - Selector: itemForIdentifier:
  */
  @objc (itemForIdentifier:) func item(forIdentifier: NSTouchBarItem.Identifier) -> NSTouchBarItem?

  // Own Instance Properties

  /**
    - Selector: customizationAllowedItemIdentifiers
  */
  @objc var customizationAllowedItemIdentifiers: [NSTouchBarItem.Identifier] { @objc get @objc (setCustomizationAllowedItemIdentifiers:) set }

  /**
    - Selector: customizationIdentifier
  */
  @objc var customizationIdentifier: NSTouchBar.CustomizationIdentifier? { @objc get @objc (setCustomizationIdentifier:) set }

  /**
    - Selector: customizationRequiredItemIdentifiers
  */
  @objc var customizationRequiredItemIdentifiers: [NSTouchBarItem.Identifier] { @objc get @objc (setCustomizationRequiredItemIdentifiers:) set }

  /**
    - Selector: defaultItemIdentifiers
  */
  @objc var defaultItemIdentifiers: [NSTouchBarItem.Identifier] { @objc get @objc (setDefaultItemIdentifiers:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTouchBarDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: escapeKeyReplacementItemIdentifier
  */
  @objc var escapeKeyReplacementItemIdentifier: NSTouchBarItem.Identifier? { @objc get @objc (setEscapeKeyReplacementItemIdentifier:) set }

  /**
    - Selector: itemIdentifiers
  */
  @objc var itemIdentifiers: [NSTouchBarItem.Identifier] { @objc get }

  /**
    - Selector: principalItemIdentifier
  */
  @objc var principalItemIdentifier: NSTouchBarItem.Identifier? { @objc get @objc (setPrincipalItemIdentifier:) set }

  /**
    - Selector: templateItems
  */
  @objc var templateItems: Set<NSTouchBarItem> { @objc get @objc (setTemplateItems:) set }

  /**
    - Selector: visible
  */
  @objc var isVisible: Bool { @objc get }
}

extension NSTouchBar: NSTouchBarExports {
}
