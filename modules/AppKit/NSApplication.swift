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
    - Selector: NSApplication
  */

@objc(NSApplication) protocol NSApplicationExports: JSExport, NSResponderExports {
  // Static Methods

  /**
    - Selector: detachDrawingThread:toTarget:withObject:
  */
  @objc (detachDrawingThread:toTarget:withObject:) static func detachDrawingThread(_ p0: Selector, toTarget: Any, with: Any?)

  // Own Static Properties

  /**
    - Selector: sharedApplication
  */
  @objc static var shared: NSApplication { @objc (sharedApplication) get }

  // Instance Methods

  /**
    - Selector: abortModal
  */
  @objc func abortModal()

  /**
    - Selector: activateContextHelpMode:
  */
  @objc func activateContextHelpMode(_ p0: Any?)

  /**
    - Selector: activateIgnoringOtherApps:
  */
  @objc (activateIgnoringOtherApps:) func activate(ignoringOtherApps: Bool)

  /**
    - Selector: activationPolicy
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func activationPolicy() -> NSApplication.ActivationPolicy

  /**
    - Selector: addWindowsItem:title:filename:
  */
  @objc func addWindowsItem(_ p0: NSWindow, title: String, filename: Bool)

  /**
    - Selector: arrangeInFront:
  */
  @objc func arrangeInFront(_ p0: Any?)

  /**
    - Selector: beginModalSessionForWindow:
  */
  @objc (beginModalSessionForWindow:) func beginModalSession(`for`: NSWindow) -> NSApplication.ModalSession

  /**
    - Selector: cancelUserAttentionRequest:
  */
  @objc func cancelUserAttentionRequest(_ p0: Int)

  /**
    - Selector: changeWindowsItem:title:filename:
  */
  @objc func changeWindowsItem(_ p0: NSWindow, title: String, filename: Bool)

  /**
    - Selector: completeStateRestoration
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func completeStateRestoration()

  /**
    - Selector: deactivate
  */
  @objc func deactivate()

  /**
    - Selector: disableRelaunchOnLogin
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func disableRelaunchOnLogin()

  /**
    - Selector: discardEventsMatchingMask:beforeEvent:
  */
  @objc (discardEventsMatchingMask:beforeEvent:) func discardEvents(matching: NSEvent.EventTypeMask, before: NSEvent?)

  /**
    - Selector: enableRelaunchOnLogin
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func enableRelaunchOnLogin()

  /**
    - Selector: endModalSession:
  */
  @objc (endModalSession:) func endModalSession(_ p0: NSApplication.ModalSession)

  /**
    - Selector: enumerateWindowsWithOptions:usingBlock:
    - Introduced: 10.12
  */
  // jsvalue @objc @available(OSX 10.12, *) func enumerateWindows(options: NSApplication.WindowListOptions, using: JSValue)

  /**
    - Selector: extendStateRestoration
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func extendStateRestoration()

  /**
    - Selector: finishLaunching
  */
  @objc func finishLaunching()

  /**
    - Selector: hide:
  */
  @objc func hide(_ p0: Any?)

  /**
    - Selector: hideOtherApplications:
  */
  @objc func hideOtherApplications(_ p0: Any?)

  /**
    - Selector: miniaturizeAll:
  */
  @objc func miniaturizeAll(_ p0: Any?)

  /**
    - Selector: nextEventMatchingMask:untilDate:inMode:dequeue:
  */
  @objc (nextEventMatchingMask:untilDate:inMode:dequeue:) func nextEvent(matching: NSEvent.EventTypeMask, until: Date?, inMode: RunLoop.Mode, dequeue: Bool) -> NSEvent?

  /**
    - Selector: orderFrontCharacterPalette:
  */
  @objc func orderFrontCharacterPalette(_ p0: Any?)

  /**
    - Selector: orderFrontColorPanel:
  */
  @objc func orderFrontColorPanel(_ p0: Any?)

  /**
    - Selector: orderFrontStandardAboutPanel:
  */
  @objc func orderFrontStandardAboutPanel(_ p0: Any?)

  /**
    - Selector: orderFrontStandardAboutPanelWithOptions:
  */
  @objc (orderFrontStandardAboutPanelWithOptions:) func orderFrontStandardAboutPanel(options: [NSApplication.AboutPanelOptionKey: Any])

  /**
    - Selector: postEvent:atStart:
  */
  @objc (postEvent:atStart:) func postEvent(_ p0: NSEvent, atStart: Bool)

  /**
    - Selector: preventWindowOrdering
  */
  @objc func preventWindowOrdering()

  /**
    - Selector: registerForRemoteNotificationTypes:
    - Introduced: 10.7
  */
  @objc (registerForRemoteNotificationTypes:) @available(OSX 10.7, *) func registerForRemoteNotifications(matching: NSApplication.RemoteNotificationType)

  /**
    - Selector: registerForRemoteNotifications
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func registerForRemoteNotifications()

  /**
    - Selector: registerServicesMenuSendTypes:returnTypes:
  */
  @objc func registerServicesMenuSendTypes(_ p0: [NSPasteboard.PasteboardType], returnTypes: [NSPasteboard.PasteboardType])

  /**
    - Selector: registerUserInterfaceItemSearchHandler:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func registerUserInterfaceItemSearchHandler(_ p0: NSUserInterfaceItemSearching)

  /**
    - Selector: removeWindowsItem:
  */
  @objc func removeWindowsItem(_ p0: NSWindow)

  /**
    - Selector: replyToApplicationShouldTerminate:
  */
  @objc (replyToApplicationShouldTerminate:) func reply(toApplicationShouldTerminate: Bool)

  /**
    - Selector: replyToOpenOrPrint:
  */
  @objc (replyToOpenOrPrint:) func reply(toOpenOrPrint: NSApplication.DelegateReply)

  /**
    - Selector: reportException:
  */
  @objc (reportException:) func reportException(_ p0: NSException)

  /**
    - Selector: requestUserAttention:
  */
  @objc func requestUserAttention(_ p0: NSApplication.RequestUserAttentionType) -> Int

  /**
    - Selector: restoreWindowWithIdentifier:state:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func restoreWindow(withIdentifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: JSValue) -> Bool

  /**
    - Selector: run
  */
  @objc func run()

  /**
    - Selector: runModalForWindow:
  */
  @objc (runModalForWindow:) func runModal(`for`: NSWindow) -> NSApplication.ModalResponse

  /**
    - Selector: runModalSession:
  */
  @objc (runModalSession:) func runModalSession(_ p0: NSApplication.ModalSession) -> NSApplication.ModalResponse

  /**
    - Selector: runPageLayout:
  */
  @objc func runPageLayout(_ p0: Any?)

  /**
    - Selector: searchString:inUserInterfaceItemString:searchRange:foundRange:
    - Introduced: 10.6
  */
  @objc (searchString:inUserInterfaceItemString:searchRange:foundRange:) @available(OSX 10.6, *) func searchString(_ p0: String, inUserInterfaceItemString: String, range: NSRange, found: UnsafeMutablePointer<NSRange>?) -> Bool

  /**
    - Selector: sendAction:to:from:
  */
  @objc func sendAction(_ p0: Selector, to: Any?, from: Any?) -> Bool

  /**
    - Selector: sendEvent:
  */
  @objc (sendEvent:) func sendEvent(_ p0: NSEvent)

  /**
    - Selector: setActivationPolicy:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func setActivationPolicy(_ p0: NSApplication.ActivationPolicy) -> Bool

  /**
    - Selector: setWindowsNeedUpdate:
  */
  @objc func setWindowsNeedUpdate(_ p0: Bool)

  /**
    - Selector: showHelp:
  */
  @objc func showHelp(_ p0: Any?)

  /**
    - Selector: stop:
  */
  @objc func stop(_ p0: Any?)

  /**
    - Selector: stopModal
  */
  @objc func stopModal()

  /**
    - Selector: stopModalWithCode:
  */
  @objc (stopModalWithCode:) func stopModal(withCode: NSApplication.ModalResponse)

  /**
    - Selector: targetForAction:
  */
  @objc (targetForAction:) func target(forAction: Selector) -> Any?

  /**
    - Selector: targetForAction:to:from:
  */
  @objc (targetForAction:to:from:) func target(forAction: Selector, to: Any?, from: Any?) -> Any?

  /**
    - Selector: terminate:
  */
  @objc func terminate(_ p0: Any?)

  /**
    - Selector: toggleTouchBarCustomizationPalette:
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func toggleTouchBarCustomizationPalette(_ p0: Any?)

  /**
    - Selector: unhide:
  */
  @objc func unhide(_ p0: Any?)

  /**
    - Selector: unhideAllApplications:
  */
  @objc func unhideAllApplications(_ p0: Any?)

  /**
    - Selector: unhideWithoutActivation
  */
  @objc func unhideWithoutActivation()

  /**
    - Selector: unregisterForRemoteNotifications
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func unregisterForRemoteNotifications()

  /**
    - Selector: unregisterUserInterfaceItemSearchHandler:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func unregisterUserInterfaceItemSearchHandler(_ p0: NSUserInterfaceItemSearching)

  /**
    - Selector: updateWindows
  */
  @objc func updateWindows()

  /**
    - Selector: updateWindowsItem:
  */
  @objc func updateWindowsItem(_ p0: NSWindow)

  /**
    - Selector: windowWithWindowNumber:
  */
  @objc (windowWithWindowNumber:) func window(withWindowNumber: Int) -> NSWindow?

  // Own Instance Properties

  /**
    - Selector: active
  */
  @objc var isActive: Bool { @objc get }

  /**
    - Selector: applicationIconImage
  */
  @objc var applicationIconImage: NSImage! { @objc get @objc (setApplicationIconImage:) set }

  /**
    - Selector: automaticCustomizeTouchBarMenuItemEnabled
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var isAutomaticCustomizeTouchBarMenuItemEnabled: Bool { @objc get @objc (setAutomaticCustomizeTouchBarMenuItemEnabled:) set }

  /**
    - Selector: currentEvent
  */
  @objc var currentEvent: NSEvent? { @objc get }

  /**
    - Selector: currentSystemPresentationOptions
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var currentSystemPresentationOptions: NSApplication.PresentationOptions { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSApplicationDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: dockTile
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dockTile: NSDockTile { @objc get }

  /**
    - Selector: enabledRemoteNotificationTypes
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var enabledRemoteNotificationTypes: NSApplication.RemoteNotificationType { @objc get }

  /**
    - Selector: fullKeyboardAccessEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isFullKeyboardAccessEnabled: Bool { @objc get }

  /**
    - Selector: helpMenu
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var helpMenu: NSMenu? { @objc get @objc (setHelpMenu:) set }

  /**
    - Selector: hidden
  */
  @objc var isHidden: Bool { @objc get }

  /**
    - Selector: keyWindow
  */
  @objc var keyWindow: NSWindow? { @objc get }

  /**
    - Selector: mainMenu
  */
  @objc var mainMenu: NSMenu? { @objc get @objc (setMainMenu:) set }

  /**
    - Selector: mainWindow
  */
  @objc var mainWindow: NSWindow? { @objc get }

  /**
    - Selector: modalWindow
  */
  @objc var modalWindow: NSWindow? { @objc get }

  /**
    - Selector: occlusionState
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var occlusionState: NSApplication.OcclusionState { @objc get }

  /**
    - Selector: orderedDocuments
  */
  @objc var orderedDocuments: [NSDocument] { @objc get }

  /**
    - Selector: orderedWindows
  */
  @objc var orderedWindows: [NSWindow] { @objc get }

  /**
    - Selector: presentationOptions
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var presentationOptions: NSApplication.PresentationOptions { @objc get @objc (setPresentationOptions:) set }

  /**
    - Selector: registeredForRemoteNotifications
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var isRegisteredForRemoteNotifications: Bool { @objc get }

  /**
    - Selector: running
  */
  @objc var isRunning: Bool { @objc get }

  /**
    - Selector: servicesMenu
  */
  @objc var servicesMenu: NSMenu? { @objc get @objc (setServicesMenu:) set }

  /**
    - Selector: servicesProvider
  */
  @objc var servicesProvider: Any? { @objc get @objc (setServicesProvider:) set }

  /**
    - Selector: userInterfaceLayoutDirection
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get }

  /**
    - Selector: windows
  */
  @objc var windows: [NSWindow] { @objc get }

  /**
    - Selector: windowsMenu
  */
  @objc var windowsMenu: NSMenu? { @objc get @objc (setWindowsMenu:) set }
}

extension NSApplication: NSApplicationExports {
}
