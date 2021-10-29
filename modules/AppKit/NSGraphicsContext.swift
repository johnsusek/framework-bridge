import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGraphicsContext
    - name: NSGraphicsContext
    - argLabels: 
  */

@objc(NSGraphicsContext) protocol NSGraphicsContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: currentContextDrawingToScreen
    - name: currentContextDrawingToScreen
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func currentContextDrawingToScreen() -> Bool

  /**
    - jsName: create
    - name: graphicsContextWithAttributes:
    - argLabels: attributes
    - constructorTokens: 
    - unavailable: true
    - renamed: init(attributes:)
    - message: Not available in Swift
  */
  @objc static func create(attributes: [NSGraphicsContext.AttributeKey: Any]) -> NSGraphicsContext?

  /**
    - jsName: create
    - name: graphicsContextWithBitmapImageRep:
    - argLabels: bitmapImageRep
    - constructorTokens: 
    - unavailable: true
    - renamed: init(bitmapImageRep:)
    - message: Not available in Swift
  */
  @objc static func create(bitmapImageRep: NSBitmapImageRep) -> NSGraphicsContext?

  /**
    - jsName: create
    - name: graphicsContextWithCGContext:flipped:
    - argLabels: cgContext, flipped
    - constructorTokens: 
    - available: 10.10
    - unavailable: true
    - renamed: init(cgContext:flipped:)
    - message: Not available in Swift
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func create(cgContext: CGContext, flipped: Bool) -> NSGraphicsContext

  /**
    - jsName: create
    - name: graphicsContextWithWindow:
    - argLabels: window
    - constructorTokens: 
    - unavailable: true
    - renamed: init(window:)
    - message: Not available in Swift
  */
  @objc static func create(window: NSWindow) -> NSGraphicsContext

  /**
    - jsName: restoreGraphicsState
    - name: restoreGraphicsState
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func restoreGraphicsState()

  /**
    - jsName: saveGraphicsState
    - name: saveGraphicsState
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func saveGraphicsState()

  // Own Static Properties

  /**
    - jsName: current
    - name: currentContext
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSGraphicsContext? { @objc (currentContext) get @objc (setCurrentContext:) set }

  // Instance Methods

  /**
    - jsName: flushGraphics
    - name: flushGraphics
    - argLabels: 
    - constructorTokens: 
  */
  @objc func flushGraphics()

  /**
    - jsName: restoreGraphicsState
    - name: restoreGraphicsState
    - argLabels: 
    - constructorTokens: 
  */
  @objc func restoreGraphicsState()

  /**
    - jsName: saveGraphicsState
    - name: saveGraphicsState
    - argLabels: 
    - constructorTokens: 
  */
  @objc func saveGraphicsState()

  // Own Instance Properties

  /**
    - jsName: cgContext
    - name: CGContext
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: cgContext
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var cgContext: CGContext { @objc (CGContext) get }

  /**
    - jsName: ciContext
    - name: CIContext
    - argLabels: 
    - obsoleted: 3
    - renamed: ciContext
  */
  @objc var ciContext: CIContext? { @objc (CIContext) get }

  /**
    - jsName: attributes
    - name: attributes
    - argLabels: 
  */
  @objc var attributes: [NSGraphicsContext.AttributeKey: Any]? { @objc get }

  /**
    - jsName: colorRenderingIntent
    - name: colorRenderingIntent
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var colorRenderingIntent: NSColorRenderingIntent { @objc get @objc (setColorRenderingIntent:) set }

  /**
    - jsName: compositingOperation
    - name: compositingOperation
    - argLabels: 
  */
  @objc var compositingOperation: NSCompositingOperation { @objc get @objc (setCompositingOperation:) set }

  /**
    - jsName: isDrawingToScreen
    - name: drawingToScreen
    - argLabels: 
    - obsoleted: 3
    - renamed: isDrawingToScreen
  */
  @objc var isDrawingToScreen: Bool { @objc get }

  /**
    - jsName: isFlipped
    - name: flipped
    - argLabels: 
    - obsoleted: 3
    - renamed: isFlipped
  */
  @objc var isFlipped: Bool { @objc get }

  /**
    - jsName: imageInterpolation
    - name: imageInterpolation
    - argLabels: 
  */
  @objc var imageInterpolation: NSImageInterpolation { @objc get @objc (setImageInterpolation:) set }

  /**
    - jsName: patternPhase
    - name: patternPhase
    - argLabels: 
  */
  @objc var patternPhase: CGPoint { @objc get @objc (setPatternPhase:) set }

  /**
    - jsName: shouldAntialias
    - name: shouldAntialias
    - argLabels: 
  */
  @objc var shouldAntialias: Bool { @objc get @objc (setShouldAntialias:) set }
}

extension NSGraphicsContext: NSGraphicsContextExports {
  @objc public static func create(attributes: [NSGraphicsContext.AttributeKey: Any]) -> NSGraphicsContext? {
    return self.init(attributes: attributes)
  }

  @objc public static func create(bitmapImageRep: NSBitmapImageRep) -> NSGraphicsContext? {
    return self.init(bitmapImageRep: bitmapImageRep)
  }

  @objc public static func create(cgContext: CGContext, flipped: Bool) -> NSGraphicsContext {
    return self.init(cgContext: cgContext, flipped: flipped)
  }

  @objc public static func create(window: NSWindow) -> NSGraphicsContext {
    return self.init(window: window)
  }

}
