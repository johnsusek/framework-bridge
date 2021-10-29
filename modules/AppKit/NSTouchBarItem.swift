import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTouchBarItem
    - name: NSTouchBarItem
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSTouchBarItem) protocol NSTouchBarItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: customizationLabel
    - name: customizationLabel
    - argLabels: 
  */
  @objc var customizationLabel: String { @objc get }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSTouchBarItem.Identifier { @objc get }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView? { @objc get }

  /**
    - jsName: viewController
    - name: viewController
    - argLabels: 
  */
  @objc var viewController: NSViewController? { @objc get }

  /**
    - jsName: visibilityPriority
    - name: visibilityPriority
    - argLabels: 
  */
  @objc var visibilityPriority: NSTouchBarItem.Priority { @objc get @objc (setVisibilityPriority:) set }

  /**
    - jsName: isVisible
    - name: visible
    - argLabels: 
    - obsoleted: 3
    - renamed: isVisible
  */
  @objc var isVisible: Bool { @objc get }
}

extension NSTouchBarItem: NSTouchBarItemExports {
}
