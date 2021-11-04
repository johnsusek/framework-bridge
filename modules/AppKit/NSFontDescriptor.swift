import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func create(fontAttributes: [NSFontDescriptor.AttributeName: Any]?) -> NSFontDescriptor

  // Instance Methods

  /**
    - Selector: fontDescriptorByAddingAttributes:
  */
  @objc (fontDescriptorByAddingAttributes:) func addingAttributes(_: [NSFontDescriptor.AttributeName: Any]) -> NSFontDescriptor

  /**
    - Selector: fontDescriptorWithDesign:
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func withDesign(_: NSFontDescriptor.SystemDesign) -> Self?

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
  @objc public static func create(fontAttributes: [NSFontDescriptor.AttributeName: Any]?) -> NSFontDescriptor {
    return self.init(fontAttributes: fontAttributes)
  }

  @objc public static func withDesign(_ p0: NSFontDescriptor.SystemDesign) -> Self? {
    return self.withDesign(p0)
  }

}
