import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTouchBar
    - name: NSTouchBar
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSTouchBar) protocol NSTouchBarExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: isAutomaticCustomizeTouchBarMenuItemEnabled
    - name: automaticCustomizeTouchBarMenuItemEnabled
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: isAutomaticCustomizeTouchBarMenuItemEnabled
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var isAutomaticCustomizeTouchBarMenuItemEnabled: Bool { @objc get @objc (setAutomaticCustomizeTouchBarMenuItemEnabled:) set }

  // Instance Methods

  /**
    - jsName: item
    - name: itemForIdentifier:
    - argLabels: forIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: item(forIdentifier:)
  */
  @objc (itemForIdentifier:) func item(forIdentifier: NSTouchBarItem.Identifier) -> NSTouchBarItem?

  // Own Instance Properties

  /**
    - jsName: customizationAllowedItemIdentifiers
    - name: customizationAllowedItemIdentifiers
    - argLabels: 
  */
  @objc var customizationAllowedItemIdentifiers: [NSTouchBarItem.Identifier] { @objc get @objc (setCustomizationAllowedItemIdentifiers:) set }

  /**
    - jsName: customizationIdentifier
    - name: customizationIdentifier
    - argLabels: 
  */
  @objc var customizationIdentifier: NSTouchBar.CustomizationIdentifier? { @objc get @objc (setCustomizationIdentifier:) set }

  /**
    - jsName: customizationRequiredItemIdentifiers
    - name: customizationRequiredItemIdentifiers
    - argLabels: 
  */
  @objc var customizationRequiredItemIdentifiers: [NSTouchBarItem.Identifier] { @objc get @objc (setCustomizationRequiredItemIdentifiers:) set }

  /**
    - jsName: defaultItemIdentifiers
    - name: defaultItemIdentifiers
    - argLabels: 
  */
  @objc var defaultItemIdentifiers: [NSTouchBarItem.Identifier] { @objc get @objc (setDefaultItemIdentifiers:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTouchBarDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: escapeKeyReplacementItemIdentifier
    - name: escapeKeyReplacementItemIdentifier
    - argLabels: 
  */
  @objc var escapeKeyReplacementItemIdentifier: NSTouchBarItem.Identifier? { @objc get @objc (setEscapeKeyReplacementItemIdentifier:) set }

  /**
    - jsName: itemIdentifiers
    - name: itemIdentifiers
    - argLabels: 
  */
  @objc var itemIdentifiers: [NSTouchBarItem.Identifier] { @objc get }

  /**
    - jsName: principalItemIdentifier
    - name: principalItemIdentifier
    - argLabels: 
  */
  @objc var principalItemIdentifier: NSTouchBarItem.Identifier? { @objc get @objc (setPrincipalItemIdentifier:) set }

  /**
    - jsName: templateItems
    - name: templateItems
    - argLabels: 
  */
  @objc var templateItems: Set<NSTouchBarItem> { @objc get @objc (setTemplateItems:) set }

  /**
    - jsName: isVisible
    - name: visible
    - argLabels: 
    - obsoleted: 3
    - renamed: isVisible
  */
  @objc var isVisible: Bool { @objc get }
}

extension NSTouchBar: NSTouchBarExports {
}
