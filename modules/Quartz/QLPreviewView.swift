import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Quartz

// Interface 

  /**
    - Selector: QLPreviewView
    - Introduced: 10.6
  */

@objc(QLPreviewView) protocol QLPreviewViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: close
  */
  @objc func close()

  /**
    - Selector: refreshPreviewItem
  */
  @objc func refreshPreviewItem()

  // Own Instance Properties

  /**
    - Selector: autostarts
  */
  @objc var autostarts: Bool { @objc get @objc (setAutostarts:) set }

  /**
    - Selector: displayState
  */
  @objc var displayState: Any { @objc get @objc (setDisplayState:) set }

  /**
    - Selector: previewItem
  */
  @objc var previewItem: QLPreviewItem { @objc get @objc (setPreviewItem:) set }

  /**
    - Selector: shouldCloseWithWindow
  */
  @objc var shouldCloseWithWindow: Bool { @objc get @objc (setShouldCloseWithWindow:) set }
}

extension QLPreviewView: QLPreviewViewExports {
}
