import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPasteboard
    - name: NSPasteboard
    - argLabels: 
  */

@objc(NSPasteboard) protocol NSPasteboardExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: pasteboardByFilteringData:ofType:
    - argLabels: byFilteringData, ofType
    - constructorTokens: 
    - unavailable: true
    - renamed: init(byFilteringData:ofType:)
    - message: Not available in Swift
  */
  @objc static func create(byFilteringData: Data, ofType: NSPasteboard.PasteboardType) -> NSPasteboard

  /**
    - jsName: create
    - name: pasteboardByFilteringFile:
    - argLabels: byFilteringFile
    - constructorTokens: 
    - unavailable: true
    - renamed: init(byFilteringFile:)
    - message: Not available in Swift
  */
  @objc static func create(byFilteringFile: String) -> NSPasteboard

  /**
    - jsName: create
    - name: pasteboardByFilteringTypesInPasteboard:
    - argLabels: byFilteringTypesIn
    - constructorTokens: 
    - unavailable: true
    - renamed: init(byFilteringTypesIn:)
    - message: Not available in Swift
  */
  @objc static func create(byFilteringTypesIn: NSPasteboard) -> NSPasteboard

  /**
    - jsName: withUniqueName
    - name: pasteboardWithUniqueName
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withUniqueName()
  */
  @objc (pasteboardWithUniqueName) static func withUniqueName() -> NSPasteboard

  /**
    - jsName: types
    - name: typesFilterableTo:
    - argLabels: filterableTo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: types(filterableTo:)
  */
  @objc (typesFilterableTo:) static func types(filterableTo: NSPasteboard.PasteboardType) -> [NSPasteboard.PasteboardType]

  // Own Static Properties

  /**
    - jsName: general
    - name: generalPasteboard
    - argLabels: 
    - obsoleted: 3
    - renamed: general
  */
  @objc static var general: NSPasteboard { @objc (generalPasteboard) get }

  // Instance Methods

  /**
    - jsName: addTypes
    - name: addTypes:owner:
    - argLabels: owner
    - constructorTokens: 
  */
  @objc func addTypes(_: [NSPasteboard.PasteboardType], owner: Any?) -> Int

  /**
    - jsName: availableType
    - name: availableTypeFromArray:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: availableType(from:)
  */
  @objc (availableTypeFromArray:) func availableType(from: [NSPasteboard.PasteboardType]) -> NSPasteboard.PasteboardType?

  /**
    - jsName: canReadItem
    - name: canReadItemWithDataConformingToTypes:
    - argLabels: withDataConformingToTypes
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: canReadItem(withDataConformingToTypes:)
    - Introduced: 10.6
  */
  @objc (canReadItemWithDataConformingToTypes:) @available(OSX 10.6, *) func canReadItem(withDataConformingToTypes: [String]) -> Bool

  /**
    - jsName: canReadObject
    - name: canReadObjectForClasses:options:
    - argLabels: forClasses, options
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: canReadObject(forClasses:options:)
    - Introduced: 10.6
  */
  @objc (canReadObjectForClasses:options:) @available(OSX 10.6, *) func canReadObject(forClasses: [AnyClass], options: [NSPasteboard.ReadingOptionKey: Any]?) -> Bool

  /**
    - jsName: clearContents
    - name: clearContents
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func clearContents() -> Int

  /**
    - jsName: data
    - name: dataForType:
    - argLabels: forType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: data(forType:)
  */
  @objc (dataForType:) func data(forType: NSPasteboard.PasteboardType) -> Data?

  /**
    - jsName: declareTypes
    - name: declareTypes:owner:
    - argLabels: owner
    - constructorTokens: 
  */
  @objc func declareTypes(_: [NSPasteboard.PasteboardType], owner: Any?) -> Int

  /**
    - jsName: index
    - name: indexOfPasteboardItem:
    - argLabels: of
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: index(of:)
    - Introduced: 10.6
  */
  @objc (indexOfPasteboardItem:) @available(OSX 10.6, *) func index(of: NSPasteboardItem) -> Int

  /**
    - jsName: prepareForNewContents
    - name: prepareForNewContentsWithOptions:
    - argLabels: with
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: prepareForNewContents(with:)
    - Introduced: 10.12
  */
  @objc (prepareForNewContentsWithOptions:) @available(OSX 10.12, *) func prepareForNewContents(with: NSPasteboard.ContentsOptions) -> Int

  /**
    - jsName: propertyList
    - name: propertyListForType:
    - argLabels: forType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: propertyList(forType:)
  */
  @objc (propertyListForType:) func propertyList(forType: NSPasteboard.PasteboardType) -> Any?

  /**
    - jsName: readFileContentsType
    - name: readFileContentsType:toFile:
    - argLabels: toFile
    - constructorTokens: 
  */
  @objc func readFileContentsType(_: NSPasteboard.PasteboardType?, toFile: String) -> String?

  /**
    - jsName: readFileWrapper
    - name: readFileWrapper
    - argLabels: 
    - constructorTokens: 
  */
  @objc func readFileWrapper() -> FileWrapper?

  /**
    - jsName: readObjects
    - name: readObjectsForClasses:options:
    - argLabels: forClasses, options
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: readObjects(forClasses:options:)
    - Introduced: 10.6
  */
  @objc (readObjectsForClasses:options:) @available(OSX 10.6, *) func readObjects(forClasses: [AnyClass], options: [NSPasteboard.ReadingOptionKey: Any]?) -> [Any]?

  /**
    - jsName: releaseGlobally
    - name: releaseGlobally
    - argLabels: 
    - constructorTokens: 
  */
  @objc func releaseGlobally()

  /**
    - jsName: setData
    - name: setData:forType:
    - argLabels: forType
    - constructorTokens: 
  */
  @objc func setData(_: Data?, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - jsName: setPropertyList
    - name: setPropertyList:forType:
    - argLabels: forType
    - constructorTokens: 
  */
  @objc func setPropertyList(_: Any, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - jsName: setString
    - name: setString:forType:
    - argLabels: forType
    - constructorTokens: 
  */
  @objc func setString(_: String, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - jsName: string
    - name: stringForType:
    - argLabels: forType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: string(forType:)
  */
  @objc (stringForType:) func string(forType: NSPasteboard.PasteboardType) -> String?

  /**
    - jsName: writeFileContents
    - name: writeFileContents:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func writeFileContents(_: String) -> Bool

  /**
    - jsName: write
    - name: writeFileWrapper:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: write(_:)
  */
  @objc (writeFileWrapper:) func write(_: FileWrapper) -> Bool

  /**
    - jsName: writeObjects
    - name: writeObjects:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func writeObjects(_: [NSPasteboardWriting]) -> Bool

  // Own Instance Properties

  /**
    - jsName: changeCount
    - name: changeCount
    - argLabels: 
  */
  @objc var changeCount: Int { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: NSPasteboard.Name { @objc get }

  /**
    - jsName: pasteboardItems
    - name: pasteboardItems
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var pasteboardItems: [NSPasteboardItem]? { @objc get }

  /**
    - jsName: types
    - name: types
    - argLabels: 
  */
  @objc var types: [NSPasteboard.PasteboardType]? { @objc get }
}

extension NSPasteboard: NSPasteboardExports {
  @objc public static func create(byFilteringData: Data, ofType: NSPasteboard.PasteboardType) -> NSPasteboard {
    return self.init(byFilteringData: byFilteringData, ofType: ofType)
  }

  @objc public static func create(byFilteringFile: String) -> NSPasteboard {
    return self.init(byFilteringFile: byFilteringFile)
  }

  @objc public static func create(byFilteringTypesIn: NSPasteboard) -> NSPasteboard {
    return self.init(byFilteringTypesIn: byFilteringTypesIn)
  }

}
