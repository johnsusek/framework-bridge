import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSHelpManager
    - name: NSHelpManager
    - argLabels: 
  */

@objc(NSHelpManager) protocol NSHelpManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: isContextHelpModeActive
    - name: contextHelpModeActive
    - argLabels: 
    - obsoleted: 3
    - renamed: isContextHelpModeActive
  */
  @objc static var isContextHelpModeActive: Bool { @objc get @objc (setContextHelpModeActive:) set }

  /**
    - jsName: shared
    - name: sharedHelpManager
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSHelpManager { @objc (sharedHelpManager) get }

  // Instance Methods

  /**
    - jsName: contextHelp
    - name: contextHelpForObject:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: contextHelp(for:)
  */
  @objc (contextHelpForObject:) func contextHelp(`for`: Any) -> NSAttributedString?

  /**
    - jsName: find
    - name: findString:inBook:
    - argLabels: _, inBook
    - constructorTokens: 
    - obsoleted: 3
    - renamed: find(_:inBook:)
  */
  @objc (findString:inBook:) func find(_: String, inBook: NSHelpManager.BookName?)

  /**
    - jsName: openHelpAnchor
    - name: openHelpAnchor:inBook:
    - argLabels: inBook
    - constructorTokens: 
  */
  @objc func openHelpAnchor(_: NSHelpManager.AnchorName, inBook: NSHelpManager.BookName?)

  /**
    - jsName: registerBooks
    - name: registerBooksInBundle:
    - argLabels: in
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: registerBooks(in:)
    - Introduced: 10.6
  */
  @objc (registerBooksInBundle:) @available(OSX 10.6, *) func registerBooks(in: Bundle) -> Bool

  /**
    - jsName: removeContextHelp
    - name: removeContextHelpForObject:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeContextHelp(for:)
  */
  @objc (removeContextHelpForObject:) func removeContextHelp(`for`: Any)

  /**
    - jsName: setContextHelp
    - name: setContextHelp:forObject:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setContextHelp(_:for:)
  */
  @objc (setContextHelp:forObject:) func setContextHelp(_: NSAttributedString, `for`: Any)

  /**
    - jsName: showContextHelp
    - name: showContextHelpForObject:locationHint:
    - argLabels: for, locationHint
    - constructorTokens: 
    - obsoleted: 3
    - renamed: showContextHelp(for:locationHint:)
  */
  @objc (showContextHelpForObject:locationHint:) func showContextHelp(`for`: Any, locationHint: CGPoint) -> Bool
}

extension NSHelpManager: NSHelpManagerExports {
}
