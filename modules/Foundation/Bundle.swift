import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Bundle
    - name: NSBundle
    - argLabels: 
  */

@objc(Bundle) protocol BundleExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: url
    - name: URLForResource:withExtension:subdirectory:inBundleWithURL:
    - argLabels: forResource, withExtension, subdirectory, in
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: url(forResource:withExtension:subdirectory:in:)
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:subdirectory:inBundleWithURL:) @available(OSX 10.6, *) static func url(forResource: String?, withExtension: String?, subdirectory: String?, in: URL) -> URL?

  /**
    - jsName: urls
    - name: URLsForResourcesWithExtension:subdirectory:inBundleWithURL:
    - argLabels: forResourcesWithExtension, subdirectory, in
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: urls(forResourcesWithExtension:subdirectory:in:)
    - Introduced: 10.6
  */
  @objc (URLsForResourcesWithExtension:subdirectory:inBundleWithURL:) @available(OSX 10.6, *) static func urls(forResourcesWithExtension: String?, subdirectory: String?, in: URL) -> [URL]?

  /**
    - jsName: create
    - name: bundleWithPath:
    - argLabels: path
    - constructorTokens: 
    - unavailable: true
    - renamed: init(path:)
    - message: Not available in Swift
  */
  @objc static func create(path: String) -> Self?

  /**
    - jsName: path
    - name: pathForResource:ofType:inDirectory:
    - argLabels: forResource, ofType, inDirectory
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(forResource:ofType:inDirectory:)
  */
  @objc (pathForResource:ofType:inDirectory:) static func path(forResource: String?, ofType: String?, inDirectory: String) -> String?

  /**
    - jsName: paths
    - name: pathsForResourcesOfType:inDirectory:
    - argLabels: forResourcesOfType, inDirectory
    - constructorTokens: 
    - obsoleted: 3
    - renamed: paths(forResourcesOfType:inDirectory:)
  */
  @objc (pathsForResourcesOfType:inDirectory:) static func paths(forResourcesOfType: String?, inDirectory: String) -> [String]

  /**
    - jsName: preferredLocalizations
    - name: preferredLocalizationsFromArray:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: preferredLocalizations(from:)
  */
  @objc (preferredLocalizationsFromArray:) static func preferredLocalizations(from: [String]) -> [String]

  /**
    - jsName: preferredLocalizations
    - name: preferredLocalizationsFromArray:forPreferences:
    - argLabels: from, forPreferences
    - constructorTokens: 
    - obsoleted: 3
    - renamed: preferredLocalizations(from:forPreferences:)
  */
  @objc (preferredLocalizationsFromArray:forPreferences:) static func preferredLocalizations(from: [String], forPreferences: [String]?) -> [String]

  // Own Static Properties

  /**
    - jsName: allBundles
    - name: allBundles
    - argLabels: 
  */
  @objc static var allBundles: [Bundle] { @objc get }

  /**
    - jsName: allFrameworks
    - name: allFrameworks
    - argLabels: 
  */
  @objc static var allFrameworks: [Bundle] { @objc get }

  /**
    - jsName: main
    - name: mainBundle
    - argLabels: 
    - obsoleted: 3
    - renamed: main
  */
  @objc static var main: Bundle { @objc (mainBundle) get }

  // Instance Methods

  /**
    - jsName: url
    - name: URLForAuxiliaryExecutable:
    - argLabels: forAuxiliaryExecutable
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: url(forAuxiliaryExecutable:)
    - Introduced: 10.6
  */
  @objc (URLForAuxiliaryExecutable:) @available(OSX 10.6, *) func url(forAuxiliaryExecutable: String) -> URL?

  /**
    - jsName: urlForImageResource
    - name: URLForImageResource:
    - argLabels: _
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: urlForImageResource(_:)
    - Introduced: 10.6
  */
  @objc (URLForImageResource:) @available(OSX 10.6, *) func urlForImageResource(_: NSImage.Name) -> URL?

  /**
    - jsName: url
    - name: URLForResource:withExtension:
    - argLabels: forResource, withExtension
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: url(forResource:withExtension:)
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:) @available(OSX 10.6, *) func url(forResource: String?, withExtension: String?) -> URL?

  /**
    - jsName: url
    - name: URLForResource:withExtension:subdirectory:
    - argLabels: forResource, withExtension, subdirectory
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: url(forResource:withExtension:subdirectory:)
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:subdirectory:) @available(OSX 10.6, *) func url(forResource: String?, withExtension: String?, subdirectory: String?) -> URL?

  /**
    - jsName: url
    - name: URLForResource:withExtension:subdirectory:localization:
    - argLabels: forResource, withExtension, subdirectory, localization
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: url(forResource:withExtension:subdirectory:localization:)
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:subdirectory:localization:) @available(OSX 10.6, *) func url(forResource: String?, withExtension: String?, subdirectory: String?, localization: String?) -> URL?

  /**
    - jsName: urls
    - name: URLsForResourcesWithExtension:subdirectory:
    - argLabels: forResourcesWithExtension, subdirectory
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: urls(forResourcesWithExtension:subdirectory:)
    - Introduced: 10.6
  */
  @objc (URLsForResourcesWithExtension:subdirectory:) @available(OSX 10.6, *) func urls(forResourcesWithExtension: String?, subdirectory: String?) -> [URL]?

  /**
    - jsName: urls
    - name: URLsForResourcesWithExtension:subdirectory:localization:
    - argLabels: forResourcesWithExtension, subdirectory, localization
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: urls(forResourcesWithExtension:subdirectory:localization:)
    - Introduced: 10.6
  */
  @objc (URLsForResourcesWithExtension:subdirectory:localization:) @available(OSX 10.6, *) func urls(forResourcesWithExtension: String?, subdirectory: String?, localization: String?) -> [URL]?

  /**
    - jsName: classNamed
    - name: classNamed:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func classNamed(_: String) -> AnyClass?

  /**
    - jsName: contextHelp
    - name: contextHelpForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: contextHelp(forKey:)
  */
  @objc (contextHelpForKey:) func contextHelp(forKey: NSHelpManager.ContextHelpKey) -> NSAttributedString?

  /**
    - jsName: image
    - name: imageForResource:
    - argLabels: forResource
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: image(forResource:)
    - Introduced: 10.7
  */
  @objc (imageForResource:) @available(OSX 10.7, *) func image(forResource: NSImage.Name) -> NSImage?

  /**
    - jsName: createWithURL
    - name: initWithURL:
    - argLabels: 
    - constructorTokens: url
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithURL(_: URL) -> Self?

  /**
    - jsName: loadAndReturnError
    - name: loadAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func loadAndReturnError() -> Bool

  /**
    - jsName: loadNibNamed
    - name: loadNibNamed:owner:topLevelObjects:
    - argLabels: owner, topLevelObjects
    - constructorTokens: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func loadNibNamed(_: NSNib.Name, owner: Any?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool

  /**
    - jsName: localizedString
    - name: localizedStringForKey:value:table:
    - argLabels: forKey, value, table
    - constructorTokens: 
    - obsoleted: 3
    - renamed: localizedString(forKey:value:table:)
  */
  @objc (localizedStringForKey:value:table:) func localizedString(forKey: String, value: String?, table: String?) -> String

  /**
    - jsName: object
    - name: objectForInfoDictionaryKey:
    - argLabels: forInfoDictionaryKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: object(forInfoDictionaryKey:)
  */
  @objc (objectForInfoDictionaryKey:) func object(forInfoDictionaryKey: String) -> Any?

  /**
    - jsName: path
    - name: pathForAuxiliaryExecutable:
    - argLabels: forAuxiliaryExecutable
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(forAuxiliaryExecutable:)
  */
  @objc (pathForAuxiliaryExecutable:) func path(forAuxiliaryExecutable: String) -> String?

  /**
    - jsName: pathForImageResource
    - name: pathForImageResource:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pathForImageResource(_: NSImage.Name) -> String?

  /**
    - jsName: path
    - name: pathForResource:ofType:
    - argLabels: forResource, ofType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(forResource:ofType:)
  */
  @objc (pathForResource:ofType:) func path(forResource: String?, ofType: String?) -> String?

  /**
    - jsName: path
    - name: pathForResource:ofType:inDirectory:
    - argLabels: forResource, ofType, inDirectory
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(forResource:ofType:inDirectory:)
  */
  @objc (pathForResource:ofType:inDirectory:) func path(forResource: String?, ofType: String?, inDirectory: String?) -> String?

  /**
    - jsName: path
    - name: pathForResource:ofType:inDirectory:forLocalization:
    - argLabels: forResource, ofType, inDirectory, forLocalization
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(forResource:ofType:inDirectory:forLocalization:)
  */
  @objc (pathForResource:ofType:inDirectory:forLocalization:) func path(forResource: String?, ofType: String?, inDirectory: String?, forLocalization: String?) -> String?

  /**
    - jsName: path
    - name: pathForSoundResource:
    - argLabels: forSoundResource
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(forSoundResource:)
  */
  @objc (pathForSoundResource:) func path(forSoundResource: NSSound.Name) -> String?

  /**
    - jsName: paths
    - name: pathsForResourcesOfType:inDirectory:
    - argLabels: forResourcesOfType, inDirectory
    - constructorTokens: 
    - obsoleted: 3
    - renamed: paths(forResourcesOfType:inDirectory:)
  */
  @objc (pathsForResourcesOfType:inDirectory:) func paths(forResourcesOfType: String?, inDirectory: String?) -> [String]

  /**
    - jsName: paths
    - name: pathsForResourcesOfType:inDirectory:forLocalization:
    - argLabels: forResourcesOfType, inDirectory, forLocalization
    - constructorTokens: 
    - obsoleted: 3
    - renamed: paths(forResourcesOfType:inDirectory:forLocalization:)
  */
  @objc (pathsForResourcesOfType:inDirectory:forLocalization:) func paths(forResourcesOfType: String?, inDirectory: String?, forLocalization: String?) -> [String]

  /**
    - jsName: preflightAndReturnError
    - name: preflightAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func preflightAndReturnError() -> Bool

  /**
    - jsName: unload
    - name: unload
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unload() -> Bool

  // Own Instance Properties

  /**
    - jsName: appStoreReceiptURL
    - name: appStoreReceiptURL
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var appStoreReceiptURL: URL? { @objc get }

  /**
    - jsName: builtInPlugInsPath
    - name: builtInPlugInsPath
    - argLabels: 
  */
  @objc var builtInPlugInsPath: String? { @objc get }

  /**
    - jsName: builtInPlugInsURL
    - name: builtInPlugInsURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var builtInPlugInsURL: URL? { @objc get }

  /**
    - jsName: bundleIdentifier
    - name: bundleIdentifier
    - argLabels: 
  */
  @objc var bundleIdentifier: String? { @objc get }

  /**
    - jsName: bundlePath
    - name: bundlePath
    - argLabels: 
  */
  @objc var bundlePath: String { @objc get }

  /**
    - jsName: bundleURL
    - name: bundleURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var bundleURL: URL { @objc get }

  /**
    - jsName: developmentLocalization
    - name: developmentLocalization
    - argLabels: 
  */
  @objc var developmentLocalization: String? { @objc get }

  /**
    - jsName: executableArchitectures
    - name: executableArchitectures
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var executableArchitectures: [NSNumber]? { @objc get }

  /**
    - jsName: executablePath
    - name: executablePath
    - argLabels: 
  */
  @objc var executablePath: String? { @objc get }

  /**
    - jsName: executableURL
    - name: executableURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var executableURL: URL? { @objc get }

  /**
    - jsName: infoDictionary
    - name: infoDictionary
    - argLabels: 
  */
  @objc var infoDictionary: [String: Any]? { @objc get }

  /**
    - jsName: isLoaded
    - name: loaded
    - argLabels: 
    - obsoleted: 3
    - renamed: isLoaded
  */
  @objc var isLoaded: Bool { @objc get }

  /**
    - jsName: localizations
    - name: localizations
    - argLabels: 
  */
  @objc var localizations: [String] { @objc get }

  /**
    - jsName: localizedInfoDictionary
    - name: localizedInfoDictionary
    - argLabels: 
  */
  @objc var localizedInfoDictionary: [String: Any]? { @objc get }

  /**
    - jsName: preferredLocalizations
    - name: preferredLocalizations
    - argLabels: 
  */
  @objc var preferredLocalizations: [String] { @objc get }

  /**
    - jsName: principalClass
    - name: principalClass
    - argLabels: 
  */
  @objc var principalClass: AnyClass? { @objc get }

  /**
    - jsName: privateFrameworksPath
    - name: privateFrameworksPath
    - argLabels: 
  */
  @objc var privateFrameworksPath: String? { @objc get }

  /**
    - jsName: privateFrameworksURL
    - name: privateFrameworksURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var privateFrameworksURL: URL? { @objc get }

  /**
    - jsName: resourcePath
    - name: resourcePath
    - argLabels: 
  */
  @objc var resourcePath: String? { @objc get }

  /**
    - jsName: resourceURL
    - name: resourceURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var resourceURL: URL? { @objc get }

  /**
    - jsName: sharedFrameworksPath
    - name: sharedFrameworksPath
    - argLabels: 
  */
  @objc var sharedFrameworksPath: String? { @objc get }

  /**
    - jsName: sharedFrameworksURL
    - name: sharedFrameworksURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var sharedFrameworksURL: URL? { @objc get }

  /**
    - jsName: sharedSupportPath
    - name: sharedSupportPath
    - argLabels: 
  */
  @objc var sharedSupportPath: String? { @objc get }

  /**
    - jsName: sharedSupportURL
    - name: sharedSupportURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var sharedSupportURL: URL? { @objc get }
}

extension Bundle: BundleExports {
  @objc public static func create(path: String) -> Self? {
    return self.init(path: path)
  }

  @objc public static func createWithURL(_ url: URL) -> Self? {
    return self.init(url: url)
  }

}
