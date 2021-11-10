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
    - Selector: NSMediaLibraryBrowserController
    - Introduced: 10.9
  */

@objc(NSMediaLibraryBrowserController) protocol NSMediaLibraryBrowserControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedMediaLibraryBrowserController
  */
  @objc static var shared: NSMediaLibraryBrowserController { @objc (sharedMediaLibraryBrowserController) get }

  // Instance Methods

  /**
    - Selector: togglePanel:
  */
  @objc func togglePanel(_: Any?)

  // Own Instance Properties

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - Selector: mediaLibraries
  */
  @objc var mediaLibraries: NSMediaLibraryBrowserController.Library { @objc get @objc (setMediaLibraries:) set }

  /**
    - Selector: visible
  */
  @objc var isVisible: Bool { @objc get @objc (setVisible:) set }
}

extension NSMediaLibraryBrowserController: NSMediaLibraryBrowserControllerExports {
}
