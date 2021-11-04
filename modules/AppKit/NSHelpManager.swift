import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSHelpManager
  */

@objc(NSHelpManager) protocol NSHelpManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: contextHelpModeActive
  */
  @objc static var isContextHelpModeActive: Bool { @objc get @objc (setContextHelpModeActive:) set }

  /**
    - Selector: sharedHelpManager
  */
  @objc static var shared: NSHelpManager { @objc (sharedHelpManager) get }

  // Instance Methods

  /**
    - Selector: contextHelpForObject:
  */
  @objc (contextHelpForObject:) func contextHelp(`for`: Any) -> NSAttributedString?

  /**
    - Selector: findString:inBook:
  */
  @objc (findString:inBook:) func find(_: String, inBook: NSHelpManager.BookName?)

  /**
    - Selector: openHelpAnchor:inBook:
  */
  @objc func openHelpAnchor(_: NSHelpManager.AnchorName, inBook: NSHelpManager.BookName?)

  /**
    - Selector: registerBooksInBundle:
    - Introduced: 10.6
  */
  @objc (registerBooksInBundle:) @available(OSX 10.6, *) func registerBooks(in: Bundle) -> Bool

  /**
    - Selector: removeContextHelpForObject:
  */
  @objc (removeContextHelpForObject:) func removeContextHelp(`for`: Any)

  /**
    - Selector: setContextHelp:forObject:
  */
  @objc (setContextHelp:forObject:) func setContextHelp(_: NSAttributedString, `for`: Any)

  /**
    - Selector: showContextHelpForObject:locationHint:
  */
  @objc (showContextHelpForObject:locationHint:) func showContextHelp(`for`: Any, locationHint: CGPoint) -> Bool
}

extension NSHelpManager: NSHelpManagerExports {
}
