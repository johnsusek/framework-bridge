import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPrinter
    - name: NSPrinter
    - argLabels: 
  */

@objc(NSPrinter) protocol NSPrinterExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: printerWithType:
    - argLabels: type
    - constructorTokens: 
    - unavailable: true
    - renamed: init(type:)
    - message: Not available in Swift
  */
  @objc static func create(type: NSPrinter.TypeName) -> NSPrinter?

  // Own Static Properties

  /**
    - jsName: printerNames
    - name: printerNames
    - argLabels: 
  */
  @objc static var printerNames: [String] { @objc get }

  /**
    - jsName: printerTypes
    - name: printerTypes
    - argLabels: 
  */
  @objc static var printerTypes: [NSPrinter.TypeName] { @objc get }

  // Instance Methods

  /**
    - jsName: pageSize
    - name: pageSizeForPaper:
    - argLabels: forPaper
    - constructorTokens: 
    - obsoleted: 3
    - renamed: pageSize(forPaper:)
  */
  @objc (pageSizeForPaper:) func pageSize(forPaper: NSPrinter.PaperName) -> CGSize

  // Own Instance Properties

  /**
    - jsName: deviceDescription
    - name: deviceDescription
    - argLabels: 
  */
  @objc var deviceDescription: [NSDeviceDescriptionKey: Any] { @objc get }

  /**
    - jsName: languageLevel
    - name: languageLevel
    - argLabels: 
  */
  @objc var languageLevel: Int { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: String { @objc get }

  /**
    - jsName: type
    - name: type
    - argLabels: 
  */
  @objc var type: NSPrinter.TypeName { @objc get }
}

extension NSPrinter: NSPrinterExports {
  @objc public static func create(type: NSPrinter.TypeName) -> NSPrinter? {
    return self.init(type: type)
  }

}
