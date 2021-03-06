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
  @objc func addDocument(_ p0: NSDocument)

  /**
    - Selector: beginOpenPanel:forTypes:completionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func beginOpenPanel(_ p0: NSOpenPanel, forTypes: [String]?, completionHandler: JSValue)

  /**
    - Selector: beginOpenPanelWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func beginOpenPanel(completionHandler: JSValue)

  /**
    - Selector: clearRecentDocuments:
  */
  @objc func clearRecentDocuments(_ p0: Any?)

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
  // throws - @objc @available(OSX 10.7, *) func duplicateDocumentWithContentsOfURL(url: URL, copying: Bool, displayName: String?) -> NSDocument?

  /**
    - Selector: makeDocumentForURL:withContentsOfURL:ofType:error:
  */
  // throws - @objc func makeDocumentForURL(urlOrNil: URL?, withContentsOfURL: URL, ofType: String) -> NSDocument?

  /**
    - Selector: makeDocumentWithContentsOfURL:ofType:error:
  */
  // throws - @objc func makeDocumentWithContentsOfURL(url: URL, ofType: String) -> NSDocument?

  /**
    - Selector: makeUntitledDocumentOfType:error:
  */
  // throws - @objc func makeUntitledDocumentOfType(typeName: String) -> NSDocument?

  /**
    - Selector: newDocument:
  */
  @objc func newDocument(_ p0: Any?)

  /**
    - Selector: noteNewRecentDocument:
  */
  @objc func noteNewRecentDocument(_ p0: NSDocument)

  /**
    - Selector: noteNewRecentDocumentURL:
  */
  @objc func noteNewRecentDocumentURL(_ p0: URL)

  /**
    - Selector: openDocument:
  */
  @objc func openDocument(_ p0: Any?)

  /**
    - Selector: openDocumentWithContentsOfURL:display:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func openDocument(withContentsOf: URL, display: Bool, completionHandler: JSValue)

  /**
    - Selector: openUntitledDocumentAndDisplay:error:
  */
  // throws - @objc func openUntitledDocumentAndDisplay(displayDocument: Bool) -> NSDocument?

  /**
    - Selector: presentError:
  */
  @objc func presentError(_ p0: Error) -> Bool

  /**
    - Selector: presentError:modalForWindow:delegate:didPresentSelector:contextInfo:
  */
  @objc (presentError:modalForWindow:delegate:didPresentSelector:contextInfo:) func presentError(_ p0: Error, modalFor: NSWindow, delegate: Any?, didPresent: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: removeDocument:
  */
  @objc func removeDocument(_ p0: NSDocument)

  /**
    - Selector: reopenDocumentForURL:withContentsOfURL:display:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func reopenDocument(`for`: URL?, withContentsOf: URL, display: Bool, completionHandler: JSValue)

  /**
    - Selector: reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:
  */
  @objc (reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:) func reviewUnsavedDocuments(withAlertTitle: String?, cancellable: Bool, delegate: Any?, didReviewAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: runModalOpenPanel:forTypes:
  */
  @objc func runModalOpenPanel(_ p0: NSOpenPanel, forTypes: [String]?) -> Int

  /**
    - Selector: saveAllDocuments:
  */
  @objc func saveAllDocuments(_ p0: Any?)

  /**
    - Selector: standardShareMenuItem
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func standardShareMenuItem() -> NSMenuItem

  /**
    - Selector: typeForContentsOfURL:error:
  */
  // throws - @objc func typeForContentsOfURL(url: URL) -> String?

  /**
    - Selector: willPresentError:
  */
  @objc func willPresentError(_ p0: Error) -> Error

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
