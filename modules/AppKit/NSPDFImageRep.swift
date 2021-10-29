import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPDFImageRep
    - name: NSPDFImageRep
    - argLabels: 
  */

@objc(NSPDFImageRep) protocol NSPDFImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: pdfRepresentation
    - name: PDFRepresentation
    - argLabels: 
    - obsoleted: 3
    - renamed: pdfRepresentation
  */
  @objc var pdfRepresentation: Data { @objc (PDFRepresentation) get }

  /**
    - jsName: bounds
    - name: bounds
    - argLabels: 
  */
  @objc var bounds: CGRect { @objc get }

  /**
    - jsName: currentPage
    - name: currentPage
    - argLabels: 
  */
  @objc var currentPage: Int { @objc get @objc (setCurrentPage:) set }

  /**
    - jsName: pageCount
    - name: pageCount
    - argLabels: 
  */
  @objc var pageCount: Int { @objc get }
}

extension NSPDFImageRep: NSPDFImageRepExports {
}
