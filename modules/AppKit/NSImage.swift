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
    - Selector: NSImage
  */

@objc(NSImage) protocol NSImageExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canInitWithPasteboard:
  */
  @objc (canInitWithPasteboard:) static func canInit(with: NSPasteboard) -> Bool

  /**
    - Selector: imageNamed:
  */
  @objc static func createWithImageNamed(_ named: NSImage.Name) -> NSImage?

  /**
    - Selector: imageWithSize:flipped:drawingHandler:
    - Introduced: 10.8
  */
// jsvalue   @objc @available(OSX 10.8, *) static func createWithSizeWithFlippedWithDrawingHandler(_ size: CGSize, _ flipped: Bool, _ drawingHandler: JSValue) -> Self

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

  // Instance Methods

  /**
    - Selector: CGImageForProposedRect:context:hints:
    - Introduced: 10.6
  */
  @objc (CGImageForProposedRect:context:hints:) @available(OSX 10.6, *) func cgImage(forProposedRect: UnsafeMutablePointer<NSRect>?, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?) -> CGImage?

  /**
    - Selector: TIFFRepresentationUsingCompression:factor:
  */
  @objc (TIFFRepresentationUsingCompression:factor:) func tiffRepresentation(using: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?

  /**
    - Selector: addRepresentation:
  */
  @objc func addRepresentation(_: NSImageRep)

  /**
    - Selector: addRepresentations:
  */
  @objc func addRepresentations(_: [NSImageRep])

  /**
    - Selector: bestRepresentationForRect:context:hints:
    - Introduced: 10.6
  */
  @objc (bestRepresentationForRect:context:hints:) @available(OSX 10.6, *) func bestRepresentation(`for`: CGRect, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?) -> NSImageRep?

  /**
    - Selector: cancelIncrementalLoad
  */
  @objc func cancelIncrementalLoad()

  /**
    - Selector: drawAtPoint:fromRect:operation:fraction:
  */
  @objc (drawAtPoint:fromRect:operation:fraction:) func draw(at: CGPoint, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat)

  /**
    - Selector: drawInRect:
    - Introduced: 10.9
  */
  @objc (drawInRect:) @available(OSX 10.9, *) func draw(in: CGRect)

  /**
    - Selector: drawInRect:fromRect:operation:fraction:
  */
  @objc (drawInRect:fromRect:operation:fraction:) func draw(in: CGRect, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat)

  /**
    - Selector: drawInRect:fromRect:operation:fraction:respectFlipped:hints:
    - Introduced: 10.6
  */
  @objc (drawInRect:fromRect:operation:fraction:respectFlipped:hints:) @available(OSX 10.6, *) func draw(in: CGRect, from: CGRect, operation: NSCompositingOperation, fraction: CGFloat, respectFlipped: Bool, hints: [NSImageRep.HintKey: Any]?)

  /**
    - Selector: drawRepresentation:inRect:
  */
  @objc (drawRepresentation:inRect:) func drawRepresentation(_: NSImageRep, in: CGRect) -> Bool

  /**
    - Selector: hitTestRect:withImageDestinationRect:context:hints:flipped:
    - Introduced: 10.6
  */
  @objc (hitTestRect:withImageDestinationRect:context:hints:flipped:) @available(OSX 10.6, *) func hitTest(_: CGRect, withDestinationRect: CGRect, context: NSGraphicsContext?, hints: [NSImageRep.HintKey: Any]?, flipped: Bool) -> Bool

  /**
    - Selector: layerContentsForContentsScale:
    - Introduced: 10.7
  */
  @objc (layerContentsForContentsScale:) @available(OSX 10.7, *) func layerContents(forContentsScale: CGFloat) -> Any

  /**
    - Selector: lockFocus
  */
  @objc func lockFocus()

  /**
    - Selector: lockFocusFlipped:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func lockFocusFlipped(_: Bool)

  /**
    - Selector: name
  */
  @objc func name() -> NSImage.Name?

  /**
    - Selector: recache
  */
  @objc func recache()

  /**
    - Selector: recommendedLayerContentsScale:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func recommendedLayerContentsScale(_: CGFloat) -> CGFloat

  /**
    - Selector: removeRepresentation:
  */
  @objc func removeRepresentation(_: NSImageRep)

  /**
    - Selector: setName:
  */
  @objc func setName(_: NSImage.Name?) -> Bool

  /**
    - Selector: unlockFocus
  */
  @objc func unlockFocus()

  // Own Instance Properties

  /**
    - Selector: TIFFRepresentation
  */
  @objc var tiffRepresentation: Data? { @objc (TIFFRepresentation) get }

  /**
    - Selector: accessibilityDescription
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var accessibilityDescription: String? { @objc get @objc (setAccessibilityDescription:) set }

  /**
    - Selector: alignmentRect
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var alignmentRect: CGRect { @objc get @objc (setAlignmentRect:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: cacheMode
  */
  @objc var cacheMode: NSImage.CacheMode { @objc get @objc (setCacheMode:) set }

  /**
    - Selector: capInsets
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var capInsets: NSEdgeInsets { @objc get @objc (setCapInsets:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSImageDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: matchesOnMultipleResolution
  */
  @objc var matchesOnMultipleResolution: Bool { @objc get @objc (setMatchesOnMultipleResolution:) set }

  /**
    - Selector: matchesOnlyOnBestFittingAxis
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var matchesOnlyOnBestFittingAxis: Bool { @objc get @objc (setMatchesOnlyOnBestFittingAxis:) set }

  /**
    - Selector: prefersColorMatch
  */
  @objc var prefersColorMatch: Bool { @objc get @objc (setPrefersColorMatch:) set }

  /**
    - Selector: representations
  */
  @objc var representations: [NSImageRep] { @objc get }

  /**
    - Selector: resizingMode
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var resizingMode: NSImage.ResizingMode { @objc get @objc (setResizingMode:) set }

  /**
    - Selector: size
  */
  @objc var size: CGSize { @objc get @objc (setSize:) set }

  /**
    - Selector: template
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isTemplate: Bool { @objc get @objc (setTemplate:) set }

  /**
    - Selector: usesEPSOnResolutionMismatch
  */
  @objc var usesEPSOnResolutionMismatch: Bool { @objc get @objc (setUsesEPSOnResolutionMismatch:) set }

  /**
    - Selector: valid
  */
  @objc var isValid: Bool { @objc get }
}

extension NSImage: NSImageExports {

  /**
    - Selector: imageNamed:
  */
  @objc public static func createWithImageNamed(_ named: NSImage.Name) -> NSImage? {
    return self.init(named: named)
  }


  /**
    - Selector: imageWithSize:flipped:drawingHandler:
    - Introduced: 10.8
  */
  @objc public static func createWithSizeWithFlippedWithDrawingHandler(_ size: CGSize, _ flipped: Bool, _ drawingHandler: JSValue) -> Self {
    return self.init(size: size, flipped: flipped, drawingHandler: { p1 in
      let res = drawingHandler.call(withArguments: [p1 as AnyObject])!
      return res.toBool()
    })
  }

}
