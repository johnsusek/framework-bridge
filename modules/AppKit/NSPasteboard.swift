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
    - Selector: NSPasteboard
  */

@objc(NSPasteboard) protocol NSPasteboardExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: pasteboardByFilteringData:ofType:
  */
  @objc static func createWithPasteboardByFilteringDataWithOfType(_ byFilteringData: Data, _ ofType: NSPasteboard.PasteboardType) -> NSPasteboard

  /**
    - Selector: pasteboardByFilteringFile:
  */
  @objc static func createWithPasteboardByFilteringFile(_ byFilteringFile: String) -> NSPasteboard

  /**
    - Selector: pasteboardByFilteringTypesInPasteboard:
  */
  @objc static func createWithPasteboardByFilteringTypesInPasteboard(_ byFilteringTypesIn: NSPasteboard) -> NSPasteboard

  /**
    - Selector: pasteboardWithName:
  */
  @objc static func createWithName(_ name: NSPasteboard.Name) -> NSPasteboard

  /**
    - Selector: pasteboardWithUniqueName
  */
  @objc (pasteboardWithUniqueName) static func withUniqueName() -> NSPasteboard

  /**
    - Selector: typesFilterableTo:
  */
  @objc (typesFilterableTo:) static func types(filterableTo: NSPasteboard.PasteboardType) -> [NSPasteboard.PasteboardType]

  // Own Static Properties

  /**
    - Selector: generalPasteboard
  */
  @objc static var general: NSPasteboard { @objc (generalPasteboard) get }

  // Instance Methods

  /**
    - Selector: addTypes:owner:
  */
  @objc func addTypes(_: [NSPasteboard.PasteboardType], owner: Any?) -> Int

  /**
    - Selector: availableTypeFromArray:
  */
  @objc (availableTypeFromArray:) func availableType(from: [NSPasteboard.PasteboardType]) -> NSPasteboard.PasteboardType?

  /**
    - Selector: canReadItemWithDataConformingToTypes:
    - Introduced: 10.6
  */
  @objc (canReadItemWithDataConformingToTypes:) @available(OSX 10.6, *) func canReadItem(withDataConformingToTypes: [String]) -> Bool

  /**
    - Selector: canReadObjectForClasses:options:
    - Introduced: 10.6
  */
  @objc (canReadObjectForClasses:options:) @available(OSX 10.6, *) func canReadObject(forClasses: [AnyClass], options: [NSPasteboard.ReadingOptionKey: Any]?) -> Bool

  /**
    - Selector: clearContents
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func clearContents() -> Int

  /**
    - Selector: dataForType:
  */
  @objc (dataForType:) func data(forType: NSPasteboard.PasteboardType) -> Data?

  /**
    - Selector: declareTypes:owner:
  */
  @objc func declareTypes(_: [NSPasteboard.PasteboardType], owner: Any?) -> Int

  /**
    - Selector: indexOfPasteboardItem:
    - Introduced: 10.6
  */
  @objc (indexOfPasteboardItem:) @available(OSX 10.6, *) func index(of: NSPasteboardItem) -> Int

  /**
    - Selector: prepareForNewContentsWithOptions:
    - Introduced: 10.12
  */
  @objc (prepareForNewContentsWithOptions:) @available(OSX 10.12, *) func prepareForNewContents(with: NSPasteboard.ContentsOptions) -> Int

  /**
    - Selector: propertyListForType:
  */
  @objc (propertyListForType:) func propertyList(forType: NSPasteboard.PasteboardType) -> Any?

  /**
    - Selector: readFileContentsType:toFile:
  */
  @objc func readFileContentsType(_: NSPasteboard.PasteboardType?, toFile: String) -> String?

  /**
    - Selector: readFileWrapper
  */
  @objc func readFileWrapper() -> FileWrapper?

  /**
    - Selector: readObjectsForClasses:options:
    - Introduced: 10.6
  */
  @objc (readObjectsForClasses:options:) @available(OSX 10.6, *) func readObjects(forClasses: [AnyClass], options: [NSPasteboard.ReadingOptionKey: Any]?) -> [Any]?

  /**
    - Selector: releaseGlobally
  */
  @objc func releaseGlobally()

  /**
    - Selector: setData:forType:
  */
  @objc func setData(_: Data?, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - Selector: setPropertyList:forType:
  */
  @objc func setPropertyList(_: Any, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - Selector: setString:forType:
  */
  @objc func setString(_: String, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - Selector: stringForType:
  */
  @objc (stringForType:) func string(forType: NSPasteboard.PasteboardType) -> String?

  /**
    - Selector: writeFileContents:
  */
  @objc func writeFileContents(_: String) -> Bool

  /**
    - Selector: writeFileWrapper:
  */
  @objc (writeFileWrapper:) func write(_: FileWrapper) -> Bool

  /**
    - Selector: writeObjects:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func writeObjects(_: [NSPasteboardWriting]) -> Bool

  // Own Instance Properties

  /**
    - Selector: changeCount
  */
  @objc var changeCount: Int { @objc get }

  /**
    - Selector: name
  */
  @objc var name: NSPasteboard.Name { @objc get }

  /**
    - Selector: pasteboardItems
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var pasteboardItems: [NSPasteboardItem]? { @objc get }

  /**
    - Selector: types
  */
  @objc var types: [NSPasteboard.PasteboardType]? { @objc get }
}

extension NSPasteboard: NSPasteboardExports {

  /**
    - Selector: pasteboardByFilteringData:ofType:
  */
  @objc public static func createWithPasteboardByFilteringDataWithOfType(_ byFilteringData: Data, _ ofType: NSPasteboard.PasteboardType) -> NSPasteboard {
    return self.init(byFilteringData: byFilteringData, ofType: ofType)
  }


  /**
    - Selector: pasteboardByFilteringFile:
  */
  @objc public static func createWithPasteboardByFilteringFile(_ byFilteringFile: String) -> NSPasteboard {
    return self.init(byFilteringFile: byFilteringFile)
  }


  /**
    - Selector: pasteboardByFilteringTypesInPasteboard:
  */
  @objc public static func createWithPasteboardByFilteringTypesInPasteboard(_ byFilteringTypesIn: NSPasteboard) -> NSPasteboard {
    return self.init(byFilteringTypesIn: byFilteringTypesIn)
  }


  /**
    - Selector: pasteboardWithName:
  */
  @objc public static func createWithName(_ name: NSPasteboard.Name) -> NSPasteboard {
    return self.init(name: name)
  }

}
