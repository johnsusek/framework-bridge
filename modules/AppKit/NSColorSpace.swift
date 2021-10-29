import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorSpace
    - name: NSColorSpace
    - argLabels: 
  */

@objc(NSColorSpace) protocol NSColorSpaceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: availableColorSpaces
    - name: availableColorSpacesWithModel:
    - argLabels: with
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: availableColorSpaces(with:)
    - Introduced: 10.6
  */
  @objc (availableColorSpacesWithModel:) @available(OSX 10.6, *) static func availableColorSpaces(with: NSColorSpace.Model) -> [NSColorSpace]

  // Own Static Properties

  /**
    - jsName: adobeRGB1998
    - name: adobeRGB1998ColorSpace
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: adobeRGB1998
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var adobeRGB1998: NSColorSpace { @objc (adobeRGB1998ColorSpace) get }

  /**
    - jsName: deviceCMYK
    - name: deviceCMYKColorSpace
    - argLabels: 
    - obsoleted: 3
    - renamed: deviceCMYK
  */
  @objc static var deviceCMYK: NSColorSpace { @objc (deviceCMYKColorSpace) get }

  /**
    - jsName: deviceGray
    - name: deviceGrayColorSpace
    - argLabels: 
    - obsoleted: 3
    - renamed: deviceGray
  */
  @objc static var deviceGray: NSColorSpace { @objc (deviceGrayColorSpace) get }

  /**
    - jsName: deviceRGB
    - name: deviceRGBColorSpace
    - argLabels: 
    - obsoleted: 3
    - renamed: deviceRGB
  */
  @objc static var deviceRGB: NSColorSpace { @objc (deviceRGBColorSpace) get }

  /**
    - jsName: displayP3
    - name: displayP3ColorSpace
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: displayP3
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var displayP3: NSColorSpace { @objc (displayP3ColorSpace) get }

  /**
    - jsName: extendedGenericGamma22Gray
    - name: extendedGenericGamma22GrayColorSpace
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: extendedGenericGamma22Gray
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var extendedGenericGamma22Gray: NSColorSpace { @objc (extendedGenericGamma22GrayColorSpace) get }

  /**
    - jsName: extendedSRGB
    - name: extendedSRGBColorSpace
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: extendedSRGB
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var extendedSRGB: NSColorSpace { @objc (extendedSRGBColorSpace) get }

  /**
    - jsName: genericCMYK
    - name: genericCMYKColorSpace
    - argLabels: 
    - obsoleted: 3
    - renamed: genericCMYK
  */
  @objc static var genericCMYK: NSColorSpace { @objc (genericCMYKColorSpace) get }

  /**
    - jsName: genericGamma22Gray
    - name: genericGamma22GrayColorSpace
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: genericGamma22Gray
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var genericGamma22Gray: NSColorSpace { @objc (genericGamma22GrayColorSpace) get }

  /**
    - jsName: genericGray
    - name: genericGrayColorSpace
    - argLabels: 
    - obsoleted: 3
    - renamed: genericGray
  */
  @objc static var genericGray: NSColorSpace { @objc (genericGrayColorSpace) get }

  /**
    - jsName: genericRGB
    - name: genericRGBColorSpace
    - argLabels: 
    - obsoleted: 3
    - renamed: genericRGB
  */
  @objc static var genericRGB: NSColorSpace { @objc (genericRGBColorSpace) get }

  /**
    - jsName: sRGB
    - name: sRGBColorSpace
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: sRGB
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var sRGB: NSColorSpace { @objc (sRGBColorSpace) get }

  // Instance Methods

  /**
    - jsName: createWithCGColorSpace
    - name: initWithCGColorSpace:
    - argLabels: 
    - constructorTokens: cgColorSpace
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func createWithCGColorSpace(_: CGColorSpace) -> Self?

  /**
    - jsName: createWithColorSyncProfile
    - name: initWithColorSyncProfile:
    - argLabels: 
    - constructorTokens: colorSyncProfile
  */
  @objc static func createWithColorSyncProfile(_: UnsafeMutableRawPointer) -> Self?

  /**
    - jsName: createWithICCProfileData
    - name: initWithICCProfileData:
    - argLabels: 
    - constructorTokens: iccProfileData
  */
  @objc static func createWithICCProfileData(_: Data) -> Self?

  // Own Instance Properties

  /**
    - jsName: cgColorSpace
    - name: CGColorSpace
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: cgColorSpace
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var cgColorSpace: CGColorSpace? { @objc (CGColorSpace) get }

  /**
    - jsName: iccProfileData
    - name: ICCProfileData
    - argLabels: 
    - obsoleted: 3
    - renamed: iccProfileData
  */
  @objc var iccProfileData: Data? { @objc (ICCProfileData) get }

  /**
    - jsName: colorSpaceModel
    - name: colorSpaceModel
    - argLabels: 
  */
  @objc var colorSpaceModel: NSColorSpace.Model { @objc get }

  /**
    - jsName: colorSyncProfile
    - name: colorSyncProfile
    - argLabels: 
  */
  @objc var colorSyncProfile: UnsafeMutableRawPointer? { @objc get }

  /**
    - jsName: localizedName
    - name: localizedName
    - argLabels: 
  */
  @objc var localizedName: String? { @objc get }

  /**
    - jsName: numberOfColorComponents
    - name: numberOfColorComponents
    - argLabels: 
  */
  @objc var numberOfColorComponents: Int { @objc get }
}

extension NSColorSpace: NSColorSpaceExports {
  @objc public static func createWithCGColorSpace(_ cgColorSpace: CGColorSpace) -> Self? {
    return self.init(cgColorSpace: cgColorSpace)
  }

  @objc public static func createWithColorSyncProfile(_ colorSyncProfile: UnsafeMutableRawPointer) -> Self? {
    return self.init(colorSyncProfile: colorSyncProfile)
  }

  @objc public static func createWithICCProfileData(_ iccProfileData: Data) -> Self? {
    return self.init(iccProfileData: iccProfileData)
  }

}
