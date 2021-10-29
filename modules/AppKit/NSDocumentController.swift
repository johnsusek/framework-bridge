import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDocumentController
    - name: NSDocumentController
    - argLabels: 
  */

@objc(NSDocumentController) protocol NSDocumentControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedDocumentController
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSDocumentController { @objc (sharedDocumentController) get }

  // Instance Methods

  /**
    - jsName: urlsFromRunningOpenPanel
    - name: URLsFromRunningOpenPanel
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: urlsFromRunningOpenPanel()
  */
  @objc (URLsFromRunningOpenPanel) func urlsFromRunningOpenPanel() -> [URL]?

  /**
    - jsName: addDocument
    - name: addDocument:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addDocument(_: NSDocument)

  /**
    - jsName: beginOpenPanel
    - name: beginOpenPanel:forTypes:completionHandler:
    - argLabels: _, forTypes, completionHandler
    - constructorTokens: 
    - available: 10.8
    - Introduced: 10.8
  */
  // jsvalue - @objc (beginOpenPanel:forTypes:completionHandler:) @available(OSX 10.8, *) func beginOpenPanel(_: NSOpenPanel, forTypes: [String]?, completionHandler: JSValue)

  /**
    - jsName: beginOpenPanel
    - name: beginOpenPanelWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: beginOpenPanel(completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (beginOpenPanelWithCompletionHandler:) @available(OSX 10.8, *) func beginOpenPanel(completionHandler: JSValue)

  /**
    - jsName: clearRecentDocuments
    - name: clearRecentDocuments:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func clearRecentDocuments(_: Any?)

  /**
    - jsName: closeAllDocuments
    - name: closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:
    - argLabels: withDelegate, didCloseAllSelector, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: closeAllDocuments(withDelegate:didCloseAllSelector:contextInfo:)
  */
  @objc (closeAllDocumentsWithDelegate:didCloseAllSelector:contextInfo:) func closeAllDocuments(withDelegate: Any?, didCloseAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: displayName
    - name: displayNameForType:
    - argLabels: forType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayName(forType:)
  */
  @objc (displayNameForType:) func displayName(forType: String) -> String?

  /**
    - jsName: documentClass
    - name: documentClassForType:
    - argLabels: forType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: documentClass(forType:)
  */
  @objc (documentClassForType:) func documentClass(forType: String) -> AnyClass?

  /**
    - jsName: document
    - name: documentForURL:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: document(for:)
  */
  @objc (documentForURL:) func document(`for`: URL) -> NSDocument?

  /**
    - jsName: document
    - name: documentForWindow:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: document(for:)
  */
  @objc (documentForWindow:) func document(`for`: NSWindow) -> NSDocument?

  /**
    - jsName: duplicateDocumentWithContentsOfURL
    - name: duplicateDocumentWithContentsOfURL:copying:displayName:error:
    - argLabels: copying, displayName, error
    - constructorTokens: 
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) func duplicateDocumentWithContentsOfURL(copying: URL, displayName: Bool, error: String?) -> NSDocument?

  /**
    - jsName: makeDocumentForURL
    - name: makeDocumentForURL:withContentsOfURL:ofType:error:
    - argLabels: withContentsOfURL, ofType, error
    - constructorTokens: 
  */
  // throws - @objc func makeDocumentForURL(withContentsOfURL: URL?, ofType: URL, error: String) -> NSDocument?

  /**
    - jsName: makeDocumentWithContentsOfURL
    - name: makeDocumentWithContentsOfURL:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: 
  */
  // throws - @objc func makeDocumentWithContentsOfURL(ofType: URL, error: String) -> NSDocument?

  /**
    - jsName: makeUntitledDocumentOfType
    - name: makeUntitledDocumentOfType:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func makeUntitledDocumentOfType(error: String) -> NSDocument?

  /**
    - jsName: newDocument
    - name: newDocument:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func newDocument(_: Any?)

  /**
    - jsName: noteNewRecentDocument
    - name: noteNewRecentDocument:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func noteNewRecentDocument(_: NSDocument)

  /**
    - jsName: noteNewRecentDocumentURL
    - name: noteNewRecentDocumentURL:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func noteNewRecentDocumentURL(_: URL)

  /**
    - jsName: openDocument
    - name: openDocument:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func openDocument(_: Any?)

  /**
    - jsName: openDocument
    - name: openDocumentWithContentsOfURL:display:completionHandler:
    - argLabels: withContentsOf, display, completionHandler
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: openDocument(withContentsOf:display:completionHandler:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (openDocumentWithContentsOfURL:display:completionHandler:) @available(OSX 10.7, *) func openDocument(withContentsOf: URL, display: Bool, completionHandler: JSValue)

  /**
    - jsName: openUntitledDocumentAndDisplay
    - name: openUntitledDocumentAndDisplay:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func openUntitledDocumentAndDisplay(error: Bool) -> NSDocument?

  /**
    - jsName: presentError
    - name: presentError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func presentError(_: Error) -> Bool

  /**
    - jsName: presentError
    - name: presentError:modalForWindow:delegate:didPresentSelector:contextInfo:
    - argLabels: _, modalFor, delegate, didPresent, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: presentError(_:modalFor:delegate:didPresent:contextInfo:)
  */
  @objc (presentError:modalForWindow:delegate:didPresentSelector:contextInfo:) func presentError(_: Error, modalFor: NSWindow, delegate: Any?, didPresent: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: removeDocument
    - name: removeDocument:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeDocument(_: NSDocument)

  /**
    - jsName: reopenDocument
    - name: reopenDocumentForURL:withContentsOfURL:display:completionHandler:
    - argLabels: for, withContentsOf, display, completionHandler
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: reopenDocument(for:withContentsOf:display:completionHandler:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (reopenDocumentForURL:withContentsOfURL:display:completionHandler:) @available(OSX 10.7, *) func reopenDocument(`for`: URL?, withContentsOf: URL, display: Bool, completionHandler: JSValue)

  /**
    - jsName: reviewUnsavedDocuments
    - name: reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:
    - argLabels: withAlertTitle, cancellable, delegate, didReviewAllSelector, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: reviewUnsavedDocuments(withAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:)
  */
  @objc (reviewUnsavedDocumentsWithAlertTitle:cancellable:delegate:didReviewAllSelector:contextInfo:) func reviewUnsavedDocuments(withAlertTitle: String?, cancellable: Bool, delegate: Any?, didReviewAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: runModalOpenPanel
    - name: runModalOpenPanel:forTypes:
    - argLabels: forTypes
    - constructorTokens: 
  */
  @objc func runModalOpenPanel(_: NSOpenPanel, forTypes: [String]?) -> Int

  /**
    - jsName: saveAllDocuments
    - name: saveAllDocuments:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func saveAllDocuments(_: Any?)

  /**
    - jsName: standardShareMenuItem
    - name: standardShareMenuItem
    - argLabels: 
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func standardShareMenuItem() -> NSMenuItem

  /**
    - jsName: typeForContentsOfURL
    - name: typeForContentsOfURL:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func typeForContentsOfURL(error: URL) -> String?

  /**
    - jsName: willPresentError
    - name: willPresentError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func willPresentError(_: Error) -> Error

  // Own Instance Properties

  /**
    - jsName: allowsAutomaticShareMenu
    - name: allowsAutomaticShareMenu
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowsAutomaticShareMenu: Bool { @objc get }

  /**
    - jsName: autosavingDelay
    - name: autosavingDelay
    - argLabels: 
  */
  @objc var autosavingDelay: TimeInterval { @objc get @objc (setAutosavingDelay:) set }

  /**
    - jsName: currentDirectory
    - name: currentDirectory
    - argLabels: 
  */
  @objc var currentDirectory: String? { @objc get }

  /**
    - jsName: currentDocument
    - name: currentDocument
    - argLabels: 
  */
  @objc var currentDocument: NSDocument? { @objc get }

  /**
    - jsName: defaultType
    - name: defaultType
    - argLabels: 
  */
  @objc var defaultType: String? { @objc get }

  /**
    - jsName: documentClassNames
    - name: documentClassNames
    - argLabels: 
  */
  @objc var documentClassNames: [String] { @objc get }

  /**
    - jsName: documents
    - name: documents
    - argLabels: 
  */
  @objc var documents: [NSDocument] { @objc get }

  /**
    - jsName: hasEditedDocuments
    - name: hasEditedDocuments
    - argLabels: 
  */
  @objc var hasEditedDocuments: Bool { @objc get }

  /**
    - jsName: maximumRecentDocumentCount
    - name: maximumRecentDocumentCount
    - argLabels: 
  */
  @objc var maximumRecentDocumentCount: Int { @objc get }

  /**
    - jsName: recentDocumentURLs
    - name: recentDocumentURLs
    - argLabels: 
  */
  @objc var recentDocumentURLs: [URL] { @objc get }
}

extension NSDocumentController: NSDocumentControllerExports {
}
