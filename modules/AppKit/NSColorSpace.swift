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
    - Selector: NSColorSpace
  */

@objc(NSColorSpace) protocol NSColorSpaceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: availableColorSpacesWithModel:
    - Introduced: 10.6
  */
  @objc (availableColorSpacesWithModel:) @available(OSX 10.6, *) static func availableColorSpaces(with: NSColorSpace.Model) -> [NSColorSpace]

  // Own Static Properties

  /**
    - Selector: adobeRGB1998ColorSpace
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var adobeRGB1998: NSColorSpace { @objc (adobeRGB1998ColorSpace) get }

  /**
    - Selector: deviceCMYKColorSpace
  */
  @objc static var deviceCMYK: NSColorSpace { @objc (deviceCMYKColorSpace) get }

  /**
    - Selector: deviceGrayColorSpace
  */
  @objc static var deviceGray: NSColorSpace { @objc (deviceGrayColorSpace) get }

  /**
    - Selector: deviceRGBColorSpace
  */
  @objc static var deviceRGB: NSColorSpace { @objc (deviceRGBColorSpace) get }

  /**
    - Selector: displayP3ColorSpace
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var displayP3: NSColorSpace { @objc (displayP3ColorSpace) get }

  /**
    - Selector: extendedGenericGamma22GrayColorSpace
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var extendedGenericGamma22Gray: NSColorSpace { @objc (extendedGenericGamma22GrayColorSpace) get }

  /**
    - Selector: extendedSRGBColorSpace
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var extendedSRGB: NSColorSpace { @objc (extendedSRGBColorSpace) get }

  /**
    - Selector: genericCMYKColorSpace
  */
  @objc static var genericCMYK: NSColorSpace { @objc (genericCMYKColorSpace) get }

  /**
    - Selector: genericGamma22GrayColorSpace
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var genericGamma22Gray: NSColorSpace { @objc (genericGamma22GrayColorSpace) get }

  /**
    - Selector: genericGrayColorSpace
  */
  @objc static var genericGray: NSColorSpace { @objc (genericGrayColorSpace) get }

  /**
    - Selector: genericRGBColorSpace
  */
  @objc static var genericRGB: NSColorSpace { @objc (genericRGBColorSpace) get }

  /**
    - Selector: sRGBColorSpace
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var sRGB: NSColorSpace { @objc (sRGBColorSpace) get }

  // Own Instance Properties

  /**
    - Selector: CGColorSpace
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var cgColorSpace: CGColorSpace? { @objc (CGColorSpace) get }

  /**
    - Selector: ICCProfileData
  */
  @objc var iccProfileData: Data? { @objc (ICCProfileData) get }

  /**
    - Selector: colorSpaceModel
  */
  @objc var colorSpaceModel: NSColorSpace.Model { @objc get }

  /**
    - Selector: colorSyncProfile
  */
  @objc var colorSyncProfile: UnsafeMutableRawPointer? { @objc get }

  /**
    - Selector: localizedName
  */
  @objc var localizedName: String? { @objc get }

  /**
    - Selector: numberOfColorComponents
  */
  @objc var numberOfColorComponents: Int { @objc get }
}

extension NSColorSpace: NSColorSpaceExports {
}
