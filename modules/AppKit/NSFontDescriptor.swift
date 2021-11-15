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
    - Selector: NSFontDescriptor
  */

@objc(NSFontDescriptor) protocol NSFontDescriptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: fontDescriptorWithFontAttributes:
  */
  @objc static func createWithFontAttributes(_ fontAttributes: [NSFontDescriptor.AttributeName: Any]?) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithName:matrix:
  */
  @objc static func createWithNameWithMatrix(_ name: String, _ matrix: AffineTransform) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithName:size:
  */
  @objc static func createWithNameWithSize(_ name: String, _ size: CGFloat) -> NSFontDescriptor

  // Instance Methods

  /**
    - Selector: fontDescriptorByAddingAttributes:
  */
  @objc (fontDescriptorByAddingAttributes:) func addingAttributes(_: [NSFontDescriptor.AttributeName: Any]) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithFace:
  */
  @objc (fontDescriptorWithFace:) func withFace(_: String) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithFamily:
  */
  @objc (fontDescriptorWithFamily:) func withFamily(_: String) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithMatrix:
  */
  @objc (fontDescriptorWithMatrix:) func withMatrix(_: AffineTransform) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithSize:
  */
  @objc (fontDescriptorWithSize:) func withSize(_: CGFloat) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithSymbolicTraits:
  */
  @objc (fontDescriptorWithSymbolicTraits:) func withSymbolicTraits(_: NSFontDescriptor.SymbolicTraits) -> NSFontDescriptor

  /**
    - Selector: matchingFontDescriptorWithMandatoryKeys:
    - Introduced: 10.5
  */
  @objc (matchingFontDescriptorWithMandatoryKeys:) @available(OSX 10.5, *) func matchingFontDescriptor(withMandatoryKeys: Set<NSFontDescriptor.AttributeName>?) -> NSFontDescriptor?

  /**
    - Selector: matchingFontDescriptorsWithMandatoryKeys:
  */
  @objc (matchingFontDescriptorsWithMandatoryKeys:) func matchingFontDescriptors(withMandatoryKeys: Set<NSFontDescriptor.AttributeName>?) -> [NSFontDescriptor]

  /**
    - Selector: objectForKey:
  */
  @objc (objectForKey:) func object(forKey: NSFontDescriptor.AttributeName) -> Any?

  // Own Instance Properties

  /**
    - Selector: fontAttributes
  */
  @objc var fontAttributes: [NSFontDescriptor.AttributeName: Any] { @objc get }

  /**
    - Selector: matrix
  */
  @objc var matrix: AffineTransform? { @objc get }

  /**
    - Selector: pointSize
  */
  @objc var pointSize: CGFloat { @objc get }

  /**
    - Selector: postscriptName
  */
  @objc var postscriptName: String? { @objc get }

  /**
    - Selector: requiresFontAssetRequest
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var requiresFontAssetRequest: Bool { @objc get }

  /**
    - Selector: symbolicTraits
  */
  @objc var symbolicTraits: NSFontDescriptor.SymbolicTraits { @objc get }
}

extension NSFontDescriptor: NSFontDescriptorExports {

  /**
    - Selector: fontDescriptorWithFontAttributes:
  */
  @objc public static func createWithFontAttributes(_ fontAttributes: [NSFontDescriptor.AttributeName: Any]?) -> NSFontDescriptor {
    return self.init(fontAttributes: fontAttributes)
  }


  /**
    - Selector: fontDescriptorWithName:matrix:
  */
  @objc public static func createWithNameWithMatrix(_ name: String, _ matrix: AffineTransform) -> NSFontDescriptor {
    return self.init(name: name, matrix: matrix)
  }


  /**
    - Selector: fontDescriptorWithName:size:
  */
  @objc public static func createWithNameWithSize(_ name: String, _ size: CGFloat) -> NSFontDescriptor {
    return self.init(name: name, size: size)
  }

}
