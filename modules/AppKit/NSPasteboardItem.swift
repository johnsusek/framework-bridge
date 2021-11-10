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
    - Selector: NSPasteboardItem
    - Introduced: 10.6
  */

@objc(NSPasteboardItem) protocol NSPasteboardItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: availableTypeFromArray:
  */
  @objc (availableTypeFromArray:) func availableType(from: [NSPasteboard.PasteboardType]) -> NSPasteboard.PasteboardType?

  /**
    - Selector: dataForType:
  */
  @objc (dataForType:) func data(forType: NSPasteboard.PasteboardType) -> Data?

  /**
    - Selector: propertyListForType:
  */
  @objc (propertyListForType:) func propertyList(forType: NSPasteboard.PasteboardType) -> Any?

  /**
    - Selector: setData:forType:
  */
  @objc func setData(_: Data, forType: NSPasteboard.PasteboardType) -> Bool

  /**
    - Selector: setDataProvider:forTypes:
  */
  @objc func setDataProvider(_: NSPasteboardItemDataProvider, forTypes: [NSPasteboard.PasteboardType]) -> Bool

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

  // Own Instance Properties

  /**
    - Selector: types
  */
  @objc var types: [NSPasteboard.PasteboardType] { @objc get }
}

extension NSPasteboardItem: NSPasteboardItemExports {
}
