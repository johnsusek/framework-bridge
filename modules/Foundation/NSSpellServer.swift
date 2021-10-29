import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSSpellServer
    - name: NSSpellServer
    - argLabels: 
  */

@objc(NSSpellServer) protocol NSSpellServerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: isWord
    - name: isWordInUserDictionaries:caseSensitive:
    - argLabels: inUserDictionaries, caseSensitive
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isWord(inUserDictionaries:caseSensitive:)
  */
  @objc (isWordInUserDictionaries:caseSensitive:) func isWord(inUserDictionaries: String, caseSensitive: Bool) -> Bool

  /**
    - jsName: registerLanguage
    - name: registerLanguage:byVendor:
    - argLabels: byVendor
    - constructorTokens: 
  */
  @objc func registerLanguage(_: String?, byVendor: String?) -> Bool

  /**
    - jsName: run
    - name: run
    - argLabels: 
    - constructorTokens: 
  */
  @objc func run()

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSpellServerDelegate? { @objc get @objc (setDelegate:) set }
}

extension NSSpellServer: NSSpellServerExports {
}
