import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSFileAccessIntent
    - name: NSFileAccessIntent
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSFileAccessIntent) protocol NSFileAccessIntentExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: readingIntent
    - name: readingIntentWithURL:options:
    - argLabels: with, options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readingIntent(with:options:)
  */
  @objc static func readingIntent(with: URL, options: NSFileCoordinator.ReadingOptions) -> Self

  /**
    - jsName: writingIntent
    - name: writingIntentWithURL:options:
    - argLabels: with, options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writingIntent(with:options:)
  */
  @objc static func writingIntent(with: URL, options: NSFileCoordinator.WritingOptions) -> Self

  // Own Instance Properties

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
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
