import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFontDescriptor
    - name: NSFontDescriptor
    - argLabels: 
  */

@objc(NSFontDescriptor) protocol NSFontDescriptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: fontDescriptorWithFontAttributes:
    - argLabels: fontAttributes
    - constructorTokens: 
    - unavailable: true
    - renamed: init(fontAttributes:)
    - message: Not available in Swift
  */
  @objc static func create(fontAttributes: [NSFontDescriptor.AttributeName: Any]?) -> NSFontDescriptor

  // Instance Methods

  /**
    - jsName: addingAttributes
    - name: fontDescriptorByAddingAttributes:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addingAttributes(_:)
  */
  @objc (fontDescriptorByAddingAttributes:) func addingAttributes(_: [NSFontDescriptor.AttributeName: Any]) -> NSFontDescriptor

  /**
    - jsName: withDesign
    - name: fontDescriptorWithDesign:
    - argLabels: _
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: withDesign(_:)
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func withDesign(_: NSFontDescriptor.SystemDesign) -> Self?

  /**
    - jsName: withFace
    - name: fontDescriptorWithFace:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withFace(_:)
  */
  @objc (fontDescriptorWithFace:) func withFace(_: String) -> NSFontDescriptor

  /**
    - jsName: withFamily
    - name: fontDescriptorWithFamily:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withFamily(_:)
  */
  @objc (fontDescriptorWithFamily:) func withFamily(_: String) -> NSFontDescriptor

  /**
    - jsName: withMatrix
    - name: fontDescriptorWithMatrix:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withMatrix(_:)
  */
  @objc (fontDescriptorWithMatrix:) func withMatrix(_: AffineTransform) -> NSFontDescriptor

  /**
    - jsName: withSize
    - name: fontDescriptorWithSize:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withSize(_:)
  */
  @objc (fontDescriptorWithSize:) func withSize(_: CGFloat) -> NSFontDescriptor

  /**
    - jsName: withSymbolicTraits
    - name: fontDescriptorWithSymbolicTraits:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withSymbolicTraits(_:)
  */
  @objc (fontDescriptorWithSymbolicTraits:) func withSymbolicTraits(_: NSFontDescriptor.SymbolicTraits) -> NSFontDescriptor

  /**
    - jsName: matchingFontDescriptor
    - name: matchingFontDescriptorWithMandatoryKeys:
    - argLabels: withMandatoryKeys
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: matchingFontDescriptor(withMandatoryKeys:)
    - Introduced: 10.5
  */
  @objc (matchingFontDescriptorWithMandatoryKeys:) @available(OSX 10.5, *) func matchingFontDescriptor(withMandatoryKeys: Set<NSFontDescriptor.AttributeName>?) -> NSFontDescriptor?

  /**
    - jsName: matchingFontDescriptors
    - name: matchingFontDescriptorsWithMandatoryKeys:
    - argLabels: withMandatoryKeys
    - constructorTokens: 
    - obsoleted: 3
    - renamed: matchingFontDescriptors(withMandatoryKeys:)
  */
  @objc (matchingFontDescriptorsWithMandatoryKeys:) func matchingFontDescriptors(withMandatoryKeys: Set<NSFontDescriptor.AttributeName>?) -> [NSFontDescriptor]

  /**
    - jsName: object
    - name: objectForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: object(forKey:)
  */
  @objc (objectForKey:) func object(forKey: NSFontDescriptor.AttributeName) -> Any?

  // Own Instance Properties

  /**
    - jsName: fontAttributes
    - name: fontAttributes
    - argLabels: 
  */
  @objc var fontAttributes: [NSFontDescriptor.AttributeName: Any] { @objc get }

  /**
    - jsName: matrix
    - name: matrix
    - argLabels: 
  */
  @objc var matrix: AffineTransform? { @objc get }

  /**
    - jsName: pointSize
    - name: pointSize
    - argLabels: 
  */
  @objc var pointSize: CGFloat { @objc get }

  /**
    - jsName: postscriptName
    - name: postscriptName
    - argLabels: 
  */
  @objc var postscriptName: String? { @objc get }

  /**
    - jsName: requiresFontAssetRequest
    - name: requiresFontAssetRequest
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var requiresFontAssetRequest: Bool { @objc get }

  /**
    - jsName: symbolicTraits
    - name: symbolicTraits
    - argLabels: 
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
