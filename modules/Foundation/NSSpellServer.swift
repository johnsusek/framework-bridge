import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSSpellServer
  */

@objc(NSSpellServer) protocol NSSpellServerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: isWordInUserDictionaries:caseSensitive:
  */
  @objc (isWordInUserDictionaries:caseSensitive:) func isWord(inUserDictionaries: String, caseSensitive: Bool) -> Bool

  /**
    - Selector: registerLanguage:byVendor:
  */
  @objc func registerLanguage(_: String?, byVendor: String?) -> Bool

  /**
    - Selector: run
  */
  @objc func run()

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSpellServerDelegate? { @objc get @objc (setDelegate:) set }
}

extension NSSpellServer: NSSpellServerExports {
}
