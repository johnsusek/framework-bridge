import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSFileAccessIntent
    - Introduced: 10.10
  */

@objc(NSFileAccessIntent) protocol NSFileAccessIntentExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: readingIntentWithURL:options:
  */
  @objc static func createWithReadingIntentWithURLWithOptions(_ with: URL, _ options: NSFileCoordinator.ReadingOptions) -> Self

  /**
    - Selector: writingIntentWithURL:options:
  */
  @objc static func createWithWritingIntentWithURLWithOptions(_ with: URL, _ options: NSFileCoordinator.WritingOptions) -> Self

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL { @objc (URL) get }
}

extension NSFileAccessIntent: NSFileAccessIntentExports {

  /**
    - Selector: readingIntentWithURL:options:
  */
  @objc public static func createWithReadingIntentWithURLWithOptions(_ with: URL, _ options: NSFileCoordinator.ReadingOptions) -> Self {
    return self.readingIntent(with: with, options: options)
  }


  /**
    - Selector: writingIntentWithURL:options:
  */
  @objc public static func createWithWritingIntentWithURLWithOptions(_ with: URL, _ options: NSFileCoordinator.WritingOptions) -> Self {
    return self.writingIntent(with: with, options: options)
  }

}
