import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPathControl
    - Introduced: 10.5
  */

@objc(NSPathControl) protocol NSPathControlExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: setDraggingSourceOperationMask:forLocal:
  */
  @objc func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get @objc (setURL:) set }

  /**
    - Selector: allowedTypes
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowedTypes: [String]? { @objc get @objc (setAllowedTypes:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: clickedPathItem
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var clickedPathItem: NSPathControlItem? { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSPathControlDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: doubleAction
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - Selector: editable
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: pathItems
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var pathItems: [NSPathControlItem] { @objc get @objc (setPathItems:) set }

  /**
    - Selector: pathStyle
  */
  @objc var pathStyle: NSPathControl.Style { @objc get @objc (setPathStyle:) set }

  /**
    - Selector: placeholderAttributedString
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - Selector: placeholderString
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderString: String? { @objc get @objc (setPlaceholderString:) set }
}

@objc protocol PathControlExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(PathControl) public class PathControl: NSPathControl, PathControlExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSPathControl: NSPathControlExports {
}
