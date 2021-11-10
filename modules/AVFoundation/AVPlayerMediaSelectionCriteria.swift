import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVFoundation

// Interface 

  /**
    - Selector: AVPlayerMediaSelectionCriteria
    - Introduced: 10.9
  */

@objc(AVPlayerMediaSelectionCriteria) protocol AVPlayerMediaSelectionCriteriaExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: preferredLanguages
  */
  @objc var preferredLanguages: [String]? { @objc get }

  /**
    - Selector: preferredMediaCharacteristics
  */
  @objc var preferredMediaCharacteristics: [AVMediaCharacteristic]? { @objc get }

  /**
    - Selector: principalMediaCharacteristics
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var principalMediaCharacteristics: [AVMediaCharacteristic]? { @objc get }
}

extension AVPlayerMediaSelectionCriteria: AVPlayerMediaSelectionCriteriaExports {
}
