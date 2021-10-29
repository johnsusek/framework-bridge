import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitFrequency
    - name: NSUnitFrequency
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitFrequency) protocol UnitFrequencyExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - jsName: baseUnit
    - name: baseUnit
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - jsName: framesPerSecond
    - name: framesPerSecond
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var framesPerSecond: UnitFrequency { @objc get }

  /**
    - jsName: gigahertz
    - name: gigahertz
    - argLabels: 
  */
  @objc static var gigahertz: UnitFrequency { @objc get }

  /**
    - jsName: hertz
    - name: hertz
    - argLabels: 
  */
  @objc static var hertz: UnitFrequency { @objc get }

  /**
    - jsName: kilohertz
    - name: kilohertz
    - argLabels: 
  */
  @objc static var kilohertz: UnitFrequency { @objc get }

  /**
    - jsName: megahertz
    - name: megahertz
    - argLabels: 
  */
  @objc static var megahertz: UnitFrequency { @objc get }

  /**
    - jsName: microhertz
    - name: microhertz
    - argLabels: 
  */
  @objc static var microhertz: UnitFrequency { @objc get }

  /**
    - jsName: millihertz
    - name: millihertz
    - argLabels: 
  */
  @objc static var millihertz: UnitFrequency { @objc get }

  /**
    - jsName: nanohertz
    - name: nanohertz
    - argLabels: 
  */
  @objc static var nanohertz: UnitFrequency { @objc get }

  /**
    - jsName: terahertz
    - name: terahertz
    - argLabels: 
  */
  @objc static var terahertz: UnitFrequency { @objc get }
}

extension UnitFrequency: UnitFrequencyExports {
}
