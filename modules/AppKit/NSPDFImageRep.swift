import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPDFImageRep
  */

@objc(NSPDFImageRep) protocol NSPDFImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - Selector: canInitWithData:
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - Selector: imageRepsWithContentsOfFile:
  */
  @objc (imageRepsWithContentsOfFile:) static func imageReps(withContentsOfFile: String) -> [NSImageRep]?

  /**
    - Selector: registerImageRepClass:
  */
  @objc (registerImageRepClass:) static func registerClass(_: AnyClass)

  /**
    - Selector: unregisterImageRepClass:
  */
  @objc (unregisterImageRepClass:) static func unregisterClass(_: AnyClass)

  // Own Instance Properties

  /**
    - Selector: PDFRepresentation
  */
  @objc var pdfRepresentation: Data { @objc (PDFRepresentation) get }

  /**
    - Selector: bounds
  */
  @objc var bounds: CGRect { @objc get }

  /**
    - Selector: currentPage
  */
  @objc var currentPage: Int { @objc get @objc (setCurrentPage:) set }

  /**
    - Selector: pageCount
  */
  @objc var pageCount: Int { @objc get }
}

extension NSPDFImageRep: NSPDFImageRepExports {
}
