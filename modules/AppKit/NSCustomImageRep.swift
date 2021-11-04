import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCustomImageRep
  */

@objc(NSCustomImageRep) protocol NSCustomImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - Selector: canInitWithData:
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - Selector: imageRepsWithContentsOfFile:
  */
  @objc (imageRepsWithContentsOfFile:) static func imageReps(withContentsOfFile: String) -> [NSImageRep]?

  /**
    - Selector: registerImageRepClass:
  */
  @objc (registerImageRepClass:) static func registerClass(_: AnyClass)

  /**
    - Selector: unregisterImageRepClass:
  */
  @objc (unregisterImageRepClass:) static func unregisterClass(_: AnyClass)

  // Instance Methods

  /**
    - Selector: initWithDrawSelector:delegate:
  */
  @objc static func createWithDrawSelector(_: Selector, delegate: Any) -> Self

  /**
    - Selector: initWithSize:flipped:drawingHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) static func createWithSize(_: CGSize, flipped: Bool, drawingHandler: JSValue) -> Self

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AnyObject? { @objc get }

  /**
    - Selector: drawSelector
  */
  @objc var drawSelector: Selector? { @objc get }

  /**
    - Selector: drawingHandler
    - Introduced: 10.8
  */
// jsvalue   @objc @available(OSX 10.8, *) var drawingHandler: JSValue? { @objc get }
}

extension NSCustomImageRep: NSCustomImageRepExports {
  @objc public static func createWithDrawSelector(_ draw: Selector, delegate: Any) -> Self {
    return self.init(draw: draw, delegate: delegate)
  }

  @objc public static func createWithSize(_ size: CGSize, flipped: Bool, drawingHandler: JSValue) -> Self {
    return self.init(size: size, flipped: flipped, drawingHandler: { p1 in
      let res = drawingHandler.call(withArguments: [p1 as AnyObject])!
      return res.toBool()
    })
  }

}
