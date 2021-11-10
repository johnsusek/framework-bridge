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
    - Selector: AVAsynchronousCIImageFilteringRequest
    - Introduced: 10.11
  */

@objc(AVAsynchronousCIImageFilteringRequest) protocol AVAsynchronousCIImageFilteringRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: finishWithError:
  */
  @objc (finishWithError:) func finish(with: Error)

  /**
    - Selector: finishWithImage:context:
  */
  @objc (finishWithImage:context:) func finish(with: CIImage, context: CIContext?)

  // Own Instance Properties

  /**
    - Selector: compositionTime
  */
  @objc var compositionTime: CMTime { @objc get }

  /**
    - Selector: renderSize
  */
  @objc var renderSize: CGSize { @objc get }

  /**
    - Selector: sourceImage
  */
  @objc var sourceImage: CIImage { @objc get }
}

extension AVAsynchronousCIImageFilteringRequest: AVAsynchronousCIImageFilteringRequestExports {
}
