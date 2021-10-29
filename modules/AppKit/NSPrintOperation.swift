import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPrintOperation
    - name: NSPrintOperation
    - argLabels: 
  */

@objc(NSPrintOperation) protocol NSPrintOperationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: epsOperation
    - name: EPSOperationWithView:insideRect:toData:
    - argLabels: with, inside, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: epsOperation(with:inside:to:)
  */
  @objc (EPSOperationWithView:insideRect:toData:) static func epsOperation(with: NSView, inside: CGRect, to: NSMutableData?) -> NSPrintOperation

  /**
    - jsName: epsOperation
    - name: EPSOperationWithView:insideRect:toData:printInfo:
    - argLabels: with, inside, to, printInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: epsOperation(with:inside:to:printInfo:)
  */
  @objc (EPSOperationWithView:insideRect:toData:printInfo:) static func epsOperation(with: NSView, inside: CGRect, to: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - jsName: epsOperation
    - name: EPSOperationWithView:insideRect:toPath:printInfo:
    - argLabels: with, inside, toPath, printInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: epsOperation(with:inside:toPath:printInfo:)
  */
  @objc (EPSOperationWithView:insideRect:toPath:printInfo:) static func epsOperation(with: NSView, inside: CGRect, toPath: String, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - jsName: pdfOperation
    - name: PDFOperationWithView:insideRect:toData:
    - argLabels: with, inside, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: pdfOperation(with:inside:to:)
  */
  @objc (PDFOperationWithView:insideRect:toData:) static func pdfOperation(with: NSView, inside: CGRect, to: NSMutableData) -> NSPrintOperation

  /**
    - jsName: pdfOperation
    - name: PDFOperationWithView:insideRect:toData:printInfo:
    - argLabels: with, inside, to, printInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: pdfOperation(with:inside:to:printInfo:)
  */
  @objc (PDFOperationWithView:insideRect:toData:printInfo:) static func pdfOperation(with: NSView, inside: CGRect, to: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - jsName: pdfOperation
    - name: PDFOperationWithView:insideRect:toPath:printInfo:
    - argLabels: with, inside, toPath, printInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: pdfOperation(with:inside:toPath:printInfo:)
  */
  @objc (PDFOperationWithView:insideRect:toPath:printInfo:) static func pdfOperation(with: NSView, inside: CGRect, toPath: String, printInfo: NSPrintInfo) -> NSPrintOperation

  /**
    - jsName: create
    - name: printOperationWithView:
    - argLabels: view
    - constructorTokens: 
    - unavailable: true
    - renamed: init(view:)
    - message: Not available in Swift
  */
  @objc static func create(view: NSView) -> NSPrintOperation

  /**
    - jsName: create
    - name: printOperationWithView:printInfo:
    - argLabels: view, printInfo
    - constructorTokens: 
    - unavailable: true
    - renamed: init(view:printInfo:)
    - message: Not available in Swift
  */
  @objc static func create(view: NSView, printInfo: NSPrintInfo) -> NSPrintOperation

  // Own Static Properties

  /**
    - jsName: current
    - name: currentOperation
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSPrintOperation? { @objc (currentOperation) get @objc (setCurrentOperation:) set }

  // Instance Methods

  /**
    - jsName: cleanUp
    - name: cleanUpOperation
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cleanUp()
  */
  @objc (cleanUpOperation) func cleanUp()

  /**
    - jsName: createContext
    - name: createContext
    - argLabels: 
    - constructorTokens: 
  */
  @objc func createContext() -> NSGraphicsContext?

  /**
    - jsName: deliverResult
    - name: deliverResult
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deliverResult() -> Bool

  /**
    - jsName: destroyContext
    - name: destroyContext
    - argLabels: 
    - constructorTokens: 
  */
  @objc func destroyContext()

  /**
    - jsName: run
    - name: runOperation
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: run()
  */
  @objc (runOperation) func run() -> Bool

  /**
    - jsName: runModal
    - name: runOperationModalForWindow:delegate:didRunSelector:contextInfo:
    - argLabels: for, delegate, didRun, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runModal(for:delegate:didRun:contextInfo:)
  */
  @objc (runOperationModalForWindow:delegate:didRunSelector:contextInfo:) func runModal(`for`: NSWindow, delegate: Any?, didRun: Selector?, contextInfo: UnsafeMutableRawPointer?)

  // Own Instance Properties

  /**
    - jsName: pdfPanel
    - name: PDFPanel
    - argLabels: 
    - available: 10.9
    - obsoleted: 3
    - renamed: pdfPanel
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var pdfPanel: NSPDFPanel { @objc (PDFPanel) get @objc (setPDFPanel:) set }

  /**
    - jsName: canSpawnSeparateThread
    - name: canSpawnSeparateThread
    - argLabels: 
  */
  @objc var canSpawnSeparateThread: Bool { @objc get @objc (setCanSpawnSeparateThread:) set }

  /**
    - jsName: context
    - name: context
    - argLabels: 
  */
  @objc var context: NSGraphicsContext? { @objc get }

  /**
    - jsName: isCopyingOperation
    - name: copyingOperation
    - argLabels: 
    - obsoleted: 3
    - renamed: isCopyingOperation
  */
  @objc var isCopyingOperation: Bool { @objc get }

  /**
    - jsName: currentPage
    - name: currentPage
    - argLabels: 
  */
  @objc var currentPage: Int { @objc get }

  /**
    - jsName: jobTitle
    - name: jobTitle
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var jobTitle: String? { @objc get @objc (setJobTitle:) set }

  /**
    - jsName: pageOrder
    - name: pageOrder
    - argLabels: 
  */
  @objc var pageOrder: NSPrintOperation.PageOrder { @objc get @objc (setPageOrder:) set }

  /**
    - jsName: pageRange
    - name: pageRange
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var pageRange: NSRange { @objc get }

  /**
    - jsName: preferredRenderingQuality
    - name: preferredRenderingQuality
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var preferredRenderingQuality: NSPrintOperation.RenderingQuality { @objc get }

  /**
    - jsName: printInfo
    - name: printInfo
    - argLabels: 
  */
  @objc var printInfo: NSPrintInfo { @objc get @objc (setPrintInfo:) set }

  /**
    - jsName: printPanel
    - name: printPanel
    - argLabels: 
  */
  @objc var printPanel: NSPrintPanel { @objc get @objc (setPrintPanel:) set }

  /**
    - jsName: showsPrintPanel
    - name: showsPrintPanel
    - argLabels: 
  */
  @objc var showsPrintPanel: Bool { @objc get @objc (setShowsPrintPanel:) set }

  /**
    - jsName: showsProgressPanel
    - name: showsProgressPanel
    - argLabels: 
  */
  @objc var showsProgressPanel: Bool { @objc get @objc (setShowsProgressPanel:) set }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView? { @objc get }
}

extension NSPrintOperation: NSPrintOperationExports {
  @objc public static func create(view: NSView) -> NSPrintOperation {
    return self.init(view: view)
  }

  @objc public static func create(view: NSView, printInfo: NSPrintInfo) -> NSPrintOperation {
    return self.init(view: view, printInfo: printInfo)
  }

}
