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
    - Selector: NSBundle
  */

@objc(Bundle) protocol BundleExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: URLForResource:withExtension:subdirectory:inBundleWithURL:
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:subdirectory:inBundleWithURL:) @available(OSX 10.6, *) static func url(forResource: String?, withExtension: String?, subdirectory: String?, in: URL) -> URL?

  /**
    - Selector: URLsForResourcesWithExtension:subdirectory:inBundleWithURL:
    - Introduced: 10.6
  */
  @objc (URLsForResourcesWithExtension:subdirectory:inBundleWithURL:) @available(OSX 10.6, *) static func urls(forResourcesWithExtension: String?, subdirectory: String?, in: URL) -> [URL]?

  /**
    - Selector: bundleForClass:
  */
  @objc static func createWithFor(_ `for`: AnyClass) -> Bundle

  /**
    - Selector: bundleWithIdentifier:
  */
  @objc static func createWithIdentifier(_ identifier: String) -> Bundle?

  /**
    - Selector: bundleWithPath:
  */
  @objc static func createWithPath(_ path: String) -> Self?

  /**
    - Selector: bundleWithURL:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithUrl(_ url: URL) -> Self?

  /**
    - Selector: pathForResource:ofType:inDirectory:
  */
  @objc (pathForResource:ofType:inDirectory:) static func path(forResource: String?, ofType: String?, inDirectory: String) -> String?

  /**
    - Selector: pathsForResourcesOfType:inDirectory:
  */
  @objc (pathsForResourcesOfType:inDirectory:) static func paths(forResourcesOfType: String?, inDirectory: String) -> [String]

  /**
    - Selector: preferredLocalizationsFromArray:
  */
  @objc (preferredLocalizationsFromArray:) static func preferredLocalizations(from: [String]) -> [String]

  /**
    - Selector: preferredLocalizationsFromArray:forPreferences:
  */
  @objc (preferredLocalizationsFromArray:forPreferences:) static func preferredLocalizations(from: [String], forPreferences: [String]?) -> [String]

  // Own Static Properties

  /**
    - Selector: allBundles
  */
  @objc static var allBundles: [Bundle] { @objc get }

  /**
    - Selector: allFrameworks
  */
  @objc static var allFrameworks: [Bundle] { @objc get }

  /**
    - Selector: mainBundle
  */
  @objc static var main: Bundle { @objc (mainBundle) get }

  // Instance Methods

  /**
    - Selector: URLForAuxiliaryExecutable:
    - Introduced: 10.6
  */
  @objc (URLForAuxiliaryExecutable:) @available(OSX 10.6, *) func url(forAuxiliaryExecutable: String) -> URL?

  /**
    - Selector: URLForImageResource:
    - Introduced: 10.6
  */
  @objc (URLForImageResource:) @available(OSX 10.6, *) func urlForImageResource(_: NSImage.Name) -> URL?

  /**
    - Selector: URLForResource:withExtension:
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:) @available(OSX 10.6, *) func url(forResource: String?, withExtension: String?) -> URL?

  /**
    - Selector: URLForResource:withExtension:subdirectory:
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:subdirectory:) @available(OSX 10.6, *) func url(forResource: String?, withExtension: String?, subdirectory: String?) -> URL?

  /**
    - Selector: URLForResource:withExtension:subdirectory:localization:
    - Introduced: 10.6
  */
  @objc (URLForResource:withExtension:subdirectory:localization:) @available(OSX 10.6, *) func url(forResource: String?, withExtension: String?, subdirectory: String?, localization: String?) -> URL?

  /**
    - Selector: URLsForResourcesWithExtension:subdirectory:
    - Introduced: 10.6
  */
  @objc (URLsForResourcesWithExtension:subdirectory:) @available(OSX 10.6, *) func urls(forResourcesWithExtension: String?, subdirectory: String?) -> [URL]?

  /**
    - Selector: URLsForResourcesWithExtension:subdirectory:localization:
    - Introduced: 10.6
  */
  @objc (URLsForResourcesWithExtension:subdirectory:localization:) @available(OSX 10.6, *) func urls(forResourcesWithExtension: String?, subdirectory: String?, localization: String?) -> [URL]?

  /**
    - Selector: classNamed:
  */
  @objc func classNamed(_: String) -> AnyClass?

  /**
    - Selector: contextHelpForKey:
  */
  @objc (contextHelpForKey:) func contextHelp(forKey: NSHelpManager.ContextHelpKey) -> NSAttributedString?

  /**
    - Selector: imageForResource:
    - Introduced: 10.7
  */
  @objc (imageForResource:) @available(OSX 10.7, *) func image(forResource: NSImage.Name) -> NSImage?

  /**
    - Selector: loadAndReturnError:
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func loadAndReturnError() -> Bool

  /**
    - Selector: loadNibNamed:owner:topLevelObjects:
    - Introduced: 10.8
  */
  @objc (loadNibNamed:owner:topLevelObjects:) @available(OSX 10.8, *) func loadNibNamed(_: NSNib.Name, owner: Any?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool

  /**
    - Selector: localizedStringForKey:value:table:
  */
  @objc (localizedStringForKey:value:table:) func localizedString(forKey: String, value: String?, table: String?) -> String

  /**
    - Selector: objectForInfoDictionaryKey:
  */
  @objc (objectForInfoDictionaryKey:) func object(forInfoDictionaryKey: String) -> Any?

  /**
    - Selector: pathForAuxiliaryExecutable:
  */
  @objc (pathForAuxiliaryExecutable:) func path(forAuxiliaryExecutable: String) -> String?

  /**
    - Selector: pathForImageResource:
  */
  @objc (pathForImageResource:) func pathForImageResource(_: NSImage.Name) -> String?

  /**
    - Selector: pathForResource:ofType:
  */
  @objc (pathForResource:ofType:) func path(forResource: String?, ofType: String?) -> String?

  /**
    - Selector: pathForResource:ofType:inDirectory:
  */
  @objc (pathForResource:ofType:inDirectory:) func path(forResource: String?, ofType: String?, inDirectory: String?) -> String?

  /**
    - Selector: pathForResource:ofType:inDirectory:forLocalization:
  */
  @objc (pathForResource:ofType:inDirectory:forLocalization:) func path(forResource: String?, ofType: String?, inDirectory: String?, forLocalization: String?) -> String?

  /**
    - Selector: pathForSoundResource:
  */
  @objc (pathForSoundResource:) func path(forSoundResource: NSSound.Name) -> String?

  /**
    - Selector: pathsForResourcesOfType:inDirectory:
  */
  @objc (pathsForResourcesOfType:inDirectory:) func paths(forResourcesOfType: String?, inDirectory: String?) -> [String]

  /**
    - Selector: pathsForResourcesOfType:inDirectory:forLocalization:
  */
  @objc (pathsForResourcesOfType:inDirectory:forLocalization:) func paths(forResourcesOfType: String?, inDirectory: String?, forLocalization: String?) -> [String]

  /**
    - Selector: preflightAndReturnError:
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func preflightAndReturnError() -> Bool

  /**
    - Selector: unload
  */
  @objc func unload() -> Bool

  // Own Instance Properties

  /**
    - Selector: appStoreReceiptURL
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var appStoreReceiptURL: URL? { @objc get }

  /**
    - Selector: builtInPlugInsPath
  */
  @objc var builtInPlugInsPath: String? { @objc get }

  /**
    - Selector: builtInPlugInsURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var builtInPlugInsURL: URL? { @objc get }

  /**
    - Selector: bundleIdentifier
  */
  @objc var bundleIdentifier: String? { @objc get }

  /**
    - Selector: bundlePath
  */
  @objc var bundlePath: String { @objc get }

  /**
    - Selector: bundleURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var bundleURL: URL { @objc get }

  /**
    - Selector: developmentLocalization
  */
  @objc var developmentLocalization: String? { @objc get }

  /**
    - Selector: executableArchitectures
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var executableArchitectures: [NSNumber]? { @objc get }

  /**
    - Selector: executablePath
  */
  @objc var executablePath: String? { @objc get }

  /**
    - Selector: executableURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var executableURL: URL? { @objc get }

  /**
    - Selector: infoDictionary
  */
  @objc var infoDictionary: [String: Any]? { @objc get }

  /**
    - Selector: loaded
  */
  @objc var isLoaded: Bool { @objc get }

  /**
    - Selector: localizations
  */
  @objc var localizations: [String] { @objc get }

  /**
    - Selector: localizedInfoDictionary
  */
  @objc var localizedInfoDictionary: [String: Any]? { @objc get }

  /**
    - Selector: preferredLocalizations
  */
  @objc var preferredLocalizations: [String] { @objc get }

  /**
    - Selector: principalClass
  */
  @objc var principalClass: AnyClass? { @objc get }

  /**
    - Selector: privateFrameworksPath
  */
  @objc var privateFrameworksPath: String? { @objc get }

  /**
    - Selector: privateFrameworksURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var privateFrameworksURL: URL? { @objc get }

  /**
    - Selector: resourcePath
  */
  @objc var resourcePath: String? { @objc get }

  /**
    - Selector: resourceURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var resourceURL: URL? { @objc get }

  /**
    - Selector: sharedFrameworksPath
  */
  @objc var sharedFrameworksPath: String? { @objc get }

  /**
    - Selector: sharedFrameworksURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var sharedFrameworksURL: URL? { @objc get }

  /**
    - Selector: sharedSupportPath
  */
  @objc var sharedSupportPath: String? { @objc get }

  /**
    - Selector: sharedSupportURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var sharedSupportURL: URL? { @objc get }
}

extension Bundle: BundleExports {

  /**
    - Selector: bundleForClass:
  */
  @objc public static func createWithFor(_ `for`: AnyClass) -> Bundle {
    return self.init(for: `for`)
  }


  /**
    - Selector: bundleWithIdentifier:
  */
  @objc public static func createWithIdentifier(_ identifier: String) -> Bundle? {
    return self.init(identifier: identifier)
  }


  /**
    - Selector: bundleWithPath:
  */
  @objc public static func createWithPath(_ path: String) -> Self? {
    return self.init(path: path)
  }


  /**
    - Selector: bundleWithURL:
    - Introduced: 10.6
  */
  @objc public static func createWithUrl(_ url: URL) -> Self? {
    return self.init(url: url)
  }

}
