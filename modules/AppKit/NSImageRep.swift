import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSImageRep
    - name: NSImageRep
    - argLabels: 
  */

@objc(NSImageRep) protocol NSImageRepExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: canInit
    - name: canInitWithData:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canInit(with:)
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - jsName: canInit
    - name: canInitWithPasteboard:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canInit(with:)
  */
  @objc (canInitWithPasteboard:) static func canInit(with: NSPasteboard) -> Bool

  /**
    - jsName: create
    - name: imageRepWithContentsOfFile:
    - argLabels: contentsOfFile
    - constructorTokens: 
    - unavailable: true
    - renamed: init(contentsOfFile:)
    - message: Not available in Swift
  */
  @objc static func create(contentsOfFile: String) -> NSImageRep?

  /**
    - jsName: create
    - name: imageRepWithContentsOfURL:
    - argLabels: contentsOf
    - constructorTokens: 
    - unavailable: true
    - renamed: init(contentsOf:)
    - message: Not available in Swift
  */
  @objc static func create(contentsOf: URL) -> NSImageRep?

  /**
    - jsName: create
    - name: imageRepWithPasteboard:
    - argLabels: pasteboard
    - constructorTokens: 
    - unavailable: true
    - renamed: init(pasteboard:)
    - message: Not available in Swift
  */
  @objc static func create(pasteboard: NSPasteboard) -> NSImageRep?

  /**
    - jsName: imageReps
    - name: imageRepsWithContentsOfFile:
    - argLabels: withContentsOfFile
    - constructorTokens: 
    - obsoleted: 3
    - renamed: imageReps(withContentsOfFile:)
  */
  @objc (imageRepsWithContentsOfFile:) static func imageReps(withContentsOfFile: String) -> [NSImageRep]?

  /**
    - jsName: imageReps
    - name: imageRepsWithContentsOfURL:
    - argLabels: withContentsOf
    - constructorTokens: 
    - obsoleted: 3
    - renamed: imageReps(withContentsOf:)
  */
  @objc (imageRepsWithContentsOfURL:) static func imageReps(withContentsOf: URL) -> [NSImageRep]?

  /**
    - jsName: imageReps
    - name: imageRepsWithPasteboard:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: imageReps(with:)
  */
  @objc (imageRepsWithPasteboard:) static func imageReps(with: NSPasteboard) -> [NSImageRep]?

  /**
    - jsName: registerClass
    - name: registerImageRepClass:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: registerClass(_:)
  */
  @objc (registerImageRepClass:) static func registerClass(_: AnyClass)

  /**
    - jsName: unregisterClass
    - name: unregisterImageRepClass:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: unregisterClass(_:)
  */
  @objc (unregisterImageRepClass:) static func unregisterClass(_: AnyClass)

  // Own Static Properties

  /**
    - jsName: imageTypes
    - name: imageTypes
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var imageTypes: [String] { @objc get }

  /**
    - jsName: imageUnfilteredTypes
    - name: imageUnfilteredTypes
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var imageUnfilteredTypes: [String] { @objc get }

  /**
    - jsName: registeredClasses
    - name: registeredImageRepClasses
    - argLabels: 
    - obsoleted: 3
    - renamed: registeredClasses
  */
  @objc static var registeredClasses: [AnyClass] { @objc (registeredImageRepClasses) get }

  // Instance Methods

  /**
    - jsName: cgImage
    - name: CGImageForProposedRect:context:hints:
    - argLabels: forProposedRect, context, hints
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: cgImage(forProposedRect:context:hints:)
    - Introduced: 10.6
  */
  @objc (CGImageForProposedRect:context:hints:) @available(OSX 10.6, *) func cgImage(forProposedRect: UnsafeMutablePointer<NSRect>?, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?) -> CGImage?

  /**
    - jsName: draw
    - name: draw
    - argLabels: 
    - constructorTokens: 
  */
  @objc func draw() -> Bool

  /**
    - jsName: draw
    - name: drawAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(at:)
  */
  @objc (drawAtPoint:) func draw(at: CGPoint) -> Bool

  /**
    - jsName: draw
    - name: drawInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(in:)
  */
  @objc (drawInRect:) func draw(in: CGRect) -> Bool

  /**
    - jsName: draw
    - name: drawInRect:fromRect:operation:fraction:respectFlipped:hints:
    - argLabels: in, from, operation, fraction, respectFlipped, hints
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: draw(in:from:operation:fraction:respectFlipped:hints:)
    - Introduced: 10.6
  */
  @objc (drawInRect:fromRect:operation:fraction:respectFlipped:hints:) @available(OSX 10.6, *) func draw(in: CGRect, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat, respectFlipped: Bool, hints: [NSImageRep.HintKey: Any]?) -> Bool

  // Own Instance Properties

  /**
    - jsName: hasAlpha
    - name: alpha
    - argLabels: 
    - obsoleted: 3
    - renamed: hasAlpha
  */
  @objc var hasAlpha: Bool { @objc get @objc (setAlpha:) set }

  /**
    - jsName: bitsPerSample
    - name: bitsPerSample
    - argLabels: 
  */
  @objc var bitsPerSample: Int { @objc get @objc (setBitsPerSample:) set }

  /**
    - jsName: colorSpaceName
    - name: colorSpaceName
    - argLabels: 
  */
  @objc var colorSpaceName: NSColorSpaceName { @objc get @objc (setColorSpaceName:) set }

  /**
    - jsName: layoutDirection
    - name: layoutDirection
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var layoutDirection: NSImage.LayoutDirection { @objc get @objc (setLayoutDirection:) set }

  /**
    - jsName: isOpaque
    - name: opaque
    - argLabels: 
    - obsoleted: 3
    - renamed: isOpaque
  */
  @objc var isOpaque: Bool { @objc get @objc (setOpaque:) set }

  /**
    - jsName: pixelsHigh
    - name: pixelsHigh
    - argLabels: 
  */
  @objc var pixelsHigh: Int { @objc get @objc (setPixelsHigh:) set }

  /**
    - jsName: pixelsWide
    - name: pixelsWide
    - argLabels: 
  */
  @objc var pixelsWide: Int { @objc get @objc (setPixelsWide:) set }

  /**
    - jsName: size
    - name: size
    - argLabels: 
  */
  @objc var size: CGSize { @objc get @objc (setSize:) set }
}

extension NSImageRep: NSImageRepExports {
  @objc public static func create(contentsOfFile: String) -> NSImageRep? {
    return self.init(contentsOfFile: contentsOfFile)
  }

  @objc public static func create(contentsOf: URL) -> NSImageRep? {
    return self.init(contentsOf: contentsOf)
  }

  @objc public static func create(pasteboard: NSPasteboard) -> NSImageRep? {
    return self.init(pasteboard: pasteboard)
  }

}
