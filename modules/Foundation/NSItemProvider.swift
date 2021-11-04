import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSItemProvider
    - Introduced: 10.10
  */

@objc(NSItemProvider) protocol NSItemProviderExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: canLoadObjectOfClass:
    - Introduced: 10.13
  */
  @objc (canLoadObjectOfClass:) @available(OSX 10.13, *) func canLoadObject(ofClass: NSItemProviderReading.Type) -> Bool

  /**
    - Selector: hasItemConformingToTypeIdentifier:
  */
  @objc (hasItemConformingToTypeIdentifier:) func hasItemConformingToTypeIdentifier(_: String) -> Bool

  /**
    - Selector: hasRepresentationConformingToTypeIdentifier:fileOptions:
    - Introduced: 10.13
  */
  @objc (hasRepresentationConformingToTypeIdentifier:fileOptions:) @available(OSX 10.13, *) func hasRepresentationConforming(toTypeIdentifier: String, fileOptions: NSItemProviderFileOptions) -> Bool

  /**
    - Selector: initWithContentsOfURL:
  */
  @objc static func createWithContentsOfURL(_: URL) -> Self?

  /**
    - Selector: initWithItem:typeIdentifier:
  */
  @objc static func createWithItem(_: NSSecureCoding?, typeIdentifier: String?) -> Self

  /**
    - Selector: initWithObject:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithObject(_: NSItemProviderWriting) -> Self

  /**
    - Selector: loadDataRepresentationForTypeIdentifier:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadDataRepresentation(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadFileRepresentationForTypeIdentifier:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadFileRepresentation(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadInPlaceFileRepresentationForTypeIdentifier:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadInPlaceFileRepresentation(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadItemForTypeIdentifier:options:completionHandler:
  */
  // jsvalue @objc func loadItem(forTypeIdentifier: String, options: [AnyHashable: Any]?, completionHandler: JSValue?)

  /**
    - Selector: loadObjectOfClass:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadObject(ofClass: NSItemProviderReading.Type, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadPreviewImageWithOptions:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func loadPreviewImage(options: [AnyHashable: Any], completionHandler: JSValue)

  /**
    - Selector: registerCloudKitShare:container:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func registerCloudKitShare(_: CKShare, container: CKContainer)

  /**
    - Selector: registerCloudKitShareWithPreparationHandler:
    - Introduced: 10.12
  */
  // jsvalue @objc @available(OSX 10.12, *) func registerCloudKitShare(preparationHandler: JSValue)

  /**
    - Selector: registerDataRepresentationForTypeIdentifier:visibility:loadHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func registerDataRepresentation(forTypeIdentifier: String, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - Selector: registerFileRepresentationForTypeIdentifier:fileOptions:visibility:loadHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func registerFileRepresentation(forTypeIdentifier: String, fileOptions: NSItemProviderFileOptions, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - Selector: registerItemForTypeIdentifier:loadHandler:
  */
  // jsvalue @objc func registerItem(forTypeIdentifier: String, loadHandler: JSValue)

  /**
    - Selector: registerObject:visibility:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func registerObject(_: NSItemProviderWriting, visibility: NSItemProviderRepresentationVisibility)

  /**
    - Selector: registerObjectOfClass:visibility:loadHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func registerObject(ofClass: NSItemProviderWriting.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - Selector: registeredTypeIdentifiersWithFileOptions:
    - Introduced: 10.13
  */
  @objc (registeredTypeIdentifiersWithFileOptions:) @available(OSX 10.13, *) func registeredTypeIdentifiers(fileOptions: NSItemProviderFileOptions) -> [String]

  // Own Instance Properties

  /**
    - Selector: containerFrame
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var containerFrame: CGRect { @objc get }

  /**
    - Selector: preferredPresentationSize
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredPresentationSize: CGSize { @objc get }

  /**
    - Selector: previewImageHandler
    - Introduced: 10.10
  */
// jsvalue   @objc @available(OSX 10.10, *) var previewImageHandler: JSValue? { @objc get @objc (setPreviewImageHandler:) set }

  /**
    - Selector: registeredTypeIdentifiers
  */
  @objc var registeredTypeIdentifiers: [String] { @objc get }

  /**
    - Selector: sourceFrame
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sourceFrame: CGRect { @objc get }

  /**
    - Selector: suggestedName
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var suggestedName: String? { @objc get @objc (setSuggestedName:) set }
}

extension NSItemProvider: NSItemProviderExports {
  @objc public static func createWithContentsOfURL(_ contentsOf: URL) -> Self? {
    return self.init(contentsOf: contentsOf)
  }

  @objc public static func createWithItem(_ item: NSSecureCoding?, typeIdentifier: String?) -> Self {
    return self.init(item: item, typeIdentifier: typeIdentifier)
  }

  @objc public static func createWithObject(_ object: NSItemProviderWriting) -> Self {
    return self.init(object: object)
  }

}
