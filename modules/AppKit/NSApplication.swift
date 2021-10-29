import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSApplication
    - name: NSApplication
    - argLabels: 
  */

@objc(NSApplication) protocol NSApplicationExports: JSExport, NSResponderExports {
  // Static Methods

  /**
    - jsName: detachDrawingThread
    - name: detachDrawingThread:toTarget:withObject:
    - argLabels: _, toTarget, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: detachDrawingThread(_:toTarget:with:)
  */
  @objc (detachDrawingThread:toTarget:withObject:) static func detachDrawingThread(_: Selector, toTarget: Any, with: Any?)

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedApplication
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSApplication { @objc (sharedApplication) get }

  // Instance Methods

  /**
    - jsName: abortModal
    - name: abortModal
    - argLabels: 
    - constructorTokens: 
  */
  @objc func abortModal()

  /**
    - jsName: activateContextHelpMode
    - name: activateContextHelpMode:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func activateContextHelpMode(_: Any?)

  /**
    - jsName: activate
    - name: activateIgnoringOtherApps:
    - argLabels: ignoringOtherApps
    - constructorTokens: 
    - obsoleted: 3
    - renamed: activate(ignoringOtherApps:)
  */
  @objc (activateIgnoringOtherApps:) func activate(ignoringOtherApps: Bool)

  /**
    - jsName: activationPolicy
    - name: activationPolicy
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func activationPolicy() -> NSApplication.ActivationPolicy

  /**
    - jsName: addWindowsItem
    - name: addWindowsItem:title:filename:
    - argLabels: title, filename
    - constructorTokens: 
  */
  @objc func addWindowsItem(_: NSWindow, title: String, filename: Bool)

  /**
    - jsName: arrangeInFront
    - name: arrangeInFront:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func arrangeInFront(_: Any?)

  /**
    - jsName: beginModalSession
    - name: beginModalSessionForWindow:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: beginModalSession(for:)
  */
  @objc (beginModalSessionForWindow:) func beginModalSession(`for`: NSWindow) -> NSApplication.ModalSession

  /**
    - jsName: cancelUserAttentionRequest
    - name: cancelUserAttentionRequest:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancelUserAttentionRequest(_: Int)

  /**
    - jsName: changeWindowsItem
    - name: changeWindowsItem:title:filename:
    - argLabels: title, filename
    - constructorTokens: 
  */
  @objc func changeWindowsItem(_: NSWindow, title: String, filename: Bool)

  /**
    - jsName: completeStateRestoration
    - name: completeStateRestoration
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func completeStateRestoration()

  /**
    - jsName: deactivate
    - name: deactivate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deactivate()

  /**
    - jsName: disableRelaunchOnLogin
    - name: disableRelaunchOnLogin
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func disableRelaunchOnLogin()

  /**
    - jsName: discardEvents
    - name: discardEventsMatchingMask:beforeEvent:
    - argLabels: matching, before
    - constructorTokens: 
    - obsoleted: 3
    - renamed: discardEvents(matching:before:)
  */
  @objc (discardEventsMatchingMask:beforeEvent:) func discardEvents(matching: NSEvent.EventTypeMask, before: NSEvent?)

  /**
    - jsName: enableRelaunchOnLogin
    - name: enableRelaunchOnLogin
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func enableRelaunchOnLogin()

  /**
    - jsName: endModalSession
    - name: endModalSession:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (endModalSession:) func endModalSession(_: NSApplication.ModalSession)

  /**
    - jsName: enumerateWindows
    - name: enumerateWindowsWithOptions:usingBlock:
    - argLabels: options, using
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: enumerateWindows(options:using:)
    - Introduced: 10.12
  */
  // jsvalue - @objc (enumerateWindowsWithOptions:usingBlock:) @available(OSX 10.12, *) func enumerateWindows(options: NSApplication.WindowListOptions, using: JSValue)

  /**
    - jsName: extendStateRestoration
    - name: extendStateRestoration
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func extendStateRestoration()

  /**
    - jsName: finishLaunching
    - name: finishLaunching
    - argLabels: 
    - constructorTokens: 
  */
  @objc func finishLaunching()

  /**
    - jsName: hide
    - name: hide:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func hide(_: Any?)

  /**
    - jsName: hideOtherApplications
    - name: hideOtherApplications:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func hideOtherApplications(_: Any?)

  /**
    - jsName: miniaturizeAll
    - name: miniaturizeAll:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func miniaturizeAll(_: Any?)

  /**
    - jsName: nextEvent
    - name: nextEventMatchingMask:untilDate:inMode:dequeue:
    - argLabels: matching, until, inMode, dequeue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: nextEvent(matching:until:inMode:dequeue:)
  */
  @objc (nextEventMatchingMask:untilDate:inMode:dequeue:) func nextEvent(matching: NSEvent.EventTypeMask, until: Date?, inMode: RunLoop.Mode, dequeue: Bool) -> NSEvent?

  /**
    - jsName: orderFrontCharacterPalette
    - name: orderFrontCharacterPalette:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontCharacterPalette(_: Any?)

  /**
    - jsName: orderFrontColorPanel
    - name: orderFrontColorPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontColorPanel(_: Any?)

  /**
    - jsName: orderFrontStandardAboutPanel
    - name: orderFrontStandardAboutPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontStandardAboutPanel(_: Any?)

  /**
    - jsName: orderFrontStandardAboutPanel
    - name: orderFrontStandardAboutPanelWithOptions:
    - argLabels: options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: orderFrontStandardAboutPanel(options:)
  */
  @objc (orderFrontStandardAboutPanelWithOptions:) func orderFrontStandardAboutPanel(options: [NSApplication.AboutPanelOptionKey: Any])

  /**
    - jsName: postEvent
    - name: postEvent:atStart:
    - argLabels: _, atStart
    - constructorTokens: 
  */
  @objc (postEvent:atStart:) func postEvent(_: NSEvent, atStart: Bool)

  /**
    - jsName: preventWindowOrdering
    - name: preventWindowOrdering
    - argLabels: 
    - constructorTokens: 
  */
  @objc func preventWindowOrdering()

  /**
    - jsName: registerForRemoteNotifications
    - name: registerForRemoteNotificationTypes:
    - argLabels: matching
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: registerForRemoteNotifications(matching:)
    - Introduced: 10.7
  */
  @objc (registerForRemoteNotificationTypes:) @available(OSX 10.7, *) func registerForRemoteNotifications(matching: NSApplication.RemoteNotificationType)

  /**
    - jsName: registerForRemoteNotifications
    - name: registerForRemoteNotifications
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func registerForRemoteNotifications()

  /**
    - jsName: registerServicesMenuSendTypes
    - name: registerServicesMenuSendTypes:returnTypes:
    - argLabels: returnTypes
    - constructorTokens: 
  */
  @objc func registerServicesMenuSendTypes(_: [NSPasteboard.PasteboardType], returnTypes: [NSPasteboard.PasteboardType])

  /**
    - jsName: registerUserInterfaceItemSearchHandler
    - name: registerUserInterfaceItemSearchHandler:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func registerUserInterfaceItemSearchHandler(_: NSUserInterfaceItemSearching)

  /**
    - jsName: removeWindowsItem
    - name: removeWindowsItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeWindowsItem(_: NSWindow)

  /**
    - jsName: reply
    - name: replyToApplicationShouldTerminate:
    - argLabels: toApplicationShouldTerminate
    - constructorTokens: 
    - obsoleted: 3
    - renamed: reply(toApplicationShouldTerminate:)
  */
  @objc (replyToApplicationShouldTerminate:) func reply(toApplicationShouldTerminate: Bool)

  /**
    - jsName: reply
    - name: replyToOpenOrPrint:
    - argLabels: toOpenOrPrint
    - constructorTokens: 
    - obsoleted: 3
    - renamed: reply(toOpenOrPrint:)
  */
  @objc (replyToOpenOrPrint:) func reply(toOpenOrPrint: NSApplication.DelegateReply)

  /**
    - jsName: reportException
    - name: reportException:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (reportException:) func reportException(_: NSException)

  /**
    - jsName: requestUserAttention
    - name: requestUserAttention:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func requestUserAttention(_: NSApplication.RequestUserAttentionType) -> Int

  /**
    - jsName: restoreWindow
    - name: restoreWindowWithIdentifier:state:completionHandler:
    - argLabels: withIdentifier, state, completionHandler
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: restoreWindow(withIdentifier:state:completionHandler:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (restoreWindowWithIdentifier:state:completionHandler:) @available(OSX 10.7, *) func restoreWindow(withIdentifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: JSValue) -> Bool

  /**
    - jsName: run
    - name: run
    - argLabels: 
    - constructorTokens: 
  */
  @objc func run()

  /**
    - jsName: runModal
    - name: runModalForWindow:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runModal(for:)
  */
  @objc (runModalForWindow:) func runModal(`for`: NSWindow) -> NSApplication.ModalResponse

  /**
    - jsName: runModalSession
    - name: runModalSession:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (runModalSession:) func runModalSession(_: NSApplication.ModalSession) -> NSApplication.ModalResponse

  /**
    - jsName: runPageLayout
    - name: runPageLayout:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runPageLayout(_: Any?)

  /**
    - jsName: searchString
    - name: searchString:inUserInterfaceItemString:searchRange:foundRange:
    - argLabels: _, inUserInterfaceItemString, range, found
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: searchString(_:inUserInterfaceItemString:range:found:)
    - Introduced: 10.6
  */
  @objc (searchString:inUserInterfaceItemString:searchRange:foundRange:) @available(OSX 10.6, *) func searchString(_: String, inUserInterfaceItemString: String, range: NSRange, found: UnsafeMutablePointer<NSRange>?) -> Bool

  /**
    - jsName: sendAction
    - name: sendAction:to:from:
    - argLabels: to, from
    - constructorTokens: 
  */
  @objc func sendAction(_: Selector, to: Any?, from: Any?) -> Bool

  /**
    - jsName: sendEvent
    - name: sendEvent:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (sendEvent:) func sendEvent(_: NSEvent)

  /**
    - jsName: setActivationPolicy
    - name: setActivationPolicy:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func setActivationPolicy(_: NSApplication.ActivationPolicy) -> Bool

  /**
    - jsName: setWindowsNeedUpdate
    - name: setWindowsNeedUpdate:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setWindowsNeedUpdate(_: Bool)

  /**
    - jsName: showHelp
    - name: showHelp:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func showHelp(_: Any?)

  /**
    - jsName: stop
    - name: stop:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stop(_: Any?)

  /**
    - jsName: stopModal
    - name: stopModal
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stopModal()

  /**
    - jsName: stopModal
    - name: stopModalWithCode:
    - argLabels: withCode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stopModal(withCode:)
  */
  @objc (stopModalWithCode:) func stopModal(withCode: NSApplication.ModalResponse)

  /**
    - jsName: target
    - name: targetForAction:
    - argLabels: forAction
    - constructorTokens: 
    - obsoleted: 3
    - renamed: target(forAction:)
  */
  @objc (targetForAction:) func target(forAction: Selector) -> Any?

  /**
    - jsName: target
    - name: targetForAction:to:from:
    - argLabels: forAction, to, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: target(forAction:to:from:)
  */
  @objc (targetForAction:to:from:) func target(forAction: Selector, to: Any?, from: Any?) -> Any?

  /**
    - jsName: terminate
    - name: terminate:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func terminate(_: Any?)

  /**
    - jsName: toggleTouchBarCustomizationPalette
    - name: toggleTouchBarCustomizationPalette:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func toggleTouchBarCustomizationPalette(_: Any?)

  /**
    - jsName: unhide
    - name: unhide:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unhide(_: Any?)

  /**
    - jsName: unhideAllApplications
    - name: unhideAllApplications:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unhideAllApplications(_: Any?)

  /**
    - jsName: unhideWithoutActivation
    - name: unhideWithoutActivation
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unhideWithoutActivation()

  /**
    - jsName: unregisterForRemoteNotifications
    - name: unregisterForRemoteNotifications
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func unregisterForRemoteNotifications()

  /**
    - jsName: unregisterUserInterfaceItemSearchHandler
    - name: unregisterUserInterfaceItemSearchHandler:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func unregisterUserInterfaceItemSearchHandler(_: NSUserInterfaceItemSearching)

  /**
    - jsName: updateWindows
    - name: updateWindows
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateWindows()

  /**
    - jsName: updateWindowsItem
    - name: updateWindowsItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateWindowsItem(_: NSWindow)

  /**
    - jsName: window
    - name: windowWithWindowNumber:
    - argLabels: withWindowNumber
    - constructorTokens: 
    - obsoleted: 3
    - renamed: window(withWindowNumber:)
  */
  @objc (windowWithWindowNumber:) func window(withWindowNumber: Int) -> NSWindow?

  // Own Instance Properties

  /**
    - jsName: isActive
    - name: active
    - argLabels: 
    - obsoleted: 3
    - renamed: isActive
  */
  @objc var isActive: Bool { @objc get }

  /**
    - jsName: applicationIconImage
    - name: applicationIconImage
    - argLabels: 
  */
  @objc var applicationIconImage: NSImage! { @objc get @objc (setApplicationIconImage:) set }

  /**
    - jsName: isAutomaticCustomizeTouchBarMenuItemEnabled
    - name: automaticCustomizeTouchBarMenuItemEnabled
    - argLabels: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: isAutomaticCustomizeTouchBarMenuItemEnabled
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var isAutomaticCustomizeTouchBarMenuItemEnabled: Bool { @objc get @objc (setAutomaticCustomizeTouchBarMenuItemEnabled:) set }

  /**
    - jsName: currentEvent
    - name: currentEvent
    - argLabels: 
  */
  @objc var currentEvent: NSEvent? { @objc get }

  /**
    - jsName: currentSystemPresentationOptions
    - name: currentSystemPresentationOptions
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var currentSystemPresentationOptions: NSApplication.PresentationOptions { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSApplicationDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: dockTile
    - name: dockTile
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dockTile: NSDockTile { @objc get }

  /**
    - jsName: enabledRemoteNotificationTypes
    - name: enabledRemoteNotificationTypes
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var enabledRemoteNotificationTypes: NSApplication.RemoteNotificationType { @objc get }

  /**
    - jsName: isFullKeyboardAccessEnabled
    - name: fullKeyboardAccessEnabled
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isFullKeyboardAccessEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isFullKeyboardAccessEnabled: Bool { @objc get }

  /**
    - jsName: helpMenu
    - name: helpMenu
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var helpMenu: NSMenu? { @objc get @objc (setHelpMenu:) set }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isHidden
  */
  @objc var isHidden: Bool { @objc get }

  /**
    - jsName: keyWindow
    - name: keyWindow
    - argLabels: 
  */
  @objc var keyWindow: NSWindow? { @objc get }

  /**
    - jsName: mainMenu
    - name: mainMenu
    - argLabels: 
  */
  @objc var mainMenu: NSMenu? { @objc get @objc (setMainMenu:) set }

  /**
    - jsName: mainWindow
    - name: mainWindow
    - argLabels: 
  */
  @objc var mainWindow: NSWindow? { @objc get }

  /**
    - jsName: modalWindow
    - name: modalWindow
    - argLabels: 
  */
  @objc var modalWindow: NSWindow? { @objc get }

  /**
    - jsName: occlusionState
    - name: occlusionState
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var occlusionState: NSApplication.OcclusionState { @objc get }

  /**
    - jsName: orderedDocuments
    - name: orderedDocuments
    - argLabels: 
  */
  @objc var orderedDocuments: [NSDocument] { @objc get }

  /**
    - jsName: orderedWindows
    - name: orderedWindows
    - argLabels: 
  */
  @objc var orderedWindows: [NSWindow] { @objc get }

  /**
    - jsName: presentationOptions
    - name: presentationOptions
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var presentationOptions: NSApplication.PresentationOptions { @objc get @objc (setPresentationOptions:) set }

  /**
    - jsName: isRegisteredForRemoteNotifications
    - name: registeredForRemoteNotifications
    - argLabels: 
    - available: 10.14
    - obsoleted: 3
    - renamed: isRegisteredForRemoteNotifications
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var isRegisteredForRemoteNotifications: Bool { @objc get }

  /**
    - jsName: isRunning
    - name: running
    - argLabels: 
    - obsoleted: 3
    - renamed: isRunning
  */
  @objc var isRunning: Bool { @objc get }

  /**
    - jsName: servicesMenu
    - name: servicesMenu
    - argLabels: 
  */
  @objc var servicesMenu: NSMenu? { @objc get @objc (setServicesMenu:) set }

  /**
    - jsName: servicesProvider
    - name: servicesProvider
    - argLabels: 
  */
  @objc var servicesProvider: Any? { @objc get @objc (setServicesProvider:) set }

  /**
    - jsName: userInterfaceLayoutDirection
    - name: userInterfaceLayoutDirection
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get }

  /**
    - jsName: windows
    - name: windows
    - argLabels: 
  */
  @objc var windows: [NSWindow] { @objc get }

  /**
    - jsName: windowsMenu
    - name: windowsMenu
    - argLabels: 
  */
  @objc var windowsMenu: NSMenu? { @objc get @objc (setWindowsMenu:) set }
}

extension NSApplication: NSApplicationExports {
}
