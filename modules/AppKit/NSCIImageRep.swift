import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCIImageRep
    - name: NSCIImageRep
    - argLabels: 
  */

@objc(NSCIImageRep) protocol NSCIImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - jsName: create
    - name: imageRepWithCIImage:
    - argLabels: ciImage
    - constructorTokens: 
    - unavailable: true
    - renamed: init(ciImage:)
    - message: Not available in Swift
  */
  @objc static func create(ciImage: CIImage) -> Self

  // Instance Methods

  /**
    - jsName: createWithCIImage
    - name: initWithCIImage:
    - argLabels: 
    - constructorTokens: ciImage
  */
  @objc static func createWithCIImage(_: CIImage) -> Self

  // Own Instance Properties

  /**
    - jsName: ciImage
    - name: CIImage
    - argLabels: 
    - obsoleted: 3
    - renamed: ciImage
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
