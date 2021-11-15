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
    - Selector: NSPrintOperation
  */

@objc(NSPrintOperation) protocol NSPrintOperationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: EPSOperationWithView:insideRect:toData:
  */
  @objc (EPSOperationWithView:insideRect:toData:) static func epsOperation(with: NSView, inside: CGRect, to: NSMutableData?) -> NSPrintOperation

  /**
    - Selector: EPSOperationWithView:insideRect:toData:printInfo:
  */
  @objc (EPSOperationWithView:insideRect:toData:printInfo:) static func epsOperation(with: NSView, inside: CGRect, to: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - Selector: EPSOperationWithView:insideRect:toPath:printInfo:
  */
  @objc (EPSOperationWithView:insideRect:toPath:printInfo:) static func epsOperation(with: NSView, inside: CGRect, toPath: String, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - Selector: PDFOperationWithView:insideRect:toData:
  */
  @objc (PDFOperationWithView:insideRect:toData:) static func pdfOperation(with: NSView, inside: CGRect, to: NSMutableData) -> NSPrintOperation

  /**
    - Selector: PDFOperationWithView:insideRect:toData:printInfo:
  */
  @objc (PDFOperationWithView:insideRect:toData:printInfo:) static func pdfOperation(with: NSView, inside: CGRect, to: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - Selector: PDFOperationWithView:insideRect:toPath:printInfo:
  */
  @objc (PDFOperationWithView:insideRect:toPath:printInfo:) static func pdfOperation(with: NSView, inside: CGRect, toPath: String, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - Selector: printOperationWithView:
  */
  @objc static func createWithView(_ view: NSView) -> NSPrintOperation

  /**
    - Selector: printOperationWithView:printInfo:
  */
  @objc static func createWithViewWithPrintInfo(_ view: NSView, _ printInfo: NSPrintInfo) -> NSPrintOperation

  // Own Static Properties

  /**
    - Selector: currentOperation
  */
  @objc static var current: NSPrintOperation? { @objc (currentOperation) get @objc (setCurrentOperation:) set }

  // Instance Methods

  /**
    - Selector: cleanUpOperation
  */
  @objc (cleanUpOperation) func cleanUp()

  /**
    - Selector: createContext
  */
  @objc func createContext() -> NSGraphicsContext?

  /**
    - Selector: deliverResult
  */
  @objc func deliverResult() -> Bool

  /**
    - Selector: destroyContext
  */
  @objc func destroyContext()

  /**
    - Selector: runOperation
  */
  @objc (runOperation) func run() -> Bool

  /**
    - Selector: runOperationModalForWindow:delegate:didRunSelector:contextInfo:
  */
  @objc (runOperationModalForWindow:delegate:didRunSelector:contextInfo:) func runModal(`for`: NSWindow, delegate: Any?, didRun: Selector?, contextInfo: UnsafeMutableRawPointer?)

  // Own Instance Properties

  /**
    - Selector: PDFPanel
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var pdfPanel: NSPDFPanel { @objc (PDFPanel) get @objc (setPDFPanel:) set }

  /**
    - Selector: canSpawnSeparateThread
  */
  @objc var canSpawnSeparateThread: Bool { @objc get @objc (setCanSpawnSeparateThread:) set }

  /**
    - Selector: context
  */
  @objc var context: NSGraphicsContext? { @objc get }

  /**
    - Selector: copyingOperation
  */
  @objc var isCopyingOperation: Bool { @objc get }

  /**
    - Selector: currentPage
  */
  @objc var currentPage: Int { @objc get }

  /**
    - Selector: jobTitle
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var jobTitle: String? { @objc get @objc (setJobTitle:) set }

  /**
    - Selector: pageOrder
  */
  @objc var pageOrder: NSPrintOperation.PageOrder { @objc get @objc (setPageOrder:) set }

  /**
    - Selector: pageRange
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var pageRange: NSRange { @objc get }

  /**
    - Selector: preferredRenderingQuality
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var preferredRenderingQuality: NSPrintOperation.RenderingQuality { @objc get }

  /**
    - Selector: printInfo
  */
  @objc var printInfo: NSPrintInfo { @objc get @objc (setPrintInfo:) set }

  /**
    - Selector: printPanel
  */
  @objc var printPanel: NSPrintPanel { @objc get @objc (setPrintPanel:) set }

  /**
    - Selector: showsPrintPanel
  */
  @objc var showsPrintPanel: Bool { @objc get @objc (setShowsPrintPanel:) set }

  /**
    - Selector: showsProgressPanel
  */
  @objc var showsProgressPanel: Bool { @objc get @objc (setShowsProgressPanel:) set }

  /**
    - Selector: view
  */
  @objc var view: NSView? { @objc get }
}

extension NSPrintOperation: NSPrintOperationExports {

  /**
    - Selector: printOperationWithView:
  */
  @objc public static func createWithView(_ view: NSView) -> NSPrintOperation {
    return self.init(view: view)
  }


  /**
    - Selector: printOperationWithView:printInfo:
  */
  @objc public static func createWithViewWithPrintInfo(_ view: NSView, _ printInfo: NSPrintInfo) -> NSPrintOperation {
    return self.init(view: view, printInfo: printInfo)
  }

}
