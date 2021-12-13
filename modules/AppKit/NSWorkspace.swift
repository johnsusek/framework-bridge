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
    - Selector: NSWorkspace
  */

@objc(NSWorkspace) protocol NSWorkspaceExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedWorkspace
  */
  @objc static var shared: NSWorkspace { @objc (sharedWorkspace) get }

  // Instance Methods

  /**
    - Selector: URLForApplicationToOpenURL:
    - Introduced: 10.6
  */
  @objc (URLForApplicationToOpenURL:) @available(OSX 10.6, *) func urlForApplication(toOpen: URL) -> URL?

  /**
    - Selector: URLForApplicationWithBundleIdentifier:
    - Introduced: 10.6
  */
  @objc (URLForApplicationWithBundleIdentifier:) @available(OSX 10.6, *) func urlForApplication(withBundleIdentifier: String) -> URL?

  /**
    - Selector: absolutePathForAppBundleWithIdentifier:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace URLForApplicationWithBundleIdentifier:] instead.
  */
  @objc (absolutePathForAppBundleWithIdentifier:) @available(OSX 10.0, *) func absolutePathForApplication(withBundleIdentifier: String) -> String?

  /**
    - Selector: activateFileViewerSelectingURLs:
    - Introduced: 10.6
  */
  @objc (activateFileViewerSelectingURLs:) @available(OSX 10.6, *) func activateFileViewerSelecting(_ p0: [URL])

  /**
    - Selector: desktopImageOptionsForScreen:
    - Introduced: 10.6
  */
  @objc (desktopImageOptionsForScreen:) @available(OSX 10.6, *) func desktopImageOptions(`for`: NSScreen) -> [NSWorkspace.DesktopImageOptionKey: Any]?

  /**
    - Selector: desktopImageURLForScreen:
    - Introduced: 10.6
  */
  @objc (desktopImageURLForScreen:) @available(OSX 10.6, *) func desktopImageURL(`for`: NSScreen) -> URL?

  /**
    - Selector: duplicateURLs:completionHandler:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func duplicate(_ p0: [URL], completionHandler: JSValue)

  /**
    - Selector: extendPowerOffBy:
  */
  @objc (extendPowerOffBy:) func extendPowerOff(by: Int) -> Int

  /**
    - Selector: filenameExtension:isValidForType:
    - Introduced: 10.5
  */
  // unavailableInSwift @objc @available(OSX 10.5, *) func filenameExtension(_ p0: String, isValidForType: String) -> Bool

  /**
    - Selector: fullPathForApplication:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace URLForApplicationWithBundleIdentifier:] instead.
  */
  @objc (fullPathForApplication:) @available(OSX 10.0, *) func fullPath(forApplication: String) -> String?

  /**
    - Selector: getInfoForFile:application:type:
  */
  // unavailableInSwift @objc func getInfoForFile(_ p0: String, application: AutoreleasingUnsafeMutablePointer<NSString?>?, type: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool

  /**
    - Selector: hideOtherApplications
  */
  @objc func hideOtherApplications()

  /**
    - Selector: iconForFile:
  */
  @objc (iconForFile:) func icon(forFile: String) -> NSImage

  /**
    - Selector: iconForFileType:
  */
  @objc (iconForFileType:) func icon(forFileType: String) -> NSImage

  /**
    - Selector: iconForFiles:
  */
  @objc (iconForFiles:) func icon(forFiles: [String]) -> NSImage?

  /**
    - Selector: isFilePackageAtPath:
  */
  @objc (isFilePackageAtPath:) func isFilePackage(atPath: String) -> Bool

  /**
    - Selector: launchApplication:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.
  */
  // unavailableInSwift @objc @available(OSX 10.0, *) func launchApplication(_ p0: String) -> Bool

  /**
    - Selector: launchApplication:showIcon:autolaunch:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.
  */
  // unavailableInSwift @objc @available(OSX 10.0, *) func launchApplication(_ p0: String, showIcon: Bool, autolaunch: Bool) -> Bool

  /**
    - Selector: launchApplicationAtURL:options:configuration:error:
    - Introduced: 10.6
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openApplicationAtURL:configuration:completionHandler:] instead.
  */
  // throws - @objc @available(OSX 10.6, *) func launchApplicationAtURL(url: URL, options: NSWorkspace.LaunchOptions, configuration: [NSWorkspace.LaunchConfigurationKey: Any]) -> NSRunningApplication?

  /**
    - Selector: localizedDescriptionForType:
    - Introduced: 10.5
  */
  @objc (localizedDescriptionForType:) @available(OSX 10.5, *) func localizedDescription(forType: String) -> String?

  /**
    - Selector: noteFileSystemChanged:
  */
  @objc func noteFileSystemChanged(_ p0: String)

  /**
    - Selector: openApplicationAtURL:configuration:completionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func openApplication(at: URL, configuration: NSWorkspace.OpenConfiguration, completionHandler: JSValue)

  /**
    - Selector: openFile:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openURL:] instead.
  */
  // unavailableInSwift @objc @available(OSX 10.0, *) func openFile(_ p0: String) -> Bool

  /**
    - Selector: openFile:withApplication:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openURLs:withApplicationURL:configuration:completionHandler:] instead.
  */
  // unavailableInSwift @objc @available(OSX 10.0, *) func openFile(_ p0: String, withApplication: String?) -> Bool

  /**
    - Selector: openFile:withApplication:andDeactivate:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openURLs:withApplicationURL:configuration:completionHandler:] instead.
  */
  // unavailableInSwift @objc @available(OSX 10.0, *) func openFile(_ p0: String, withApplication: String?, andDeactivate: Bool) -> Bool

  /**
    - Selector: openURL:
  */
  @objc (openURL:) func open(_ p0: URL) -> Bool

  /**
    - Selector: openURL:configuration:completionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func open(_ p0: URL, configuration: NSWorkspace.OpenConfiguration, completionHandler: JSValue)

  /**
    - Selector: openURL:options:configuration:error:
    - Introduced: 10.10
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openURL:configuration:completionHandler:] instead.
  */
  // throws - @objc @available(OSX 10.10, *) func openURL(url: URL, options: NSWorkspace.LaunchOptions, configuration: [NSWorkspace.LaunchConfigurationKey: Any]) -> NSRunningApplication?

  /**
    - Selector: openURLs:withApplicationAtURL:configuration:completionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func open(_ p0: [URL], withApplicationAt: URL, configuration: NSWorkspace.OpenConfiguration, completionHandler: JSValue)

  /**
    - Selector: openURLs:withApplicationAtURL:options:configuration:error:
    - Introduced: 10.10
    - Deprecated: 100000
    - Message: Use -[NSWorkspace openURLs:withApplicationURL:configuration:completionHandler:] instead.
  */
  // throws - @objc @available(OSX 10.10, *) func openURLs(urls: [URL], withApplicationAtURL: URL, options: NSWorkspace.LaunchOptions, configuration: [NSWorkspace.LaunchConfigurationKey: Any]) -> NSRunningApplication?

  /**
    - Selector: preferredFilenameExtensionForType:
    - Introduced: 10.5
  */
  @objc (preferredFilenameExtensionForType:) @available(OSX 10.5, *) func preferredFilenameExtension(forType: String) -> String?

  /**
    - Selector: recycleURLs:completionHandler:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func recycle(_ p0: [URL], completionHandler: JSValue)

  /**
    - Selector: requestAuthorizationOfType:completionHandler:
    - Introduced: 10.14
  */
  // jsvalue @objc @available(OSX 10.14, *) func requestAuthorization(to: NSWorkspace.AuthorizationType, completionHandler: JSValue)

  /**
    - Selector: selectFile:inFileViewerRootedAtPath:
  */
  @objc func selectFile(_ p0: String?, inFileViewerRootedAtPath: String) -> Bool

  /**
    - Selector: setDesktopImageURL:forScreen:options:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func setDesktopImageURL(url: URL, forScreen: NSScreen, options: [NSWorkspace.DesktopImageOptionKey: Any]) -> Bool

  /**
    - Selector: setIcon:forFile:options:
  */
  @objc func setIcon(_ p0: NSImage?, forFile: String, options: NSWorkspace.IconCreationOptions) -> Bool

  /**
    - Selector: showSearchResultsForQueryString:
    - Introduced: 10.6
  */
  @objc (showSearchResultsForQueryString:) @available(OSX 10.6, *) func showSearchResults(forQueryString: String) -> Bool

  /**
    - Selector: type:conformsToType:
    - Introduced: 10.5
  */
  // unavailableInSwift @objc @available(OSX 10.5, *) func type(_ p0: String, conformsToType: String) -> Bool

  /**
    - Selector: typeOfFile:error:
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func typeOfFile(absoluteFilePath: String) -> String?

  /**
    - Selector: unmountAndEjectDeviceAtPath:
  */
  @objc (unmountAndEjectDeviceAtPath:) func unmountAndEjectDevice(atPath: String) -> Bool

  /**
    - Selector: unmountAndEjectDeviceAtURL:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func unmountAndEjectDeviceAtURL(url: URL) -> Bool

  // Own Instance Properties

  /**
    - Selector: accessibilityDisplayShouldDifferentiateWithoutColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var accessibilityDisplayShouldDifferentiateWithoutColor: Bool { @objc get }

  /**
    - Selector: accessibilityDisplayShouldIncreaseContrast
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var accessibilityDisplayShouldIncreaseContrast: Bool { @objc get }

  /**
    - Selector: accessibilityDisplayShouldInvertColors
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var accessibilityDisplayShouldInvertColors: Bool { @objc get }

  /**
    - Selector: accessibilityDisplayShouldReduceMotion
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var accessibilityDisplayShouldReduceMotion: Bool { @objc get }

  /**
    - Selector: accessibilityDisplayShouldReduceTransparency
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var accessibilityDisplayShouldReduceTransparency: Bool { @objc get }

  /**
    - Selector: fileLabelColors
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var fileLabelColors: [NSColor] { @objc get }

  /**
    - Selector: fileLabels
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var fileLabels: [String] { @objc get }

  /**
    - Selector: frontmostApplication
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var frontmostApplication: NSRunningApplication? { @objc get }

  /**
    - Selector: menuBarOwningApplication
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var menuBarOwningApplication: NSRunningApplication? { @objc get }

  /**
    - Selector: notificationCenter
  */
  @objc var notificationCenter: NotificationCenter { @objc get }

  /**
    - Selector: runningApplications
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var runningApplications: [NSRunningApplication] { @objc get }

  /**
    - Selector: switchControlEnabled
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var isSwitchControlEnabled: Bool { @objc get }

  /**
    - Selector: voiceOverEnabled
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var isVoiceOverEnabled: Bool { @objc get }
}

extension NSWorkspace: NSWorkspaceExports {
}
