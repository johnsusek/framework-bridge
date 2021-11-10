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
    - Selector: AVRouteDetector
    - Introduced: 10.13
  */

@objc(AVRouteDetector) protocol AVRouteDetectorExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: multipleRoutesDetected
  */
  @objc var multipleRoutesDetected: Bool { @objc get }

  /**
    - Selector: routeDetectionEnabled
  */
  @objc var isRouteDetectionEnabled: Bool { @objc get @objc (setRouteDetectionEnabled:) set }
}

extension AVRouteDetector: AVRouteDetectorExports {
}
