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
  @objc (registerImageRepClass:) static func registerClass(_ p0: AnyClass)

  /**
    - Selector: unregisterImageRepClass:
  */
  @objc (unregisterImageRepClass:) static func unregisterClass(_ p0: AnyClass)

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
}
