import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSharingServicePicker
    - name: NSSharingServicePicker
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSSharingServicePicker) protocol NSSharingServicePickerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: show
    - name: showRelativeToRect:ofView:preferredEdge:
    - argLabels: relativeTo, of, preferredEdge
    - constructorTokens: 
    - obsoleted: 3
    - renamed: show(relativeTo:of:preferredEdge:)
  */
  @objc (showRelativeToRect:ofView:preferredEdge:) func show(relativeTo: CGRect, of: NSView, preferredEdge: NSRectEdge)

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSharingServicePickerDelegate? { @objc get @objc (setDelegate:) set }
}

extension NSSharingServicePicker: NSSharingServicePickerExports {
}
