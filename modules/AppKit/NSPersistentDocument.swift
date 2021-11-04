import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPersistentDocument
  */

@objc(NSPersistentDocument) protocol NSPersistentDocumentExports: JSExport, NSDocumentExports {
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

  // Instance Methods

  /**
    - Selector: configurePersistentStoreCoordinatorForURL:ofType:modelConfiguration:storeOptions:error:
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func configurePersistentStoreCoordinatorForURL(ofType: URL, modelConfiguration: String, storeOptions: String?, error: [String: Any]?) -> Bool

  /**
    - Selector: persistentStoreTypeForFileType:
  */
  @objc (persistentStoreTypeForFileType:) func persistentStoreType(forFileType: String) -> String

  // Own Instance Properties

  /**
    - Selector: managedObjectContext
  */
  @objc var managedObjectContext: NSManagedObjectContext? { @objc get @objc (setManagedObjectContext:) set }

  /**
    - Selector: managedObjectModel
  */
  @objc var managedObjectModel: NSManagedObjectModel? { @objc get }
}

extension NSPersistentDocument: NSPersistentDocumentExports {
}
