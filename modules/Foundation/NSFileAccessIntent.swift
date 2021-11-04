import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func readingIntent(with: URL, options: NSFileCoordinator.ReadingOptions) -> Self

  /**
    - Selector: writingIntentWithURL:options:
  */
  @objc static func writingIntent(with: URL, options: NSFileCoordinator.WritingOptions) -> Self

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL { @objc (URL) get }
}

extension NSFileAccessIntent: NSFileAccessIntentExports {
  @objc public static func readingIntent(with: URL, options: NSFileCoordinator.ReadingOptions) -> Self {
    return self.readingIntent(with: with, options: options)
  }

  @objc public static func writingIntent(with: URL, options: NSFileCoordinator.WritingOptions) -> Self {
    return self.writingIntent(with: with, options: options)
  }

}
