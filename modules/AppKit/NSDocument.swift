import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDocument
    - name: NSDocument
    - argLabels: 
  */

@objc(NSDocument) protocol NSDocumentExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: canConcurrentlyReadDocuments
    - name: canConcurrentlyReadDocumentsOfType:
    - argLabels: ofType
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: canConcurrentlyReadDocuments(ofType:)
    - Introduced: 10.6
  */
  @objc (canConcurrentlyReadDocumentsOfType:) @available(OSX 10.6, *) static func canConcurrentlyReadDocuments(ofType: String) -> Bool

  /**
    - jsName: isNativeType
    - name: isNativeType:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func isNativeType(_: String) -> Bool

  // Own Static Properties

  /**
    - jsName: autosavesDrafts
    - name: autosavesDrafts
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static var autosavesDrafts: Bool { @objc get }

  /**
    - jsName: autosavesInPlace
    - name: autosavesInPlace
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var autosavesInPlace: Bool { @objc get }

  /**
    - jsName: preservesVersions
    - name: preservesVersions
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var preservesVersions: Bool { @objc get }

  /**
    - jsName: readableTypes
    - name: readableTypes
    - argLabels: 
  */
  @objc static var readableTypes: [String] { @objc get }

  /**
    - jsName: restorableStateKeyPaths
    - name: restorableStateKeyPaths
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var restorableStateKeyPaths: [String] { @objc get }

  /**
    - jsName: usesUbiquitousStorage
    - name: usesUbiquitousStorage
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static var usesUbiquitousStorage: Bool { @objc get }

  /**
    - jsName: writableTypes
    - name: writableTypes
    - argLabels: 
  */
  @objc static var writableTypes: [String] { @objc get }

  // Instance Methods

  /**
    - jsName: addWindowController
    - name: addWindowController:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addWindowController(_: NSWindowController)

  /**
    - jsName: autosave
    - name: autosaveDocumentWithDelegate:didAutosaveSelector:contextInfo:
    - argLabels: withDelegate, didAutosave, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: autosave(withDelegate:didAutosave:contextInfo:)
  */
  @objc (autosaveDocumentWithDelegate:didAutosaveSelector:contextInfo:) func autosave(withDelegate: Any?, didAutosave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: autosave
    - name: autosaveWithImplicitCancellability:completionHandler:
    - argLabels: withImplicitCancellability, completionHandler
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: autosave(withImplicitCancellability:completionHandler:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (autosaveWithImplicitCancellability:completionHandler:) @available(OSX 10.7, *) func autosave(withImplicitCancellability: Bool, completionHandler: JSValue)

  /**
    - jsName: browseVersions
    - name: browseDocumentVersions:
    - argLabels: _
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: browseVersions(_:)
    - Introduced: 10.8
  */
  @objc (browseDocumentVersions:) @available(OSX 10.8, *) func browseVersions(_: Any?)

  /**
    - jsName: canAsynchronouslyWrite
    - name: canAsynchronouslyWriteToURL:ofType:forSaveOperation:
    - argLabels: to, ofType, for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: canAsynchronouslyWrite(to:ofType:for:)
    - Introduced: 10.7
  */
  @objc (canAsynchronouslyWriteToURL:ofType:forSaveOperation:) @available(OSX 10.7, *) func canAsynchronouslyWrite(to: URL, ofType: String, `for`: NSDocument.SaveOperationType) -> Bool

  /**
    - jsName: canClose
    - name: canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:
    - argLabels: withDelegate, shouldClose, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canClose(withDelegate:shouldClose:contextInfo:)
  */
  @objc (canCloseDocumentWithDelegate:shouldCloseSelector:contextInfo:) func canClose(withDelegate: Any, shouldClose: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: changeCountToken
    - name: changeCountTokenForSaveOperation:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: changeCountToken(for:)
    - Introduced: 10.7
  */
  @objc (changeCountTokenForSaveOperation:) @available(OSX 10.7, *) func changeCountToken(`for`: NSDocument.SaveOperationType) -> Any

  /**
    - jsName: checkAutosavingSafetyAndReturnError
    - name: checkAutosavingSafetyAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) func checkAutosavingSafetyAndReturnError() -> Bool

  /**
    - jsName: close
    - name: close
    - argLabels: 
    - constructorTokens: 
  */
  @objc func close()

  /**
    - jsName: continueActivity
    - name: continueActivityUsingBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: continueActivity(_:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (continueActivityUsingBlock:) @available(OSX 10.7, *) func continueActivity(_: JSValue)

  /**
    - jsName: continueAsynchronousWorkOnMainThread
    - name: continueAsynchronousWorkOnMainThreadUsingBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: continueAsynchronousWorkOnMainThread(_:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (continueAsynchronousWorkOnMainThreadUsingBlock:) @available(OSX 10.7, *) func continueAsynchronousWorkOnMainThread(_: JSValue)

  /**
    - jsName: dataOfType
    - name: dataOfType:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func dataOfType(error: String) -> Data?

  /**
    - jsName: defaultDraftName
    - name: defaultDraftName
    - argLabels: 
    - constructorTokens: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func defaultDraftName() -> String

  /**
    - jsName: duplicateAndReturnError
    - name: duplicateAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) func duplicateAndReturnError() -> NSDocument?

  /**
    - jsName: duplicate
    - name: duplicateDocument:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: duplicate(_:)
    - Introduced: 10.7
  */
  @objc (duplicateDocument:) @available(OSX 10.7, *) func duplicate(_: Any?)

  /**
    - jsName: duplicate
    - name: duplicateDocumentWithDelegate:didDuplicateSelector:contextInfo:
    - argLabels: withDelegate, didDuplicate, contextInfo
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: duplicate(withDelegate:didDuplicate:contextInfo:)
    - Introduced: 10.7
  */
  @objc (duplicateDocumentWithDelegate:didDuplicateSelector:contextInfo:) @available(OSX 10.7, *) func duplicate(withDelegate: Any?, didDuplicate: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: encodeRestorableState
    - name: encodeRestorableStateWithCoder:
    - argLabels: with
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: encodeRestorableState(with:)
    - Introduced: 10.7
  */
  @objc (encodeRestorableStateWithCoder:) @available(OSX 10.7, *) func encodeRestorableState(with: NSCoder)

  /**
    - jsName: encodeRestorableState
    - name: encodeRestorableStateWithCoder:backgroundQueue:
    - argLabels: with, backgroundQueue
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: encodeRestorableState(with:backgroundQueue:)
    - Introduced: 10.13
  */
  @objc (encodeRestorableStateWithCoder:backgroundQueue:) @available(OSX 10.13, *) func encodeRestorableState(with: NSCoder, backgroundQueue: OperationQueue)

  /**
    - jsName: fileAttributesToWriteToURL
    - name: fileAttributesToWriteToURL:ofType:forSaveOperation:originalContentsURL:error:
    - argLabels: ofType, forSaveOperation, originalContentsURL, error
    - constructorTokens: 
  */
  // throws - @objc func fileAttributesToWriteToURL(ofType: URL, forSaveOperation: String, originalContentsURL: NSDocument.SaveOperationType, error: URL?) -> [String: Any]?

  /**
    - jsName: fileNameExtension
    - name: fileNameExtensionForType:saveOperation:
    - argLabels: forType, saveOperation
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: fileNameExtension(forType:saveOperation:)
    - Introduced: 10.5
  */
  @objc (fileNameExtensionForType:saveOperation:) @available(OSX 10.5, *) func fileNameExtension(forType: String, saveOperation: NSDocument.SaveOperationType) -> String?

  /**
    - jsName: fileWrapperOfType
    - name: fileWrapperOfType:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func fileWrapperOfType(error: String) -> FileWrapper?

  /**
    - jsName: handleClose
    - name: handleCloseScriptCommand:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: handleClose(_:)
  */
  @objc (handleCloseScriptCommand:) func handleClose(_: NSCloseCommand) -> Any?

  /**
    - jsName: handlePrint
    - name: handlePrintScriptCommand:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: handlePrint(_:)
  */
  @objc (handlePrintScriptCommand:) func handlePrint(_: NSScriptCommand) -> Any?

  /**
    - jsName: handleSave
    - name: handleSaveScriptCommand:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: handleSave(_:)
  */
  @objc (handleSaveScriptCommand:) func handleSave(_: NSScriptCommand) -> Any?

  /**
    - jsName: createForURL
    - name: initForURL:withContentsOfURL:ofType:error:
    - argLabels: withContentsOfURL, ofType, error
    - constructorTokens: forURL, withContentsOfURL, ofType
  */
  @objc static func createForURL(`for`: URL?, withContentsOf: URL, ofType: String) -> Self?

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: contentsOf, ofType
  */
  @objc static func createWithContentsOfURL(contentsOf: URL, ofType: String) -> Self?

  /**
    - jsName: createWithType
    - name: initWithType:error:
    - argLabels: error
    - constructorTokens: type
  */
  @objc static func createWithType(type: String) -> Self?

  /**
    - jsName: invalidateRestorableState
    - name: invalidateRestorableState
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func invalidateRestorableState()

  /**
    - jsName: lock
    - name: lockDocument:
    - argLabels: _
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: lock(_:)
    - Introduced: 10.8
  */
  @objc (lockDocument:) @available(OSX 10.8, *) func lock(_: Any?)

  /**
    - jsName: lock
    - name: lockDocumentWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: lock(completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (lockDocumentWithCompletionHandler:) @available(OSX 10.8, *) func lock(completionHandler: JSValue)

  /**
    - jsName: lock
    - name: lockWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: lock(completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (lockWithCompletionHandler:) @available(OSX 10.8, *) func lock(completionHandler: JSValue)

  /**
    - jsName: makeWindowControllers
    - name: makeWindowControllers
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makeWindowControllers()

  /**
    - jsName: move
    - name: moveDocument:
    - argLabels: _
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: move(_:)
    - Introduced: 10.8
  */
  @objc (moveDocument:) @available(OSX 10.8, *) func move(_: Any?)

  /**
    - jsName: moveToUbiquityContainer
    - name: moveDocumentToUbiquityContainer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: moveToUbiquityContainer(_:)
    - Introduced: 10.8
  */
  @objc (moveDocumentToUbiquityContainer:) @available(OSX 10.8, *) func moveToUbiquityContainer(_: Any?)

  /**
    - jsName: move
    - name: moveDocumentWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: move(completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (moveDocumentWithCompletionHandler:) @available(OSX 10.8, *) func move(completionHandler: JSValue)

  /**
    - jsName: move
    - name: moveToURL:completionHandler:
    - argLabels: to, completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: move(to:completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (moveToURL:completionHandler:) @available(OSX 10.8, *) func move(to: URL, completionHandler: JSValue)

  /**
    - jsName: performActivity
    - name: performActivityWithSynchronousWaiting:usingBlock:
    - argLabels: withSynchronousWaiting, using
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: performActivity(withSynchronousWaiting:using:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (performActivityWithSynchronousWaiting:usingBlock:) @available(OSX 10.7, *) func performActivity(withSynchronousWaiting: Bool, using: JSValue)

  /**
    - jsName: performAsynchronousFileAccess
    - name: performAsynchronousFileAccessUsingBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: performAsynchronousFileAccess(_:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (performAsynchronousFileAccessUsingBlock:) @available(OSX 10.7, *) func performAsynchronousFileAccess(_: JSValue)

  /**
    - jsName: performSynchronousFileAccess
    - name: performSynchronousFileAccessUsingBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: performSynchronousFileAccess(_:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (performSynchronousFileAccessUsingBlock:) @available(OSX 10.7, *) func performSynchronousFileAccess(_: JSValue)

  /**
    - jsName: preparePageLayout
    - name: preparePageLayout:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (preparePageLayout:) func preparePageLayout(_: NSPageLayout) -> Bool

  /**
    - jsName: prepareSavePanel
    - name: prepareSavePanel:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (prepareSavePanel:) func prepareSavePanel(_: NSSavePanel) -> Bool

  /**
    - jsName: prepare
    - name: prepareSharingServicePicker:
    - argLabels: _
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: prepare(_:)
    - Introduced: 10.13
  */
  @objc (prepareSharingServicePicker:) @available(OSX 10.13, *) func prepare(_: NSSharingServicePicker)

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
    - jsName: printDocument
    - name: printDocument:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (printDocument:) func printDocument(_: Any?)

  /**
    - jsName: print
    - name: printDocumentWithSettings:showPrintPanel:delegate:didPrintSelector:contextInfo:
    - argLabels: withSettings, showPrintPanel, delegate, didPrint, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: print(withSettings:showPrintPanel:delegate:didPrint:contextInfo:)
  */
  @objc (printDocumentWithSettings:showPrintPanel:delegate:didPrintSelector:contextInfo:) func print(withSettings: [NSPrintInfo.AttributeKey: Any], showPrintPanel: Bool, delegate: Any?, didPrint: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: printOperationWithSettings
    - name: printOperationWithSettings:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func printOperationWithSettings(error: [NSPrintInfo.AttributeKey: Any]) -> NSPrintOperation?

  /**
    - jsName: readFromData
    - name: readFromData:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: 
  */
  // throws - @objc func readFromData(ofType: Data, error: String) -> Bool

  /**
    - jsName: readFromFileWrapper
    - name: readFromFileWrapper:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: 
  */
  // throws - @objc func readFromFileWrapper(ofType: FileWrapper, error: String) -> Bool

  /**
    - jsName: readFromURL
    - name: readFromURL:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: 
  */
  // throws - @objc func readFromURL(ofType: URL, error: String) -> Bool

  /**
    - jsName: removeWindowController
    - name: removeWindowController:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeWindowController(_: NSWindowController)

  /**
    - jsName: rename
    - name: renameDocument:
    - argLabels: _
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: rename(_:)
    - Introduced: 10.8
  */
  @objc (renameDocument:) @available(OSX 10.8, *) func rename(_: Any?)

  /**
    - jsName: restoreWindow
    - name: restoreDocumentWindowWithIdentifier:state:completionHandler:
    - argLabels: withIdentifier, state, completionHandler
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: restoreWindow(withIdentifier:state:completionHandler:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (restoreDocumentWindowWithIdentifier:state:completionHandler:) @available(OSX 10.7, *) func restoreWindow(withIdentifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: JSValue)

  /**
    - jsName: restoreState
    - name: restoreStateWithCoder:
    - argLabels: with
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: restoreState(with:)
    - Introduced: 10.7
  */
  @objc (restoreStateWithCoder:) @available(OSX 10.7, *) func restoreState(with: NSCoder)

  /**
    - jsName: revertToSaved
    - name: revertDocumentToSaved:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: revertToSaved(_:)
  */
  @objc (revertDocumentToSaved:) func revertToSaved(_: Any?)

  /**
    - jsName: revertToContentsOfURL
    - name: revertToContentsOfURL:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: 
  */
  // throws - @objc func revertToContentsOfURL(ofType: URL, error: String) -> Bool

  /**
    - jsName: runModalPageLayout
    - name: runModalPageLayoutWithPrintInfo:delegate:didRunSelector:contextInfo:
    - argLabels: with, delegate, didRun, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runModalPageLayout(with:delegate:didRun:contextInfo:)
  */
  @objc (runModalPageLayoutWithPrintInfo:delegate:didRunSelector:contextInfo:) func runModalPageLayout(with: NSPrintInfo, delegate: Any?, didRun: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: runModalPrintOperation
    - name: runModalPrintOperation:delegate:didRunSelector:contextInfo:
    - argLabels: _, delegate, didRun, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runModalPrintOperation(_:delegate:didRun:contextInfo:)
  */
  @objc (runModalPrintOperation:delegate:didRunSelector:contextInfo:) func runModalPrintOperation(_: NSPrintOperation, delegate: Any?, didRun: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: runModalSavePanel
    - name: runModalSavePanelForSaveOperation:delegate:didSaveSelector:contextInfo:
    - argLabels: for, delegate, didSave, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runModalSavePanel(for:delegate:didSave:contextInfo:)
  */
  @objc (runModalSavePanelForSaveOperation:delegate:didSaveSelector:contextInfo:) func runModalSavePanel(`for`: NSDocument.SaveOperationType, delegate: Any?, didSave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: runPageLayout
    - name: runPageLayout:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runPageLayout(_: Any?)

  /**
    - jsName: save
    - name: saveDocument:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: save(_:)
  */
  @objc (saveDocument:) func save(_: Any?)

  /**
    - jsName: saveAs
    - name: saveDocumentAs:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: saveAs(_:)
  */
  @objc (saveDocumentAs:) func saveAs(_: Any?)

  /**
    - jsName: saveTo
    - name: saveDocumentTo:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: saveTo(_:)
  */
  @objc (saveDocumentTo:) func saveTo(_: Any?)

  /**
    - jsName: saveToPDF
    - name: saveDocumentToPDF:
    - argLabels: _
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: saveToPDF(_:)
    - Introduced: 10.9
  */
  @objc (saveDocumentToPDF:) @available(OSX 10.9, *) func saveToPDF(_: Any?)

  /**
    - jsName: save
    - name: saveDocumentWithDelegate:didSaveSelector:contextInfo:
    - argLabels: withDelegate, didSave, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: save(withDelegate:didSave:contextInfo:)
  */
  @objc (saveDocumentWithDelegate:didSaveSelector:contextInfo:) func save(withDelegate: Any?, didSave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: save
    - name: saveToURL:ofType:forSaveOperation:completionHandler:
    - argLabels: to, ofType, for, completionHandler
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: save(to:ofType:for:completionHandler:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (saveToURL:ofType:forSaveOperation:completionHandler:) @available(OSX 10.7, *) func save(to: URL, ofType: String, `for`: NSDocument.SaveOperationType, completionHandler: JSValue)

  /**
    - jsName: save
    - name: saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:
    - argLabels: to, ofType, for, delegate, didSave, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: save(to:ofType:for:delegate:didSave:contextInfo:)
  */
  @objc (saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:) func save(to: URL, ofType: String, `for`: NSDocument.SaveOperationType, delegate: Any?, didSave: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: scheduleAutosaving
    - name: scheduleAutosaving
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func scheduleAutosaving()

  /**
    - jsName: setWindow
    - name: setWindow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setWindow(_: NSWindow?)

  /**
    - jsName: share
    - name: shareDocumentWithSharingService:completionHandler:
    - argLabels: with, completionHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: share(with:completionHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (shareDocumentWithSharingService:completionHandler:) @available(OSX 10.13, *) func share(with: NSSharingService, completionHandler: JSValue)

  /**
    - jsName: shouldChangePrintInfo
    - name: shouldChangePrintInfo:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func shouldChangePrintInfo(_: NSPrintInfo) -> Bool

  /**
    - jsName: shouldCloseWindowController
    - name: shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:
    - argLabels: _, delegate, shouldClose, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldCloseWindowController(_:delegate:shouldClose:contextInfo:)
  */
  @objc (shouldCloseWindowController:delegate:shouldCloseSelector:contextInfo:) func shouldCloseWindowController(_: NSWindowController, delegate: Any?, shouldClose: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: showWindows
    - name: showWindows
    - argLabels: 
    - constructorTokens: 
  */
  @objc func showWindows()

  /**
    - jsName: stopBrowsingVersions
    - name: stopBrowsingVersionsWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: stopBrowsingVersions(completionHandler:)
    - Introduced: 10.12
  */
  // jsvalue - @objc (stopBrowsingVersionsWithCompletionHandler:) @available(OSX 10.12, *) func stopBrowsingVersions(completionHandler: JSValue)

  /**
    - jsName: unblockUserInteraction
    - name: unblockUserInteraction
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func unblockUserInteraction()

  /**
    - jsName: unlock
    - name: unlockDocument:
    - argLabels: _
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: unlock(_:)
    - Introduced: 10.8
  */
  @objc (unlockDocument:) @available(OSX 10.8, *) func unlock(_: Any?)

  /**
    - jsName: unlock
    - name: unlockDocumentWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: unlock(completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (unlockDocumentWithCompletionHandler:) @available(OSX 10.8, *) func unlock(completionHandler: JSValue)

  /**
    - jsName: unlock
    - name: unlockWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: unlock(completionHandler:)
    - Introduced: 10.8
  */
  // jsvalue - @objc (unlockWithCompletionHandler:) @available(OSX 10.8, *) func unlock(completionHandler: JSValue)

  /**
    - jsName: updateChangeCount
    - name: updateChangeCount:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateChangeCount(_: NSDocument.ChangeType)

  /**
    - jsName: updateChangeCount
    - name: updateChangeCountWithToken:forSaveOperation:
    - argLabels: withToken, for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: updateChangeCount(withToken:for:)
    - Introduced: 10.7
  */
  @objc (updateChangeCountWithToken:forSaveOperation:) @available(OSX 10.7, *) func updateChangeCount(withToken: Any, `for`: NSDocument.SaveOperationType)

  /**
    - jsName: updateUserActivityState
    - name: updateUserActivityState:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func updateUserActivityState(_: NSUserActivity)

  /**
    - jsName: willNotPresentError
    - name: willNotPresentError:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func willNotPresentError(_: Error)

  /**
    - jsName: willPresentError
    - name: willPresentError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func willPresentError(_: Error) -> Error

  /**
    - jsName: windowControllerDidLoadNib
    - name: windowControllerDidLoadNib:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func windowControllerDidLoadNib(_: NSWindowController)

  /**
    - jsName: windowControllerWillLoadNib
    - name: windowControllerWillLoadNib:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func windowControllerWillLoadNib(_: NSWindowController)

  /**
    - jsName: writableTypes
    - name: writableTypesForSaveOperation:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writableTypes(for:)
  */
  @objc (writableTypesForSaveOperation:) func writableTypes(`for`: NSDocument.SaveOperationType) -> [String]

  /**
    - jsName: writeSafelyToURL
    - name: writeSafelyToURL:ofType:forSaveOperation:error:
    - argLabels: ofType, forSaveOperation, error
    - constructorTokens: 
  */
  // throws - @objc func writeSafelyToURL(ofType: URL, forSaveOperation: String, error: NSDocument.SaveOperationType) -> Bool

  /**
    - jsName: writeToURL
    - name: writeToURL:ofType:error:
    - argLabels: ofType, error
    - constructorTokens: 
  */
  // throws - @objc func writeToURL(ofType: URL, error: String) -> Bool

  /**
    - jsName: writeToURL
    - name: writeToURL:ofType:forSaveOperation:originalContentsURL:error:
    - argLabels: ofType, forSaveOperation, originalContentsURL, error
    - constructorTokens: 
  */
  // throws - @objc func writeToURL(ofType: URL, forSaveOperation: String, originalContentsURL: NSDocument.SaveOperationType, error: URL?) -> Bool

  // Own Instance Properties

  /**
    - jsName: pdfPrintOperation
    - name: PDFPrintOperation
    - argLabels: 
    - available: 10.9
    - obsoleted: 3
    - renamed: pdfPrintOperation
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var pdfPrintOperation: NSPrintOperation { @objc (PDFPrintOperation) get }

  /**
    - jsName: allowsDocumentSharing
    - name: allowsDocumentSharing
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowsDocumentSharing: Bool { @objc get }

  /**
    - jsName: autosavedContentsFileURL
    - name: autosavedContentsFileURL
    - argLabels: 
  */
  @objc var autosavedContentsFileURL: URL? { @objc get @objc (setAutosavedContentsFileURL:) set }

  /**
    - jsName: autosavingFileType
    - name: autosavingFileType
    - argLabels: 
  */
  @objc var autosavingFileType: String? { @objc get }

  /**
    - jsName: autosavingIsImplicitlyCancellable
    - name: autosavingIsImplicitlyCancellable
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var autosavingIsImplicitlyCancellable: Bool { @objc get }

  /**
    - jsName: backupFileURL
    - name: backupFileURL
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var backupFileURL: URL? { @objc get }

  /**
    - jsName: isBrowsingVersions
    - name: browsingVersions
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: isBrowsingVersions
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isBrowsingVersions: Bool { @objc get }

  /**
    - jsName: displayName
    - name: displayName
    - argLabels: 
  */
  @objc var displayName: String! { @objc get @objc (setDisplayName:) set }

  /**
    - jsName: isDocumentEdited
    - name: documentEdited
    - argLabels: 
    - obsoleted: 3
    - renamed: isDocumentEdited
  */
  @objc var isDocumentEdited: Bool { @objc get }

  /**
    - jsName: isDraft
    - name: draft
    - argLabels: 
    - available: 10.8
    - obsoleted: 3
    - renamed: isDraft
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isDraft: Bool { @objc get @objc (setDraft:) set }

  /**
    - jsName: isEntireFileLoaded
    - name: entireFileLoaded
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isEntireFileLoaded
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isEntireFileLoaded: Bool { @objc get }

  /**
    - jsName: fileModificationDate
    - name: fileModificationDate
    - argLabels: 
  */
  @objc var fileModificationDate: Date? { @objc get @objc (setFileModificationDate:) set }

  /**
    - jsName: fileNameExtensionWasHiddenInLastRunSavePanel
    - name: fileNameExtensionWasHiddenInLastRunSavePanel
    - argLabels: 
  */
  @objc var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { @objc get }

  /**
    - jsName: fileType
    - name: fileType
    - argLabels: 
  */
  @objc var fileType: String? { @objc get @objc (setFileType:) set }

  /**
    - jsName: fileTypeFromLastRunSavePanel
    - name: fileTypeFromLastRunSavePanel
    - argLabels: 
  */
  @objc var fileTypeFromLastRunSavePanel: String? { @objc get }

  /**
    - jsName: fileURL
    - name: fileURL
    - argLabels: 
  */
  @objc var fileURL: URL? { @objc get @objc (setFileURL:) set }

  /**
    - jsName: hasUnautosavedChanges
    - name: hasUnautosavedChanges
    - argLabels: 
  */
  @objc var hasUnautosavedChanges: Bool { @objc get }

  /**
    - jsName: hasUndoManager
    - name: hasUndoManager
    - argLabels: 
  */
  @objc var hasUndoManager: Bool { @objc get @objc (setHasUndoManager:) set }

  /**
    - jsName: isInViewingMode
    - name: inViewingMode
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isInViewingMode
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isInViewingMode: Bool { @objc get }

  /**
    - jsName: keepBackupFile
    - name: keepBackupFile
    - argLabels: 
  */
  @objc var keepBackupFile: Bool { @objc get }

  /**
    - jsName: lastComponentOfFileName
    - name: lastComponentOfFileName
    - argLabels: 
  */
  @objc var lastComponentOfFileName: String { @objc get @objc (setLastComponentOfFileName:) set }

  /**
    - jsName: isLocked
    - name: locked
    - argLabels: 
    - available: 10.8
    - obsoleted: 3
    - renamed: isLocked
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isLocked: Bool { @objc get }

  /**
    - jsName: printInfo
    - name: printInfo
    - argLabels: 
  */
  @objc var printInfo: NSPrintInfo { @objc get @objc (setPrintInfo:) set }

  /**
    - jsName: shouldRunSavePanelWithAccessoryView
    - name: shouldRunSavePanelWithAccessoryView
    - argLabels: 
  */
  @objc var shouldRunSavePanelWithAccessoryView: Bool { @objc get }

  /**
    - jsName: undoManager
    - name: undoManager
    - argLabels: 
  */
  @objc var undoManager: UndoManager? { @objc get @objc (setUndoManager:) set }

  /**
    - jsName: userActivity
    - name: userActivity
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var userActivity: NSUserActivity? { @objc get @objc (setUserActivity:) set }

  /**
    - jsName: windowControllers
    - name: windowControllers
    - argLabels: 
  */
  @objc var windowControllers: [NSWindowController] { @objc get }

  /**
    - jsName: windowForSheet
    - name: windowForSheet
    - argLabels: 
  */
  @objc var windowForSheet: NSWindow? { @objc get }

  /**
    - jsName: windowNibName
    - name: windowNibName
    - argLabels: 
  */
  @objc var windowNibName: NSNib.Name? { @objc get }
}

extension NSDocument: NSDocumentExports {
  @objc public static func createForURL(for: URL?, withContentsOf: URL, ofType: String) -> Self? {
    return try? self.init(for: `for`, withContentsOf: withContentsOf, ofType: ofType)
  }

  @objc public static func createWithContentsOfURL(contentsOf: URL, ofType: String) -> Self? {
    return try? self.init(contentsOf: contentsOf, ofType: ofType)
  }

  @objc public static func createWithType(type: String) -> Self? {
    return try? self.init(type: type)
  }

}
