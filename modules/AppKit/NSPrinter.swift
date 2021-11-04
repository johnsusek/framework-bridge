import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPrinter
  */

@objc(NSPrinter) protocol NSPrinterExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: printerWithType:
  */
  @objc static func create(type: NSPrinter.TypeName) -> NSPrinter?

  // Own Static Properties

  /**
    - Selector: printerNames
  */
  @objc static var printerNames: [String] { @objc get }

  /**
    - Selector: printerTypes
  */
  @objc static var printerTypes: [NSPrinter.TypeName] { @objc get }

  // Instance Methods

  /**
    - Selector: pageSizeForPaper:
  */
  @objc (pageSizeForPaper:) func pageSize(forPaper: NSPrinter.PaperName) -> CGSize

  // Own Instance Properties

  /**
    - Selector: deviceDescription
  */
  @objc var deviceDescription: [NSDeviceDescriptionKey: Any] { @objc get }

  /**
    - Selector: languageLevel
  */
  @objc var languageLevel: Int { @objc get }

  /**
    - Selector: name
  */
  @objc var name: String { @objc get }

  /**
    - Selector: type
  */
  @objc var type: NSPrinter.TypeName { @objc get }
}

extension NSPrinter: NSPrinterExports {
  @objc public static func create(type: NSPrinter.TypeName) -> NSPrinter? {
    return self.init(type: type)
  }

}
