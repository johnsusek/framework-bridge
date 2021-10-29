import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTabViewItem
    - name: NSTabViewItem
    - argLabels: 
  */

@objc(NSTabViewItem) protocol NSTabViewItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: drawLabel
    - name: drawLabel:inRect:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawLabel(_:in:)
  */
  @objc (drawLabel:inRect:) func drawLabel(_: Bool, in: CGRect)

  /**
    - jsName: sizeOfLabel
    - name: sizeOfLabel:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (sizeOfLabel:) func sizeOfLabel(_: Bool) -> CGSize

  // Own Instance Properties

  /**
    - jsName: color
    - name: color
    - argLabels: 
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: Any? { @objc get @objc (setIdentifier:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: initialFirstResponder
    - name: initialFirstResponder
    - argLabels: 
  */
  @objc var initialFirstResponder: NSView? { @objc get @objc (setInitialFirstResponder:) set }

  /**
    - jsName: label
    - name: label
    - argLabels: 
  */
  @objc var label: String { @objc get @objc (setLabel:) set }

  /**
    - jsName: tabState
    - name: tabState
    - argLabels: 
  */
  @objc var tabState: NSTabViewItem.State { @objc get }

  /**
    - jsName: tabView
    - name: tabView
    - argLabels: 
  */
  @objc var tabView: NSTabView? { @objc get }

  /**
    - jsName: toolTip
    - name: toolTip
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView? { @objc get @objc (setView:) set }

  /**
    - jsName: viewController
    - name: viewController
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var viewController: NSViewController? { @objc get @objc (setViewController:) set }
}

extension NSTabViewItem: NSTabViewItemExports {
}
