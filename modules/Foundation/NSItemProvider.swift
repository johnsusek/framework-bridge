import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
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
    - Selector: loadDataRepresentationForTypeIdentifier:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadDataRepresentationForTypeIdentifierWithCompletionHandler(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadFileRepresentationForTypeIdentifier:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadFileRepresentationForTypeIdentifierWithCompletionHandler(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadInPlaceFileRepresentationForTypeIdentifier:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadInPlaceFileRepresentationForTypeIdentifierWithCompletionHandler(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadItemForTypeIdentifier:options:completionHandler:
  */
  // jsvalue @objc func loadItemForTypeIdentifierWithOptionsWithCompletionHandler(forTypeIdentifier: String, options: [AnyHashable: Any]?, completionHandler: JSValue?)

  /**
    - Selector: loadObjectOfClass:completionHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func loadObjectOfClassWithCompletionHandler(ofClass: NSItemProviderReading.Type, completionHandler: JSValue) -> Progress

  /**
    - Selector: loadPreviewImageWithOptions:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func loadPreviewImageWithOptionsWithCompletionHandler(options: [AnyHashable: Any], completionHandler: JSValue)

  /**
    - Selector: registerCloudKitShare:container:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func registerCloudKitShare(_: CKShare, container: CKContainer)

  /**
    - Selector: registerCloudKitShareWithPreparationHandler:
    - Introduced: 10.12
  */
  // jsvalue @objc @available(OSX 10.12, *) func registerCloudKitShareWithPreparationHandler(preparationHandler: JSValue)

  /**
    - Selector: registerDataRepresentationForTypeIdentifier:visibility:loadHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func registerDataRepresentationForTypeIdentifierWithVisibilityWithLoadHandler(forTypeIdentifier: String, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - Selector: registerFileRepresentationForTypeIdentifier:fileOptions:visibility:loadHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func registerFileRepresentationForTypeIdentifierWithFileOptionsWithVisibilityWithLoadHandler(forTypeIdentifier: String, fileOptions: NSItemProviderFileOptions, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - Selector: registerItemForTypeIdentifier:loadHandler:
  */
  // jsvalue @objc func registerItemForTypeIdentifierWithLoadHandler(forTypeIdentifier: String, loadHandler: JSValue)

  /**
    - Selector: registerObject:visibility:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func registerObject(_: NSItemProviderWriting, visibility: NSItemProviderRepresentationVisibility)

  /**
    - Selector: registerObjectOfClass:visibility:loadHandler:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func registerObjectOfClassWithVisibilityWithLoadHandler(ofClass: NSItemProviderWriting.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

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
}
