import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPathControl
    - name: NSPathControl
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSPathControl) protocol NSPathControlExports: JSExport, NSControlExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: setDraggingSourceOperationMask
    - name: setDraggingSourceOperationMask:forLocal:
    - argLabels: forLocal
    - constructorTokens: 
  */
  @objc func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  // Own Instance Properties

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
  */
  @objc var url: URL? { @objc (URL) get @objc (setURL:) set }

  /**
    - jsName: allowedTypes
    - name: allowedTypes
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowedTypes: [String]? { @objc get @objc (setAllowedTypes:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: clickedPathItem
    - name: clickedPathItem
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var clickedPathItem: NSPathControlItem? { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSPathControlDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: doubleAction
    - name: doubleAction
    - argLabels: 
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isEditable
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: pathItems
    - name: pathItems
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var pathItems: [NSPathControlItem] { @objc get @objc (setPathItems:) set }

  /**
    - jsName: pathStyle
    - name: pathStyle
    - argLabels: 
  */
  @objc var pathStyle: NSPathControl.Style { @objc get @objc (setPathStyle:) set }

  /**
    - jsName: placeholderAttributedString
    - name: placeholderAttributedString
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - jsName: placeholderString
    - name: placeholderString
    - argLabels: 
    - available: 10.10
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
