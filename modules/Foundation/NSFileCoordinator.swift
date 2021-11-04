import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSFileCoordinator
    - Introduced: 10.7
  */

@objc(NSFileCoordinator) protocol NSFileCoordinatorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: addFilePresenter:
  */
  @objc static func addFilePresenter(_: NSFilePresenter)

  /**
    - Selector: removeFilePresenter:
  */
  @objc static func removeFilePresenter(_: NSFilePresenter)

  // Own Static Properties

  /**
    - Selector: filePresenters
  */
  @objc static var filePresenters: [NSFilePresenter] { @objc get }

  // Instance Methods

  /**
    - Selector: cancel
  */
  @objc func cancel()

  /**
    - Selector: coordinateAccessWithIntents:queue:byAccessor:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func coordinate(with: [NSFileAccessIntent], queue: OperationQueue, byAccessor: JSValue)

  /**
    - Selector: coordinateReadingItemAtURL:options:error:byAccessor:
  */
  // jsvalue @objc func coordinate(readingItemAt: URL, options: NSFileCoordinator.ReadingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - Selector: coordinateReadingItemAtURL:options:writingItemAtURL:options:error:byAccessor:
  */
  // jsvalue @objc func coordinate(readingItemAt: URL, options: NSFileCoordinator.ReadingOptions, writingItemAt: URL, options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - Selector: coordinateWritingItemAtURL:options:error:byAccessor:
  */
  // jsvalue @objc func coordinate(writingItemAt: URL, options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - Selector: coordinateWritingItemAtURL:options:writingItemAtURL:options:error:byAccessor:
  */
  // jsvalue @objc func coordinate(writingItemAt: URL, options: NSFileCoordinator.WritingOptions, writingItemAt: URL, options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - Selector: initWithFilePresenter:
  */
  @objc static func createWithFilePresenter(_: NSFilePresenter?) -> Self

  /**
    - Selector: itemAtURL:didChangeUbiquityAttributes:
    - Introduced: 10.13
  */
  @objc (itemAtURL:didChangeUbiquityAttributes:) @available(OSX 10.13, *) func item(at: URL, didChangeUbiquityAttributes: Set<URLResourceKey>)

  /**
    - Selector: itemAtURL:didMoveToURL:
  */
  @objc (itemAtURL:didMoveToURL:) func item(at: URL, didMoveTo: URL)

  /**
    - Selector: itemAtURL:willMoveToURL:
    - Introduced: 10.8
  */
  @objc (itemAtURL:willMoveToURL:) @available(OSX 10.8, *) func item(at: URL, willMoveTo: URL)

  /**
    - Selector: prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:
  */
  // jsvalue @objc func prepare(forReadingItemsAt: [URL], options: NSFileCoordinator.ReadingOptions, writingItemsAt: [URL], options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  // Own Instance Properties

  /**
    - Selector: purposeIdentifier
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var purposeIdentifier: String { @objc get @objc (setPurposeIdentifier:) set }
}

extension NSFileCoordinator: NSFileCoordinatorExports {
  @objc public static func createWithFilePresenter(_ filePresenter: NSFilePresenter?) -> Self {
    return self.init(filePresenter: filePresenter)
  }

}
