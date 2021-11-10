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
    - Selector: AVVideoCompositionRenderHint
    - Introduced: 10.15
  */

@objc(AVVideoCompositionRenderHint) protocol AVVideoCompositionRenderHintExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: endCompositionTime
  */
  @objc var endCompositionTime: CMTime { @objc get }

  /**
    - Selector: startCompositionTime
  */
  @objc var startCompositionTime: CMTime { @objc get }
}

extension AVVideoCompositionRenderHint: AVVideoCompositionRenderHintExports {
}
