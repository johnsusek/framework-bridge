import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSItemProvider
    - name: NSItemProvider
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSItemProvider) protocol NSItemProviderExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: canLoadObject
    - name: canLoadObjectOfClass:
    - argLabels: ofClass
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: canLoadObject(ofClass:)
    - Introduced: 10.13
  */
  @objc (canLoadObjectOfClass:) @available(OSX 10.13, *) func canLoadObject(ofClass: NSItemProviderReading.Type) -> Bool

  /**
    - jsName: hasItemConformingToTypeIdentifier
    - name: hasItemConformingToTypeIdentifier:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (hasItemConformingToTypeIdentifier:) func hasItemConformingToTypeIdentifier(_: String) -> Bool

  /**
    - jsName: hasRepresentationConforming
    - name: hasRepresentationConformingToTypeIdentifier:fileOptions:
    - argLabels: toTypeIdentifier, fileOptions
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: hasRepresentationConforming(toTypeIdentifier:fileOptions:)
    - Introduced: 10.13
  */
  @objc (hasRepresentationConformingToTypeIdentifier:fileOptions:) @available(OSX 10.13, *) func hasRepresentationConforming(toTypeIdentifier: String, fileOptions: NSItemProviderFileOptions) -> Bool

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:
    - argLabels: 
    - constructorTokens: contentsOf
  */
  @objc static func createWithContentsOfURL(_: URL) -> Self?

  /**
    - jsName: createWithItem
    - name: initWithItem:typeIdentifier:
    - argLabels: typeIdentifier
    - constructorTokens: item, typeIdentifier
  */
  @objc static func createWithItem(_: NSSecureCoding?, typeIdentifier: String?) -> Self

  /**
    - jsName: createWithObject
    - name: initWithObject:
    - argLabels: 
    - constructorTokens: object
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithObject(_: NSItemProviderWriting) -> Self

  /**
    - jsName: loadDataRepresentation
    - name: loadDataRepresentationForTypeIdentifier:completionHandler:
    - argLabels: forTypeIdentifier, completionHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: loadDataRepresentation(forTypeIdentifier:completionHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (loadDataRepresentationForTypeIdentifier:completionHandler:) @available(OSX 10.13, *) func loadDataRepresentation(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - jsName: loadFileRepresentation
    - name: loadFileRepresentationForTypeIdentifier:completionHandler:
    - argLabels: forTypeIdentifier, completionHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: loadFileRepresentation(forTypeIdentifier:completionHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (loadFileRepresentationForTypeIdentifier:completionHandler:) @available(OSX 10.13, *) func loadFileRepresentation(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - jsName: loadInPlaceFileRepresentation
    - name: loadInPlaceFileRepresentationForTypeIdentifier:completionHandler:
    - argLabels: forTypeIdentifier, completionHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: loadInPlaceFileRepresentation(forTypeIdentifier:completionHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (loadInPlaceFileRepresentationForTypeIdentifier:completionHandler:) @available(OSX 10.13, *) func loadInPlaceFileRepresentation(forTypeIdentifier: String, completionHandler: JSValue) -> Progress

  /**
    - jsName: loadItem
    - name: loadItemForTypeIdentifier:options:completionHandler:
    - argLabels: forTypeIdentifier, options, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: loadItem(forTypeIdentifier:options:completionHandler:)
  */
  // jsvalue - @objc (loadItemForTypeIdentifier:options:completionHandler:) func loadItem(forTypeIdentifier: String, options: [AnyHashable: Any]?, completionHandler: JSValue?)

  /**
    - jsName: loadObject
    - name: loadObjectOfClass:completionHandler:
    - argLabels: ofClass, completionHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: loadObject(ofClass:completionHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (loadObjectOfClass:completionHandler:) @available(OSX 10.13, *) func loadObject(ofClass: NSItemProviderReading.Type, completionHandler: JSValue) -> Progress

  /**
    - jsName: loadPreviewImage
    - name: loadPreviewImageWithOptions:completionHandler:
    - argLabels: options, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: loadPreviewImage(options:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (loadPreviewImageWithOptions:completionHandler:) @available(OSX 10.10, *) func loadPreviewImage(options: [AnyHashable: Any], completionHandler: JSValue)

  /**
    - jsName: registerCloudKitShare
    - name: registerCloudKitShare:container:
    - argLabels: container
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func registerCloudKitShare(_: CKShare, container: CKContainer)

  /**
    - jsName: registerCloudKitShare
    - name: registerCloudKitShareWithPreparationHandler:
    - argLabels: preparationHandler
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: registerCloudKitShare(preparationHandler:)
    - Introduced: 10.12
  */
  // jsvalue - @objc (registerCloudKitShareWithPreparationHandler:) @available(OSX 10.12, *) func registerCloudKitShare(preparationHandler: JSValue)

  /**
    - jsName: registerDataRepresentation
    - name: registerDataRepresentationForTypeIdentifier:visibility:loadHandler:
    - argLabels: forTypeIdentifier, visibility, loadHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: registerDataRepresentation(forTypeIdentifier:visibility:loadHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (registerDataRepresentationForTypeIdentifier:visibility:loadHandler:) @available(OSX 10.13, *) func registerDataRepresentation(forTypeIdentifier: String, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - jsName: registerFileRepresentation
    - name: registerFileRepresentationForTypeIdentifier:fileOptions:visibility:loadHandler:
    - argLabels: forTypeIdentifier, fileOptions, visibility, loadHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: registerFileRepresentation(forTypeIdentifier:fileOptions:visibility:loadHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (registerFileRepresentationForTypeIdentifier:fileOptions:visibility:loadHandler:) @available(OSX 10.13, *) func registerFileRepresentation(forTypeIdentifier: String, fileOptions: NSItemProviderFileOptions, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - jsName: registerItem
    - name: registerItemForTypeIdentifier:loadHandler:
    - argLabels: forTypeIdentifier, loadHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: registerItem(forTypeIdentifier:loadHandler:)
  */
  // jsvalue - @objc (registerItemForTypeIdentifier:loadHandler:) func registerItem(forTypeIdentifier: String, loadHandler: JSValue)

  /**
    - jsName: registerObject
    - name: registerObject:visibility:
    - argLabels: visibility
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func registerObject(_: NSItemProviderWriting, visibility: NSItemProviderRepresentationVisibility)

  /**
    - jsName: registerObject
    - name: registerObjectOfClass:visibility:loadHandler:
    - argLabels: ofClass, visibility, loadHandler
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: registerObject(ofClass:visibility:loadHandler:)
    - Introduced: 10.13
  */
  // jsvalue - @objc (registerObjectOfClass:visibility:loadHandler:) @available(OSX 10.13, *) func registerObject(ofClass: NSItemProviderWriting.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: JSValue)

  /**
    - jsName: registeredTypeIdentifiers
    - name: registeredTypeIdentifiersWithFileOptions:
    - argLabels: fileOptions
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: registeredTypeIdentifiers(fileOptions:)
    - Introduced: 10.13
  */
  @objc (registeredTypeIdentifiersWithFileOptions:) @available(OSX 10.13, *) func registeredTypeIdentifiers(fileOptions: NSItemProviderFileOptions) -> [String]

  // Own Instance Properties

  /**
    - jsName: containerFrame
    - name: containerFrame
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var containerFrame: CGRect { @objc get }

  /**
    - jsName: preferredPresentationSize
    - name: preferredPresentationSize
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredPresentationSize: CGSize { @objc get }

  /**
    - jsName: previewImageHandler
    - name: previewImageHandler
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
// jsvalue   @objc @available(OSX 10.10, *) var previewImageHandler: JSValue? { @objc get @objc (setPreviewImageHandler:) set }

  /**
    - jsName: registeredTypeIdentifiers
    - name: registeredTypeIdentifiers
    - argLabels: 
  */
  @objc var registeredTypeIdentifiers: [String] { @objc get }

  /**
    - jsName: sourceFrame
    - name: sourceFrame
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sourceFrame: CGRect { @objc get }

  /**
    - jsName: suggestedName
    - name: suggestedName
    - argLabels: 
    - available: 10.14
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
