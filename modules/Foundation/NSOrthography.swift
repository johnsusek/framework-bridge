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
    - Selector: NSOrthography
    - Introduced: 10.6
  */

@objc(NSOrthography) protocol NSOrthographyExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: defaultOrthographyForLanguage:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithForLanguage(_ forLanguage: String) -> Self

  /**
    - Selector: orthographyWithDominantScript:languageMap:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithDominantScript_LanguageMap(_ dominantScript: String, _ languageMap: [String: [String]]) -> Self

  // Instance Methods

  /**
    - Selector: dominantLanguageForScript:
    - Introduced: 10.6
  */
  @objc (dominantLanguageForScript:) @available(OSX 10.6, *) func dominantLanguage(forScript: String) -> String?

  /**
    - Selector: languagesForScript:
    - Introduced: 10.6
  */
  @objc (languagesForScript:) @available(OSX 10.6, *) func languages(forScript: String) -> [String]?

  // Own Instance Properties

  /**
    - Selector: allLanguages
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allLanguages: [String] { @objc get }

  /**
    - Selector: allScripts
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allScripts: [String] { @objc get }

  /**
    - Selector: dominantLanguage
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var dominantLanguage: String { @objc get }

  /**
    - Selector: dominantScript
  */
  @objc var dominantScript: String { @objc get }

  /**
    - Selector: languageMap
  */
  @objc var languageMap: [String: [String]] { @objc get }
}

extension NSOrthography: NSOrthographyExports {

  /**
    - Selector: defaultOrthographyForLanguage:
    - Introduced: 10.13
  */
  @objc public static func createWithForLanguage(_ forLanguage: String) -> Self {
    return self.defaultOrthography(forLanguage: forLanguage)
  }


  /**
    - Selector: orthographyWithDominantScript:languageMap:
    - Introduced: 10.6
  */
  @objc public static func createWithDominantScript_LanguageMap(_ dominantScript: String, _ languageMap: [String: [String]]) -> Self {
    return self.init(dominantScript: dominantScript, languageMap: languageMap)
  }

}
