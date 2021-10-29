import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCustomImageRep
    - name: NSCustomImageRep
    - argLabels: 
  */

@objc(NSCustomImageRep) protocol NSCustomImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithDrawSelector
    - name: initWithDrawSelector:delegate:
    - argLabels: delegate
    - constructorTokens: drawSelector, delegate
  */
  @objc static func createWithDrawSelector(_: Selector, delegate: Any) -> Self

  /**
    - jsName: createWithSize
    - name: initWithSize:flipped:drawingHandler:
    - argLabels: flipped, drawingHandler
    - constructorTokens: size, flipped, drawingHandler
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static func createWithSize(_: CGSize, flipped: Bool, drawingHandler: JSValue) -> Self

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: AnyObject? { @objc get }

  /**
    - jsName: drawSelector
    - name: drawSelector
    - argLabels: 
  */
  @objc var drawSelector: Selector? { @objc get }

  /**
    - jsName: drawingHandler
    - name: drawingHandler
    - argLabels: 
    - available: 10.8
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
