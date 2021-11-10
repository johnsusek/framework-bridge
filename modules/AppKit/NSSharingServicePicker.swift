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
    - Selector: NSSharingServicePicker
    - Introduced: 10.8
  */

@objc(NSSharingServicePicker) protocol NSSharingServicePickerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: showRelativeToRect:ofView:preferredEdge:
  */
  @objc (showRelativeToRect:ofView:preferredEdge:) func show(relativeTo: CGRect, of: NSView, preferredEdge: NSRectEdge)

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSharingServicePickerDelegate? { @objc get @objc (setDelegate:) set }
}

extension NSSharingServicePicker: NSSharingServicePickerExports {
}
