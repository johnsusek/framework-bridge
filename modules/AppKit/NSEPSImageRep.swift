import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSEPSImageRep
  */

@objc(NSEPSImageRep) protocol NSEPSImageRepExports: JSExport, NSImageRepExports {
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

  // Own Instance Properties

  /**
    - Selector: EPSRepresentation
  */
  @objc var epsRepresentation: Data { @objc (EPSRepresentation) get }

  /**
    - Selector: boundingBox
  */
  @objc var boundingBox: CGRect { @objc get }
}

extension NSEPSImageRep: NSEPSImageRepExports {
}
