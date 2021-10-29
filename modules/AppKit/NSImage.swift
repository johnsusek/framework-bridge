import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSImage
    - name: NSImage
    - argLabels: 
  */

@objc(NSImage) protocol NSImageExports: JSExport, NSObjectExports {
  // Static Methods

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
    - name: imageWithSize:flipped:drawingHandler:
    - argLabels: size, flipped, drawingHandler
    - constructorTokens: 
    - available: 10.8
    - unavailable: true
    - renamed: init(size:flipped:drawingHandler:)
    - message: Not available in Swift
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static func create(size: CGSize, flipped: Bool, drawingHandler: JSValue) -> Self

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
    - jsName: tiffRepresentation
    - name: TIFFRepresentationUsingCompression:factor:
    - argLabels: using, factor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tiffRepresentation(using:factor:)
  */
  @objc (TIFFRepresentationUsingCompression:factor:) func tiffRepresentation(using: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?

  /**
    - jsName: addRepresentation
    - name: addRepresentation:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addRepresentation(_: NSImageRep)

  /**
    - jsName: addRepresentations
    - name: addRepresentations:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addRepresentations(_: [NSImageRep])

  /**
    - jsName: bestRepresentation
    - name: bestRepresentationForRect:context:hints:
    - argLabels: for, context, hints
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: bestRepresentation(for:context:hints:)
    - Introduced: 10.6
  */
  @objc (bestRepresentationForRect:context:hints:) @available(OSX 10.6, *) func bestRepresentation(`for`: CGRect, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?) -> NSImageRep?

  /**
    - jsName: cancelIncrementalLoad
    - name: cancelIncrementalLoad
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancelIncrementalLoad()

  /**
    - jsName: draw
    - name: drawAtPoint:fromRect:operation:fraction:
    - argLabels: at, from, operation, fraction
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(at:from:operation:fraction:)
  */
  @objc (drawAtPoint:fromRect:operation:fraction:) func draw(at: CGPoint, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat)

  /**
    - jsName: draw
    - name: drawInRect:
    - argLabels: in
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: draw(in:)
    - Introduced: 10.9
  */
  @objc (drawInRect:) @available(OSX 10.9, *) func draw(in: CGRect)

  /**
    - jsName: draw
    - name: drawInRect:fromRect:operation:fraction:
    - argLabels: in, from, operation, fraction
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(in:from:operation:fraction:)
  */
  @objc (drawInRect:fromRect:operation:fraction:) func draw(in: CGRect, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat)

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
  @objc (drawInRect:fromRect:operation:fraction:respectFlipped:hints:) @available(OSX 10.6, *) func draw(in: CGRect, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat, respectFlipped: Bool, hints: [NSImageRep.HintKey: Any]?)

  /**
    - jsName: drawRepresentation
    - name: drawRepresentation:inRect:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawRepresentation(_:in:)
  */
  @objc (drawRepresentation:inRect:) func drawRepresentation(_: NSImageRep, in: CGRect) -> Bool

  /**
    - jsName: hitTest
    - name: hitTestRect:withImageDestinationRect:context:hints:flipped:
    - argLabels: _, withDestinationRect, context, hints, flipped
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: hitTest(_:withDestinationRect:context:hints:flipped:)
    - Introduced: 10.6
  */
  @objc (hitTestRect:withImageDestinationRect:context:hints:flipped:) @available(OSX 10.6, *) func hitTest(_: CGRect, withDestinationRect: CGRect, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?, flipped: Bool) -> Bool

  /**
    - jsName: createByReferencingFile
    - name: initByReferencingFile:
    - argLabels: 
    - constructorTokens: byReferencingFile
  */
  @objc static func createByReferencingFile(_: String) -> Self?

  /**
    - jsName: create
    - name: initByReferencingURL:
    - argLabels: byReferencing
    - constructorTokens: byReferencingURL
  */
  @objc static func create(byReferencing: URL) -> Self

  /**
    - jsName: createWithCGImage
    - name: initWithCGImage:size:
    - argLabels: size
    - constructorTokens: cgImage, size
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithCGImage(_: CGImage, size: CGSize) -> Self

  /**
    - jsName: createWithContentsOfFile
    - name: initWithContentsOfFile:
    - argLabels: 
    - constructorTokens: contentsOfFile
  */
  @objc static func createWithContentsOfFile(_: String) -> Self?

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:
    - argLabels: 
    - constructorTokens: contentsOf
  */
  @objc static func createWithContentsOfURL(_: URL) -> Self?

  /**
    - jsName: createWithDataIgnoringOrientation
    - name: initWithDataIgnoringOrientation:
    - argLabels: 
    - constructorTokens: dataIgnoringOrientation
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithDataIgnoringOrientation(_: Data) -> Self?

  /**
    - jsName: createWithIconRef
    - name: initWithIconRef:
    - argLabels: 
    - constructorTokens: iconRef
    - Introduced: 10.5
    - Deprecated: 100000
    - Message: Use -[NSWorkspace iconForFile:], -[NSWorkspace iconForFiles:], -[NSWorkspace iconForFileType:], or +[NSImage imageNamed:] instead.
  */
  @objc @available(OSX 10.5, *) static func createWithIconRef(_: IconRef) -> Self

  /**
    - jsName: createWithPasteboard
    - name: initWithPasteboard:
    - argLabels: 
    - constructorTokens: pasteboard
  */
  @objc static func createWithPasteboard(_: NSPasteboard) -> Self?

  /**
    - jsName: createWithSize
    - name: initWithSize:
    - argLabels: 
    - constructorTokens: size
  */
  @objc static func createWithSize(_: CGSize) -> Self

  /**
    - jsName: layerContents
    - name: layerContentsForContentsScale:
    - argLabels: forContentsScale
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: layerContents(forContentsScale:)
    - Introduced: 10.7
  */
  @objc (layerContentsForContentsScale:) @available(OSX 10.7, *) func layerContents(forContentsScale: CGFloat) -> Any

  /**
    - jsName: lockFocus
    - name: lockFocus
    - argLabels: 
    - constructorTokens: 
  */
  @objc func lockFocus()

  /**
    - jsName: lockFocusFlipped
    - name: lockFocusFlipped:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func lockFocusFlipped(_: Bool)

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - constructorTokens: 
  */
  @objc func name() -> NSImage.Name?

  /**
    - jsName: recache
    - name: recache
    - argLabels: 
    - constructorTokens: 
  */
  @objc func recache()

  /**
    - jsName: recommendedLayerContentsScale
    - name: recommendedLayerContentsScale:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func recommendedLayerContentsScale(_: CGFloat) -> CGFloat

  /**
    - jsName: removeRepresentation
    - name: removeRepresentation:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeRepresentation(_: NSImageRep)

  /**
    - jsName: setName
    - name: setName:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setName(_: NSImage.Name?) -> Bool

  /**
    - jsName: unlockFocus
    - name: unlockFocus
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unlockFocus()

  // Own Instance Properties

  /**
    - jsName: tiffRepresentation
    - name: TIFFRepresentation
    - argLabels: 
    - obsoleted: 3
    - renamed: tiffRepresentation
  */
  @objc var tiffRepresentation: Data? { @objc (TIFFRepresentation) get }

  /**
    - jsName: accessibilityDescription
    - name: accessibilityDescription
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var accessibilityDescription: String? { @objc get @objc (setAccessibilityDescription:) set }

  /**
    - jsName: alignmentRect
    - name: alignmentRect
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var alignmentRect: CGRect { @objc get @objc (setAlignmentRect:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: cacheMode
    - name: cacheMode
    - argLabels: 
  */
  @objc var cacheMode: NSImage.CacheMode { @objc get @objc (setCacheMode:) set }

  /**
    - jsName: capInsets
    - name: capInsets
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var capInsets: NSEdgeInsets { @objc get @objc (setCapInsets:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSImageDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: matchesOnMultipleResolution
    - name: matchesOnMultipleResolution
    - argLabels: 
  */
  @objc var matchesOnMultipleResolution: Bool { @objc get @objc (setMatchesOnMultipleResolution:) set }

  /**
    - jsName: matchesOnlyOnBestFittingAxis
    - name: matchesOnlyOnBestFittingAxis
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var matchesOnlyOnBestFittingAxis: Bool { @objc get @objc (setMatchesOnlyOnBestFittingAxis:) set }

  /**
    - jsName: prefersColorMatch
    - name: prefersColorMatch
    - argLabels: 
  */
  @objc var prefersColorMatch: Bool { @objc get @objc (setPrefersColorMatch:) set }

  /**
    - jsName: representations
    - name: representations
    - argLabels: 
  */
  @objc var representations: [NSImageRep] { @objc get }

  /**
    - jsName: resizingMode
    - name: resizingMode
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var resizingMode: NSImage.ResizingMode { @objc get @objc (setResizingMode:) set }

  /**
    - jsName: size
    - name: size
    - argLabels: 
  */
  @objc var size: CGSize { @objc get @objc (setSize:) set }

  /**
    - jsName: isTemplate
    - name: template
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isTemplate
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isTemplate: Bool { @objc get @objc (setTemplate:) set }

  /**
    - jsName: usesEPSOnResolutionMismatch
    - name: usesEPSOnResolutionMismatch
    - argLabels: 
  */
  @objc var usesEPSOnResolutionMismatch: Bool { @objc get @objc (setUsesEPSOnResolutionMismatch:) set }

  /**
    - jsName: isValid
    - name: valid
    - argLabels: 
    - obsoleted: 3
    - renamed: isValid
  */
  @objc var isValid: Bool { @objc get }
}

extension NSImage: NSImageExports {
  @objc public static func create(size: CGSize, flipped: Bool, drawingHandler: JSValue) -> Self {
    return self.init(size: size, flipped: flipped, drawingHandler: { p1 in
      let res = drawingHandler.call(withArguments: [p1 as AnyObject])!
      return res.toBool()
    })
  }

  @objc public static func createByReferencingFile(_ byReferencingFile: String) -> Self? {
    return self.init(byReferencingFile: byReferencingFile)
  }

  @objc public static func create(byReferencing: URL) -> Self {
    return self.init(byReferencing: byReferencing)
  }

  @objc public static func createWithCGImage(_ cgImage: CGImage, size: CGSize) -> Self {
    return self.init(cgImage: cgImage, size: size)
  }

  @objc public static func createWithContentsOfFile(_ contentsOfFile: String) -> Self? {
    return self.init(contentsOfFile: contentsOfFile)
  }

  @objc public static func createWithContentsOfURL(_ contentsOf: URL) -> Self? {
    return self.init(contentsOf: contentsOf)
  }

  @objc public static func createWithDataIgnoringOrientation(_ dataIgnoringOrientation: Data) -> Self? {
    return self.init(dataIgnoringOrientation: dataIgnoringOrientation)
  }

  @objc public static func createWithIconRef(_ iconRef: IconRef) -> Self {
    return self.init(iconRef: iconRef)
  }

  @objc public static func createWithPasteboard(_ pasteboard: NSPasteboard) -> Self? {
    return self.init(pasteboard: pasteboard)
  }

  @objc public static func createWithSize(_ size: CGSize) -> Self {
    return self.init(size: size)
  }

}
