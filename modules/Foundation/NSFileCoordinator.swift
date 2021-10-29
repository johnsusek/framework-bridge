import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSFileCoordinator
    - name: NSFileCoordinator
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSFileCoordinator) protocol NSFileCoordinatorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: addFilePresenter
    - name: addFilePresenter:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func addFilePresenter(_: NSFilePresenter)

  /**
    - jsName: removeFilePresenter
    - name: removeFilePresenter:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func removeFilePresenter(_: NSFilePresenter)

  // Own Static Properties

  /**
    - jsName: filePresenters
    - name: filePresenters
    - argLabels: 
  */
  @objc static var filePresenters: [NSFilePresenter] { @objc get }

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancel()

  /**
    - jsName: coordinate
    - name: coordinateAccessWithIntents:queue:byAccessor:
    - argLabels: with, queue, byAccessor
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: coordinate(with:queue:byAccessor:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (coordinateAccessWithIntents:queue:byAccessor:) @available(OSX 10.10, *) func coordinate(with: [NSFileAccessIntent], queue: OperationQueue, byAccessor: JSValue)

  /**
    - jsName: coordinate
    - name: coordinateReadingItemAtURL:options:error:byAccessor:
    - argLabels: readingItemAt, options, error, byAccessor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: coordinate(readingItemAt:options:error:byAccessor:)
  */
  // jsvalue - @objc (coordinateReadingItemAtURL:options:error:byAccessor:) func coordinate(readingItemAt: URL, options: NSFileCoordinator.ReadingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - jsName: coordinate
    - name: coordinateReadingItemAtURL:options:writingItemAtURL:options:error:byAccessor:
    - argLabels: readingItemAt, options, writingItemAt, options, error, byAccessor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: coordinate(readingItemAt:options:writingItemAt:options:error:byAccessor:)
  */
  // jsvalue - @objc (coordinateReadingItemAtURL:options:writingItemAtURL:options:error:byAccessor:) func coordinate(readingItemAt: URL, options: NSFileCoordinator.ReadingOptions, writingItemAt: URL, options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - jsName: coordinate
    - name: coordinateWritingItemAtURL:options:error:byAccessor:
    - argLabels: writingItemAt, options, error, byAccessor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: coordinate(writingItemAt:options:error:byAccessor:)
  */
  // jsvalue - @objc (coordinateWritingItemAtURL:options:error:byAccessor:) func coordinate(writingItemAt: URL, options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - jsName: coordinate
    - name: coordinateWritingItemAtURL:options:writingItemAtURL:options:error:byAccessor:
    - argLabels: writingItemAt, options, writingItemAt, options, error, byAccessor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: coordinate(writingItemAt:options:writingItemAt:options:error:byAccessor:)
  */
  // jsvalue - @objc (coordinateWritingItemAtURL:options:writingItemAtURL:options:error:byAccessor:) func coordinate(writingItemAt: URL, options: NSFileCoordinator.WritingOptions, writingItemAt: URL, options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  /**
    - jsName: createWithFilePresenter
    - name: initWithFilePresenter:
    - argLabels: 
    - constructorTokens: filePresenter
  */
  @objc static func createWithFilePresenter(_: NSFilePresenter?) -> Self

  /**
    - jsName: item
    - name: itemAtURL:didChangeUbiquityAttributes:
    - argLabels: at, didChangeUbiquityAttributes
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: item(at:didChangeUbiquityAttributes:)
    - Introduced: 10.13
  */
  @objc (itemAtURL:didChangeUbiquityAttributes:) @available(OSX 10.13, *) func item(at: URL, didChangeUbiquityAttributes: Set<URLResourceKey>)

  /**
    - jsName: item
    - name: itemAtURL:didMoveToURL:
    - argLabels: at, didMoveTo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: item(at:didMoveTo:)
  */
  @objc (itemAtURL:didMoveToURL:) func item(at: URL, didMoveTo: URL)

  /**
    - jsName: item
    - name: itemAtURL:willMoveToURL:
    - argLabels: at, willMoveTo
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: item(at:willMoveTo:)
    - Introduced: 10.8
  */
  @objc (itemAtURL:willMoveToURL:) @available(OSX 10.8, *) func item(at: URL, willMoveTo: URL)

  /**
    - jsName: prepare
    - name: prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:
    - argLabels: forReadingItemsAt, options, writingItemsAt, options, error, byAccessor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepare(forReadingItemsAt:options:writingItemsAt:options:error:byAccessor:)
  */
  // jsvalue - @objc (prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:) func prepare(forReadingItemsAt: [URL], options: NSFileCoordinator.ReadingOptions, writingItemsAt: [URL], options: NSFileCoordinator.WritingOptions, error: UnsafeMutablePointer<Error?>?, byAccessor: JSValue)

  // Own Instance Properties

  /**
    - jsName: purposeIdentifier
    - name: purposeIdentifier
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var purposeIdentifier: String { @objc get @objc (setPurposeIdentifier:) set }
}

extension NSFileCoordinator: NSFileCoordinatorExports {
  @objc public static func createWithFilePresenter(_ filePresenter: NSFilePresenter?) -> Self {
    return self.init(filePresenter: filePresenter)
  }

}
