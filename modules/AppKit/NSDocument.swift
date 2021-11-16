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
    - Selector: NSDocument
  */

@objc(NSDocument) protocol NSDocumentExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canConcurrentlyReadDocumentsOfType:
    - Introduced: 10.6
  */
  @objc (canConcurrentlyReadDocumentsOfType:) @available(OSX 10.6, *) static func canConcurrentlyReadDocuments(ofType: String) -> Bool

  /**
    - Selector: isNativeType:
  */
  @objc static func isNativeType(_: String) -> Bool

  // Own Static Properties

  /**
    - Selector: autosavesDrafts
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static var autosavesDrafts: Bool { @objc get }

  /**
    - Selector: autosavesInPlace
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var autosavesInPlace: Bool { @objc get }

  /**
    - Selector: preservesVersions
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var preservesVersions: Bool { @objc get }

  /**
    - Selector: readableTypes
  */
  @objc static var readableTypes: [String] { @objc get }

  /**
    - Selector: restorableStateKeyPaths
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var restorableStateKeyPaths: [String] { @objc get }

  /**
    - Selector: usesUbiquitousStorage
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static var usesUbiquitousStorage: Bool { @objc get }

  /**
    - Selector: writableTypes
  */
  @objc static var writableTypes: [String] { @objc get }

  // Instance Methods

  /**
    - Selector: addWindowController:
  */
  @objc func addWindowController(_: NSWindowController)

  /**
    - Selector: autosaveDocumentWithDelegate:didAutosaveSelector:contextInfo:
  */
  @objc (autosaveDocumentWithDelegate:didAutosaveSelector:contextInfo:) func autosave(withDelegate: Any?, didAutosave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: autosaveWithImplicitCancellability:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func autosaveWithImplicitCancellabilityWithCompletionHandler(withImplicitCancellability: Bool, completionHandler: JSValue)

  /**
    - Selector: browseDocumentVersions:
    - Introduced: 10.8
  */
  @objc (browseDocumentVersions:) @available(OSX 10.8, *) func browseVersions(_: Any?)

  /**
    - Selector: canAsynchronouslyWriteToURL:ofType:forSaveOperation:
    - Introduced: 10.7
  */
  @objc (canAsynchronouslyWriteToURL:ofType:forSaveOperation:) @available(OSX 10.7, *) func canAsynchronouslyWrite(to: URL, ofType: String, `for`: NSDocument.SaveOperationType) -> Bool

  /**
    - Selector: canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:
  */
  @objc (canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:) func canClose(withDelegate: Any, shouldClose: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: changeCountTokenForSaveOperation:
    - Introduced: 10.7
  */
  @objc (changeCountTokenForSaveOperation:) @available(OSX 10.7, *) func changeCountToken(`for`: NSDocument.SaveOperationType) -> Any

  /**
    - Selector: checkAutosavingSafetyAndReturnError:
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) func checkAutosavingSafetyAndReturnError() -> Bool

  /**
    - Selector: close
  */
  @objc func close()

  /**
    - Selector: continueActivityUsingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func continueActivityUsingBlock(_ p0: JSValue)

  /**
    - Selector: continueAsynchronousWorkOnMainThreadUsingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func continueAsynchronousWorkOnMainThreadUsingBlock(_ p0: JSValue)

  /**
    - Selector: dataOfType:error:
  */
  // throws - @objc func dataOfType(error: String) -> Data?

  /**
    - Selector: defaultDraftName
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func defaultDraftName() -> String

  /**
    - Selector: duplicateAndReturnError:
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) func duplicateAndReturnError() -> NSDocument?

  /**
    - Selector: duplicateDocument:
    - Introduced: 10.7
  */
  @objc (duplicateDocument:) @available(OSX 10.7, *) func duplicate(_: Any?)

  /**
    - Selector: duplicateDocumentWithDelegate:didDuplicateSelector:contextInfo:
    - Introduced: 10.7
  */
  @objc (duplicateDocumentWithDelegate:didDuplicateSelector:contextInfo:) @available(OSX 10.7, *) func duplicate(withDelegate: Any?, didDuplicate: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: encodeRestorableStateWithCoder:
    - Introduced: 10.7
  */
  @objc (encodeRestorableStateWithCoder:) @available(OSX 10.7, *) func encodeRestorableState(with: NSCoder)

  /**
    - Selector: encodeRestorableStateWithCoder:backgroundQueue:
    - Introduced: 10.13
  */
  @objc (encodeRestorableStateWithCoder:backgroundQueue:) @available(OSX 10.13, *) func encodeRestorableState(with: NSCoder, backgroundQueue: OperationQueue)

  /**
    - Selector: fileAttributesToWriteToURL:ofType:forSaveOperation:originalContentsURL:error:
  */
  // throws - @objc func fileAttributesToWriteToURL(ofType: URL, forSaveOperation: String, originalContentsURL: NSDocument.SaveOperationType, error: URL?) -> [String: Any]?

  /**
    - Selector: fileNameExtensionForType:saveOperation:
    - Introduced: 10.5
  */
  @objc (fileNameExtensionForType:saveOperation:) @available(OSX 10.5, *) func fileNameExtension(forType: String, saveOperation: NSDocument.SaveOperationType) -> String?

  /**
    - Selector: fileWrapperOfType:error:
  */
  // throws - @objc func fileWrapperOfType(error: String) -> FileWrapper?

  /**
    - Selector: handleCloseScriptCommand:
  */
  @objc (handleCloseScriptCommand:) func handleClose(_: NSCloseCommand) -> Any?

  /**
    - Selector: handlePrintScriptCommand:
  */
  @objc (handlePrintScriptCommand:) func handlePrint(_: NSScriptCommand) -> Any?

  /**
    - Selector: handleSaveScriptCommand:
  */
  @objc (handleSaveScriptCommand:) func handleSave(_: NSScriptCommand) -> Any?

  /**
    - Selector: invalidateRestorableState
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func invalidateRestorableState()

  /**
    - Selector: lockDocument:
    - Introduced: 10.8
  */
  @objc (lockDocument:) @available(OSX 10.8, *) func lock(_: Any?)

  /**
    - Selector: lockDocumentWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func lockDocumentWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: lockWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func lockWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: makeWindowControllers
  */
  @objc func makeWindowControllers()

  /**
    - Selector: moveDocument:
    - Introduced: 10.8
  */
  @objc (moveDocument:) @available(OSX 10.8, *) func move(_: Any?)

  /**
    - Selector: moveDocumentToUbiquityContainer:
    - Introduced: 10.8
  */
  @objc (moveDocumentToUbiquityContainer:) @available(OSX 10.8, *) func moveToUbiquityContainer(_: Any?)

  /**
    - Selector: moveDocumentWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func moveDocumentWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: moveToURL:completionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func moveToURLWithCompletionHandler(to: URL, completionHandler: JSValue)

  /**
    - Selector: performActivityWithSynchronousWaiting:usingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func performActivityWithSynchronousWaitingWithUsingBlock(withSynchronousWaiting: Bool, using: JSValue)

  /**
    - Selector: performAsynchronousFileAccessUsingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func performAsynchronousFileAccessUsingBlock(_ p0: JSValue)

  /**
    - Selector: performSynchronousFileAccessUsingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func performSynchronousFileAccessUsingBlock(_ p0: JSValue)

  /**
    - Selector: preparePageLayout:
  */
  @objc (preparePageLayout:) func preparePageLayout(_: NSPageLayout) -> Bool

  /**
    - Selector: prepareSavePanel:
  */
  @objc (prepareSavePanel:) func prepareSavePanel(_: NSSavePanel) -> Bool

  /**
    - Selector: prepareSharingServicePicker:
    - Introduced: 10.13
  */
  @objc (prepareSharingServicePicker:) @available(OSX 10.13, *) func prepare(_: NSSharingServicePicker)

  /**
    - Selector: presentError:
  */
  @objc func presentError(_: Error) -> Bool

  /**
    - Selector: presentError:modalForWindow:delegate:didPresentSelector:contextInfo:
  */
  @objc (presentError:modalForWindow:delegate:didPresentSelector:contextInfo:) func presentError(_: Error, modalFor: NSWindow, delegate: Any?, didPresent: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: printDocument:
  */
  @objc (printDocument:) func printDocument(_: Any?)

  /**
    - Selector: printDocumentWithSettings:showPrintPanel:delegate:didPrintSelector:contextInfo:
  */
  @objc (printDocumentWithSettings:showPrintPanel:delegate:didPrintSelector:contextInfo:) func print(withSettings: [NSPrintInfo.AttributeKey: Any], showPrintPanel: Bool, delegate: Any?, didPrint: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: printOperationWithSettings:error:
  */
  // throws - @objc func printOperationWithSettings(error: [NSPrintInfo.AttributeKey: Any]) -> NSPrintOperation?

  /**
    - Selector: readFromData:ofType:error:
  */
  // throws - @objc func readFromData(ofType: Data, error: String) -> Bool

  /**
    - Selector: readFromFileWrapper:ofType:error:
  */
  // throws - @objc func readFromFileWrapper(ofType: FileWrapper, error: String) -> Bool

  /**
    - Selector: readFromURL:ofType:error:
  */
  // throws - @objc func readFromURL(ofType: URL, error: String) -> Bool

  /**
    - Selector: removeWindowController:
  */
  @objc func removeWindowController(_: NSWindowController)

  /**
    - Selector: renameDocument:
    - Introduced: 10.8
  */
  @objc (renameDocument:) @available(OSX 10.8, *) func rename(_: Any?)

  /**
    - Selector: restoreDocumentWindowWithIdentifier:state:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func restoreDocumentWindowWithIdentifierWithStateWithCompletionHandler(withIdentifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: JSValue)

  /**
    - Selector: restoreStateWithCoder:
    - Introduced: 10.7
  */
  @objc (restoreStateWithCoder:) @available(OSX 10.7, *) func restoreState(with: NSCoder)

  /**
    - Selector: revertDocumentToSaved:
  */
  @objc (revertDocumentToSaved:) func revertToSaved(_: Any?)

  /**
    - Selector: revertToContentsOfURL:ofType:error:
  */
  // throws - @objc func revertToContentsOfURL(ofType: URL, error: String) -> Bool

  /**
    - Selector: runModalPageLayoutWithPrintInfo:delegate:didRunSelector:contextInfo:
  */
  @objc (runModalPageLayoutWithPrintInfo:delegate:didRunSelector:contextInfo:) func runModalPageLayout(with: NSPrintInfo, delegate: Any?, didRun: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: runModalPrintOperation:delegate:didRunSelector:contextInfo:
  */
  @objc (runModalPrintOperation:delegate:didRunSelector:contextInfo:) func runModalPrintOperation(_: NSPrintOperation, delegate: Any?, didRun: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: runModalSavePanelForSaveOperation:delegate:didSaveSelector:contextInfo:
  */
  @objc (runModalSavePanelForSaveOperation:delegate:didSaveSelector:contextInfo:) func runModalSavePanel(`for`: NSDocument.SaveOperationType, delegate: Any?, didSave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: runPageLayout:
  */
  @objc func runPageLayout(_: Any?)

  /**
    - Selector: saveDocument:
  */
  @objc (saveDocument:) func save(_: Any?)

  /**
    - Selector: saveDocumentAs:
  */
  @objc (saveDocumentAs:) func saveAs(_: Any?)

  /**
    - Selector: saveDocumentTo:
  */
  @objc (saveDocumentTo:) func saveTo(_: Any?)

  /**
    - Selector: saveDocumentToPDF:
    - Introduced: 10.9
  */
  @objc (saveDocumentToPDF:) @available(OSX 10.9, *) func saveToPDF(_: Any?)

  /**
    - Selector: saveDocumentWithDelegate:didSaveSelector:contextInfo:
  */
  @objc (saveDocumentWithDelegate:didSaveSelector:contextInfo:) func save(withDelegate: Any?, didSave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: saveToURL:ofType:forSaveOperation:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func saveToURLWithOfTypeWithForSaveOperationWithCompletionHandler(to: URL, ofType: String, `for`: NSDocument.SaveOperationType, completionHandler: JSValue)

  /**
    - Selector: saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:
  */
  @objc (saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:) func save(to: URL, ofType: String, `for`: NSDocument.SaveOperationType, delegate: Any?, didSave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: scheduleAutosaving
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func scheduleAutosaving()

  /**
    - Selector: setWindow:
  */
  @objc func setWindow(_: NSWindow?)

  /**
    - Selector: shareDocumentWithSharingService:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func shareDocumentWithSharingServiceWithCompletionHandler(with: NSSharingService, completionHandler: JSValue)

  /**
    - Selector: shouldChangePrintInfo:
  */
  @objc func shouldChangePrintInfo(_: NSPrintInfo) -> Bool

  /**
    - Selector: shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:
  */
  @objc (shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:) func shouldCloseWindowController(_: NSWindowController, delegate: Any?, shouldClose: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: showWindows
  */
  @objc func showWindows()

  /**
    - Selector: stopBrowsingVersionsWithCompletionHandler:
    - Introduced: 10.12
  */
  // jsvalue @objc @available(OSX 10.12, *) func stopBrowsingVersionsWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: unblockUserInteraction
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func unblockUserInteraction()

  /**
    - Selector: unlockDocument:
    - Introduced: 10.8
  */
  @objc (unlockDocument:) @available(OSX 10.8, *) func unlock(_: Any?)

  /**
    - Selector: unlockDocumentWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func unlockDocumentWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: unlockWithCompletionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func unlockWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: updateChangeCount:
  */
  @objc func updateChangeCount(_: NSDocument.ChangeType)

  /**
    - Selector: updateChangeCountWithToken:forSaveOperation:
    - Introduced: 10.7
  */
  @objc (updateChangeCountWithToken:forSaveOperation:) @available(OSX 10.7, *) func updateChangeCount(withToken: Any, `for`: NSDocument.SaveOperationType)

  /**
    - Selector: updateUserActivityState:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func updateUserActivityState(_: NSUserActivity)

  /**
    - Selector: willNotPresentError:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func willNotPresentError(_: Error)

  /**
    - Selector: willPresentError:
  */
  @objc func willPresentError(_: Error) -> Error

  /**
    - Selector: windowControllerDidLoadNib:
  */
  @objc func windowControllerDidLoadNib(_: NSWindowController)

  /**
    - Selector: windowControllerWillLoadNib:
  */
  @objc func windowControllerWillLoadNib(_: NSWindowController)

  /**
    - Selector: writableTypesForSaveOperation:
  */
  @objc (writableTypesForSaveOperation:) func writableTypes(`for`: NSDocument.SaveOperationType) -> [String]

  /**
    - Selector: writeSafelyToURL:ofType:forSaveOperation:error:
  */
  // throws - @objc func writeSafelyToURL(ofType: URL, forSaveOperation: String, error: NSDocument.SaveOperationType) -> Bool

  /**
    - Selector: writeToURL:ofType:error:
  */
  // throws - @objc func writeToURL(ofType: URL, error: String) -> Bool

  /**
    - Selector: writeToURL:ofType:forSaveOperation:originalContentsURL:error:
  */
  // throws - @objc func writeToURL(ofType: URL, forSaveOperation: String, originalContentsURL: NSDocument.SaveOperationType, error: URL?) -> Bool

  // Own Instance Properties

  /**
    - Selector: PDFPrintOperation
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var pdfPrintOperation: NSPrintOperation { @objc (PDFPrintOperation) get }

  /**
    - Selector: allowsDocumentSharing
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowsDocumentSharing: Bool { @objc get }

  /**
    - Selector: autosavedContentsFileURL
  */
  @objc var autosavedContentsFileURL: URL? { @objc get @objc (setAutosavedContentsFileURL:) set }

  /**
    - Selector: autosavingFileType
  */
  @objc var autosavingFileType: String? { @objc get }

  /**
    - Selector: autosavingIsImplicitlyCancellable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var autosavingIsImplicitlyCancellable: Bool { @objc get }

  /**
    - Selector: backupFileURL
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var backupFileURL: URL? { @objc get }

  /**
    - Selector: browsingVersions
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isBrowsingVersions: Bool { @objc get }

  /**
    - Selector: displayName
  */
  @objc var displayName: String! { @objc get @objc (setDisplayName:) set }

  /**
    - Selector: documentEdited
  */
  @objc var isDocumentEdited: Bool { @objc get }

  /**
    - Selector: draft
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isDraft: Bool { @objc get @objc (setDraft:) set }

  /**
    - Selector: entireFileLoaded
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isEntireFileLoaded: Bool { @objc get }

  /**
    - Selector: fileModificationDate
  */
  @objc var fileModificationDate: Date? { @objc get @objc (setFileModificationDate:) set }

  /**
    - Selector: fileNameExtensionWasHiddenInLastRunSavePanel
  */
  @objc var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { @objc get }

  /**
    - Selector: fileType
  */
  @objc var fileType: String? { @objc get @objc (setFileType:) set }

  /**
    - Selector: fileTypeFromLastRunSavePanel
  */
  @objc var fileTypeFromLastRunSavePanel: String? { @objc get }

  /**
    - Selector: fileURL
  */
  @objc var fileURL: URL? { @objc get @objc (setFileURL:) set }

  /**
    - Selector: hasUnautosavedChanges
  */
  @objc var hasUnautosavedChanges: Bool { @objc get }

  /**
    - Selector: hasUndoManager
  */
  @objc var hasUndoManager: Bool { @objc get @objc (setHasUndoManager:) set }

  /**
    - Selector: inViewingMode
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isInViewingMode: Bool { @objc get }

  /**
    - Selector: keepBackupFile
  */
  @objc var keepBackupFile: Bool { @objc get }

  /**
    - Selector: lastComponentOfFileName
  */
  @objc var lastComponentOfFileName: String { @objc get @objc (setLastComponentOfFileName:) set }

  /**
    - Selector: locked
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isLocked: Bool { @objc get }

  /**
    - Selector: printInfo
  */
  @objc var printInfo: NSPrintInfo { @objc get @objc (setPrintInfo:) set }

  /**
    - Selector: shouldRunSavePanelWithAccessoryView
  */
  @objc var shouldRunSavePanelWithAccessoryView: Bool { @objc get }

  /**
    - Selector: undoManager
  */
  @objc var undoManager: UndoManager? { @objc get @objc (setUndoManager:) set }

  /**
    - Selector: userActivity
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var userActivity: NSUserActivity? { @objc get @objc (setUserActivity:) set }

  /**
    - Selector: windowControllers
  */
  @objc var windowControllers: [NSWindowController] { @objc get }

  /**
    - Selector: windowForSheet
  */
  @objc var windowForSheet: NSWindow? { @objc get }

  /**
    - Selector: windowNibName
  */
  @objc var windowNibName: NSNib.Name? { @objc get }
}

extension NSDocument: NSDocumentExports {
}
