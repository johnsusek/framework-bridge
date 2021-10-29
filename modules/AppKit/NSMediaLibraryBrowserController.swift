import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMediaLibraryBrowserController
    - name: NSMediaLibraryBrowserController
    - argLabels: 
    - Introduced: 10.9
  */

@objc(NSMediaLibraryBrowserController) protocol NSMediaLibraryBrowserControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedMediaLibraryBrowserController
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSMediaLibraryBrowserController { @objc (sharedMediaLibraryBrowserController) get }

  // Instance Methods

  /**
    - jsName: togglePanel
    - name: togglePanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func togglePanel(_: Any?)

  // Own Instance Properties

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - jsName: mediaLibraries
    - name: mediaLibraries
    - argLabels: 
  */
  @objc var mediaLibraries: NSMediaLibraryBrowserController.Library { @objc get @objc (setMediaLibraries:) set }

  /**
    - jsName: isVisible
    - name: visible
    - argLabels: 
    - obsoleted: 3
    - renamed: isVisible
  */
  @objc var isVisible: Bool { @objc get @objc (setVisible:) set }
}

extension NSMediaLibraryBrowserController: NSMediaLibraryBrowserControllerExports {
}
