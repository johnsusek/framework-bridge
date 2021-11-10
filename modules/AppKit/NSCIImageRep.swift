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
    - Selector: NSCIImageRep
  */

@objc(NSCIImageRep) protocol NSCIImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - Selector: canInitWithData:
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - Selector: imageRepWithCIImage:
  */
  @objc static func createWithImageRepWithCIImage(_ ciImage: CIImage) -> Self

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
    - Selector: CIImage
  */
  @objc var ciImage: CIImage { @objc (CIImage) get }
}

extension NSCIImageRep: NSCIImageRepExports {

  /**
    - Selector: imageRepWithCIImage:
  */
  @objc public static func createWithImageRepWithCIImage(_ ciImage: CIImage) -> Self {
    return self.init(ciImage: ciImage)
  }

}
