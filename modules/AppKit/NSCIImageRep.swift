import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func create(ciImage: CIImage) -> Self

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
    - Selector: initWithCIImage:
  */
  @objc static func createWithCIImage(_: CIImage) -> Self

  // Own Instance Properties

  /**
    - Selector: CIImage
  */
  @objc var ciImage: CIImage { @objc (CIImage) get }
}

extension NSCIImageRep: NSCIImageRepExports {
  @objc public static func create(ciImage: CIImage) -> Self {
    return self.init(ciImage: ciImage)
  }

  @objc public static func createWithCIImage(_ ciImage: CIImage) -> Self {
    return self.init(ciImage: ciImage)
  }

}
