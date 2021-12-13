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
    - Selector: NSImageRep
  */

@objc(NSImageRep) protocol NSImageRepExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canInitWithData:
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - Selector: canInitWithPasteboard:
  */
  @objc (canInitWithPasteboard:) static func canInit(with: NSPasteboard) -> Bool

  /**
    - Selector: imageRepWithContentsOfFile:
  */
  @objc static func createWithContentsOfFile(_ contentsOfFile: String) -> NSImageRep?

  /**
    - Selector: imageRepWithContentsOfURL:
  */
  @objc static func createWithContentsOf(_ contentsOf: URL) -> NSImageRep?

  /**
    - Selector: imageRepWithPasteboard:
  */
  @objc static func createWithPasteboard(_ pasteboard: NSPasteboard) -> NSImageRep?

  /**
    - Selector: imageRepsWithContentsOfFile:
  */
  @objc (imageRepsWithContentsOfFile:) static func imageReps(withContentsOfFile: String) -> [NSImageRep]?

  /**
    - Selector: imageRepsWithContentsOfURL:
  */
  @objc (imageRepsWithContentsOfURL:) static func imageReps(withContentsOf: URL) -> [NSImageRep]?

  /**
    - Selector: imageRepsWithPasteboard:
  */
  @objc (imageRepsWithPasteboard:) static func imageReps(with: NSPasteboard) -> [NSImageRep]?

  /**
    - Selector: registerImageRepClass:
  */
  @objc (registerImageRepClass:) static func registerClass(_ p0: AnyClass)

  /**
    - Selector: unregisterImageRepClass:
  */
  @objc (unregisterImageRepClass:) static func unregisterClass(_ p0: AnyClass)

  // Own Static Properties

  /**
    - Selector: imageTypes
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var imageTypes: [String] { @objc get }

  /**
    - Selector: imageUnfilteredTypes
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var imageUnfilteredTypes: [String] { @objc get }

  /**
    - Selector: registeredImageRepClasses
  */
  @objc static var registeredClasses: [AnyClass] { @objc (registeredImageRepClasses) get }

  // Instance Methods

  /**
    - Selector: CGImageForProposedRect:context:hints:
    - Introduced: 10.6
  */
  @objc (CGImageForProposedRect:context:hints:) @available(OSX 10.6, *) func cgImage(forProposedRect: UnsafeMutablePointer<NSRect>?, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?) -> CGImage?

  /**
    - Selector: draw
  */
  @objc func draw() -> Bool

  /**
    - Selector: drawAtPoint:
  */
  @objc (drawAtPoint:) func draw(at: CGPoint) -> Bool

  /**
    - Selector: drawInRect:
  */
  @objc (drawInRect:) func draw(in: CGRect) -> Bool

  /**
    - Selector: drawInRect:fromRect:operation:fraction:respectFlipped:hints:
    - Introduced: 10.6
  */
  @objc (drawInRect:fromRect:operation:fraction:respectFlipped:hints:) @available(OSX 10.6, *) func draw(in: CGRect, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat, respectFlipped: Bool, hints: [NSImageRep.HintKey: Any]?) -> Bool

  // Own Instance Properties

  /**
    - Selector: alpha
  */
  @objc var hasAlpha: Bool { @objc get @objc (setAlpha:) set }

  /**
    - Selector: bitsPerSample
  */
  @objc var bitsPerSample: Int { @objc get @objc (setBitsPerSample:) set }

  /**
    - Selector: colorSpaceName
  */
  @objc var colorSpaceName: NSColorSpaceName { @objc get @objc (setColorSpaceName:) set }

  /**
    - Selector: layoutDirection
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var layoutDirection: NSImage.LayoutDirection { @objc get @objc (setLayoutDirection:) set }

  /**
    - Selector: opaque
  */
  @objc var isOpaque: Bool { @objc get @objc (setOpaque:) set }

  /**
    - Selector: pixelsHigh
  */
  @objc var pixelsHigh: Int { @objc get @objc (setPixelsHigh:) set }

  /**
    - Selector: pixelsWide
  */
  @objc var pixelsWide: Int { @objc get @objc (setPixelsWide:) set }

  /**
    - Selector: size
  */
  @objc var size: CGSize { @objc get @objc (setSize:) set }
}

extension NSImageRep: NSImageRepExports {

  /**
    - Selector: imageRepWithContentsOfFile:
  */
  @objc public static func createWithContentsOfFile(_ contentsOfFile: String) -> NSImageRep? {
    return self.init(contentsOfFile: contentsOfFile)
  }


  /**
    - Selector: imageRepWithContentsOfURL:
  */
  @objc public static func createWithContentsOf(_ contentsOf: URL) -> NSImageRep? {
    return self.init(contentsOf: contentsOf)
  }


  /**
    - Selector: imageRepWithPasteboard:
  */
  @objc public static func createWithPasteboard(_ pasteboard: NSPasteboard) -> NSImageRep? {
    return self.init(pasteboard: pasteboard)
  }

}
