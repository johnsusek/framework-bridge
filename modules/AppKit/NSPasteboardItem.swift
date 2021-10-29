import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPasteboardItem
    - name: NSPasteboardItem
    - argLabels: 
    - Introduced: 10.6
  */

@objc(NSPasteboardItem) protocol NSPasteboardItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

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
    - jsName: data
    - name: dataForType:
    - argLabels: forType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: data(forType:)
  */
  @objc (dataForType:) func data(forType: NSPasteboard.PasteboardType) -> Data?

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
    - jsName: setData
    - name: setData:forType:
    - argLabels: forType
    - constructorTokens: 
  */
  @objc func setData(_: Data, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - jsName: setDataProvider
    - name: setDataProvider:forTypes:
    - argLabels: forTypes
    - constructorTokens: 
  */
  @objc func setDataProvider(_: NSPasteboardItemDataProvider, forTypes: [NSPasteboard.PasteboardType]) -> Bool

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

  // Own Instance Properties

  /**
    - jsName: types
    - name: types
    - argLabels: 
  */
  @objc var types: [NSPasteboard.PasteboardType] { @objc get }
}

extension NSPasteboardItem: NSPasteboardItemExports {
}
