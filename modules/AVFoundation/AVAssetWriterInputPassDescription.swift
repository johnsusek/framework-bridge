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
    - Selector: AVAssetWriterInputPassDescription
    - Introduced: 10.10
  */

@objc(AVAssetWriterInputPassDescription) protocol AVAssetWriterInputPassDescriptionExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: sourceTimeRanges
  */
  @objc var sourceTimeRanges: [NSValue] { @objc get }
}

extension AVAssetWriterInputPassDescription: AVAssetWriterInputPassDescriptionExports {
}
