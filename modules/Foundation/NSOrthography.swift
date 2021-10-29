import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSOrthography
    - name: NSOrthography
    - argLabels: 
    - Introduced: 10.6
  */

@objc(NSOrthography) protocol NSOrthographyExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: defaultOrthography
    - name: defaultOrthographyForLanguage:
    - argLabels: forLanguage
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: defaultOrthography(forLanguage:)
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func defaultOrthography(forLanguage: String) -> Self

  /**
    - jsName: create
    - name: orthographyWithDominantScript:languageMap:
    - argLabels: dominantScript, languageMap
    - constructorTokens: 
    - available: 10.6
    - unavailable: true
    - renamed: init(dominantScript:languageMap:)
    - message: Not available in Swift
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func create(dominantScript: String, languageMap: [String: [String]]) -> Self

  // Instance Methods

  /**
    - jsName: dominantLanguage
    - name: dominantLanguageForScript:
    - argLabels: forScript
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: dominantLanguage(forScript:)
    - Introduced: 10.6
  */
  @objc (dominantLanguageForScript:) @available(OSX 10.6, *) func dominantLanguage(forScript: String) -> String?

  /**
    - jsName: languages
    - name: languagesForScript:
    - argLabels: forScript
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: languages(forScript:)
    - Introduced: 10.6
  */
  @objc (languagesForScript:) @available(OSX 10.6, *) func languages(forScript: String) -> [String]?

  // Own Instance Properties

  /**
    - jsName: allLanguages
    - name: allLanguages
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allLanguages: [String] { @objc get }

  /**
    - jsName: allScripts
    - name: allScripts
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allScripts: [String] { @objc get }

  /**
    - jsName: dominantLanguage
    - name: dominantLanguage
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var dominantLanguage: String { @objc get }

  /**
    - jsName: dominantScript
    - name: dominantScript
    - argLabels: 
  */
  @objc var dominantScript: String { @objc get }

  /**
    - jsName: languageMap
    - name: languageMap
    - argLabels: 
  */
  @objc var languageMap: [String: [String]] { @objc get }
}

extension NSOrthography: NSOrthographyExports {
  @objc public static func defaultOrthography(forLanguage: String) -> Self {
    return self.defaultOrthography(forLanguage: forLanguage)
  }

  @objc public static func create(dominantScript: String, languageMap: [String: [String]]) -> Self {
    return self.init(dominantScript: dominantScript, languageMap: languageMap)
  }

}
