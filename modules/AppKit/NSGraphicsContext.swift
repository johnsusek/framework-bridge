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
    - Selector: NSGraphicsContext
  */

@objc(NSGraphicsContext) protocol NSGraphicsContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: currentContextDrawingToScreen
  */
  @objc static func currentContextDrawingToScreen() -> Bool

  /**
    - Selector: graphicsContextWithAttributes:
  */
  @objc static func createWithGraphicsContextWithAttributes(_ attributes: [NSGraphicsContext.AttributeKey: Any]) -> NSGraphicsContext?

  /**
    - Selector: graphicsContextWithBitmapImageRep:
  */
  @objc static func createWithGraphicsContextWithBitmapImageRep(_ bitmapImageRep: NSBitmapImageRep) -> NSGraphicsContext?

  /**
    - Selector: graphicsContextWithCGContext:flipped:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithGraphicsContextWithCGContextWithFlipped(_ cgContext: CGContext, _ flipped: Bool) -> NSGraphicsContext

  /**
    - Selector: graphicsContextWithWindow:
  */
  @objc static func createWithGraphicsContextWithWindow(_ window: NSWindow) -> NSGraphicsContext

  /**
    - Selector: restoreGraphicsState
  */
  @objc static func restoreGraphicsState()

  /**
    - Selector: saveGraphicsState
  */
  @objc static func saveGraphicsState()

  // Own Static Properties

  /**
    - Selector: currentContext
  */
  @objc static var current: NSGraphicsContext? { @objc (currentContext) get @objc (setCurrentContext:) set }

  // Instance Methods

  /**
    - Selector: flushGraphics
  */
  @objc func flushGraphics()

  /**
    - Selector: restoreGraphicsState
  */
  @objc func restoreGraphicsState()

  /**
    - Selector: saveGraphicsState
  */
  @objc func saveGraphicsState()

  // Own Instance Properties

  /**
    - Selector: CGContext
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var cgContext: CGContext { @objc (CGContext) get }

  /**
    - Selector: CIContext
  */
  @objc var ciContext: CIContext? { @objc (CIContext) get }

  /**
    - Selector: attributes
  */
  @objc var attributes: [NSGraphicsContext.AttributeKey: Any]? { @objc get }

  /**
    - Selector: colorRenderingIntent
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var colorRenderingIntent: NSColorRenderingIntent { @objc get @objc (setColorRenderingIntent:) set }

  /**
    - Selector: compositingOperation
  */
  @objc var compositingOperation: NSCompositingOperation { @objc get @objc (setCompositingOperation:) set }

  /**
    - Selector: drawingToScreen
  */
  @objc var isDrawingToScreen: Bool { @objc get }

  /**
    - Selector: flipped
  */
  @objc var isFlipped: Bool { @objc get }

  /**
    - Selector: imageInterpolation
  */
  @objc var imageInterpolation: NSImageInterpolation { @objc get @objc (setImageInterpolation:) set }

  /**
    - Selector: patternPhase
  */
  @objc var patternPhase: CGPoint { @objc get @objc (setPatternPhase:) set }

  /**
    - Selector: shouldAntialias
  */
  @objc var shouldAntialias: Bool { @objc get @objc (setShouldAntialias:) set }
}

extension NSGraphicsContext: NSGraphicsContextExports {

  /**
    - Selector: graphicsContextWithAttributes:
  */
  @objc public static func createWithGraphicsContextWithAttributes(_ attributes: [NSGraphicsContext.AttributeKey: Any]) -> NSGraphicsContext? {
    return self.init(attributes: attributes)
  }


  /**
    - Selector: graphicsContextWithBitmapImageRep:
  */
  @objc public static func createWithGraphicsContextWithBitmapImageRep(_ bitmapImageRep: NSBitmapImageRep) -> NSGraphicsContext? {
    return self.init(bitmapImageRep: bitmapImageRep)
  }


  /**
    - Selector: graphicsContextWithCGContext:flipped:
    - Introduced: 10.10
  */
  @objc public static func createWithGraphicsContextWithCGContextWithFlipped(_ cgContext: CGContext, _ flipped: Bool) -> NSGraphicsContext {
    return self.init(cgContext: cgContext, flipped: flipped)
  }


  /**
    - Selector: graphicsContextWithWindow:
  */
  @objc public static func createWithGraphicsContextWithWindow(_ window: NSWindow) -> NSGraphicsContext {
    return self.init(window: window)
  }

}
