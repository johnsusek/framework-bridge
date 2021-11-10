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
    - Selector: NSDocumentController
  */

@objc(NSDocumentController) protocol NSDocumentControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedDocumentController
  */
  @objc static var shared: NSDocumentController { @objc (sharedDocumentController) get }

  // Instance Methods

  /**
    - Selector: URLsFromRunningOpenPanel
  */
  @objc (URLsFromRunningOpenPanel) func urlsFromRunningOpenPanel() -> [URL]?

  /**
    - Selector: addDocument:
  */
  @objc func addDocument(_: NSDocument)

  /**
    - Selector: beginOpenPanel:forTypes:completionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func beginOpenPanelWithForTypesWithCompletionHandler(_ p0: NSOpenPanel, _ forTypes: [String]?, _ completionHandler: JSValue)

  /**
    - Selector: beginOpenPanelWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func beginOpenPanelWithCompletionHandler(_ completionHandler: JSValue)

  /**
    - Selector: clearRecentDocuments:
  */
  @objc func clearRecentDocuments(_: Any?)

  /**
    - Selector: closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:
  */
  @objc (closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:) func closeAllDocuments(withDelegate: Any?, didCloseAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: displayNameForType:
  */
  @objc (displayNameForType:) func displayName(forType: String) -> String?

  /**
    - Selector: documentClassForType:
  */
  @objc (documentClassForType:) func documentClass(forType: String) -> AnyClass?

  /**
    - Selector: documentForURL:
  */
  @objc (documentForURL:) func document(`for`: URL) -> NSDocument?

  /**
    - Selector: documentForWindow:
  */
  @objc (documentForWindow:) func document(`for`: NSWindow) -> NSDocument?

  /**
    - Selector: duplicateDocumentWithContentsOfURL:copying:displayName:error:
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) func duplicateDocumentWithContentsOfURL(copying: URL, displayName: Bool, error: String?) -> NSDocument?

  /**
    - Selector: makeDocumentForURL:withContentsOfURL:ofType:error:
  */
  // throws - @objc func makeDocumentForURL(withContentsOfURL: URL?, ofType: URL, error: String) -> NSDocument?

  /**
    - Selector: makeDocumentWithContentsOfURL:ofType:error:
  */
  // throws - @objc func makeDocumentWithContentsOfURL(ofType: URL, error: String) -> NSDocument?

  /**
    - Selector: makeUntitledDocumentOfType:error:
  */
  // throws - @objc func makeUntitledDocumentOfType(error: String) -> NSDocument?

  /**
    - Selector: newDocument:
  */
  @objc func newDocument(_: Any?)

  /**
    - Selector: noteNewRecentDocument:
  */
  @objc func noteNewRecentDocument(_: NSDocument)

  /**
    - Selector: noteNewRecentDocumentURL:
  */
  @objc func noteNewRecentDocumentURL(_: URL)

  /**
    - Selector: openDocument:
  */
  @objc func openDocument(_: Any?)

  /**
    - Selector: openDocumentWithContentsOfURL:display:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func openDocumentWithContentsOfURLWithDisplayWithCompletionHandler(_ withContentsOf: URL, _ display: Bool, _ completionHandler: JSValue)

  /**
    - Selector: openUntitledDocumentAndDisplay:error:
  */
  // throws - @objc func openUntitledDocumentAndDisplay(error: Bool) -> NSDocument?

  /**
    - Selector: presentError:
  */
  @objc func presentError(_: Error) -> Bool

  /**
    - Selector: presentError:modalForWindow:delegate:didPresentSelector:contextInfo:
  */
  @objc (presentError:modalForWindow:delegate:didPresentSelector:contextInfo:) func presentError(_: Error, modalFor: NSWindow, delegate: Any?, didPresent: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: removeDocument:
  */
  @objc func removeDocument(_: NSDocument)

  /**
    - Selector: reopenDocumentForURL:withContentsOfURL:display:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func reopenDocumentForURLWithContentsOfURLWithDisplayWithCompletionHandler(_ for: URL?, _ withContentsOf: URL, _ display: Bool, _ completionHandler: JSValue)

  /**
    - Selector: reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:
  */
  @objc (reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:) func reviewUnsavedDocuments(withAlertTitle: String?, cancellable: Bool, delegate: Any?, didReviewAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: runModalOpenPanel:forTypes:
  */
  @objc func runModalOpenPanel(_: NSOpenPanel, forTypes: [String]?) -> Int

  /**
    - Selector: saveAllDocuments:
  */
  @objc func saveAllDocuments(_: Any?)

  /**
    - Selector: standardShareMenuItem
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func standardShareMenuItem() -> NSMenuItem

  /**
    - Selector: typeForContentsOfURL:error:
  */
  // throws - @objc func typeForContentsOfURL(error: URL) -> String?

  /**
    - Selector: willPresentError:
  */
  @objc func willPresentError(_: Error) -> Error

  // Own Instance Properties

  /**
    - Selector: allowsAutomaticShareMenu
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowsAutomaticShareMenu: Bool { @objc get }

  /**
    - Selector: autosavingDelay
  */
  @objc var autosavingDelay: TimeInterval { @objc get @objc (setAutosavingDelay:) set }

  /**
    - Selector: currentDirectory
  */
  @objc var currentDirectory: String? { @objc get }

  /**
    - Selector: currentDocument
  */
  @objc var currentDocument: NSDocument? { @objc get }

  /**
    - Selector: defaultType
  */
  @objc var defaultType: String? { @objc get }

  /**
    - Selector: documentClassNames
  */
  @objc var documentClassNames: [String] { @objc get }

  /**
    - Selector: documents
  */
  @objc var documents: [NSDocument] { @objc get }

  /**
    - Selector: hasEditedDocuments
  */
  @objc var hasEditedDocuments: Bool { @objc get }

  /**
    - Selector: maximumRecentDocumentCount
  */
  @objc var maximumRecentDocumentCount: Int { @objc get }

  /**
    - Selector: recentDocumentURLs
  */
  @objc var recentDocumentURLs: [URL] { @objc get }
}

extension NSDocumentController: NSDocumentControllerExports {
}
