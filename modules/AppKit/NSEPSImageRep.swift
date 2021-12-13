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
    - Selector: NSEPSImageRep
  */

@objc(NSEPSImageRep) protocol NSEPSImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - Selector: canInitWithData:
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - Selector: imageRepWithData:
  */
  @objc static func createWithData(_ data: Data) -> Self?

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
    - Selector: EPSRepresentation
  */
  @objc var epsRepresentation: Data { @objc (EPSRepresentation) get }

  /**
    - Selector: boundingBox
  */
  @objc var boundingBox: CGRect { @objc get }
}

extension NSEPSImageRep: NSEPSImageRepExports {

  /**
    - Selector: imageRepWithData:
  */
  @objc public static func createWithData(_ data: Data) -> Self? {
    return self.init(data: data)
  }

}
