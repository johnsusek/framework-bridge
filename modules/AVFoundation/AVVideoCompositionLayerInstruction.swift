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
    - Selector: AVVideoCompositionLayerInstruction
    - Introduced: 10.7
  */

@objc(AVVideoCompositionLayerInstruction) protocol AVVideoCompositionLayerInstructionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: getCropRectangleRampForTime:startCropRectangle:endCropRectangle:timeRange:
    - Introduced: 10.9
  */
  @objc (getCropRectangleRampForTime:startCropRectangle:endCropRectangle:timeRange:) @available(OSX 10.9, *) func getCropRectangleRamp(`for`: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>?, endCropRectangle: UnsafeMutablePointer<CGRect>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool

  /**
    - Selector: getOpacityRampForTime:startOpacity:endOpacity:timeRange:
  */
  @objc (getOpacityRampForTime:startOpacity:endOpacity:timeRange:) func getOpacityRamp(`for`: CMTime, startOpacity: UnsafeMutablePointer<Float>?, endOpacity: UnsafeMutablePointer<Float>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool

  /**
    - Selector: getTransformRampForTime:startTransform:endTransform:timeRange:
  */
  @objc (getTransformRampForTime:startTransform:endTransform:timeRange:) func getTransformRamp(`for`: CMTime, start: UnsafeMutablePointer<CGAffineTransform>?, end: UnsafeMutablePointer<CGAffineTransform>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool

  // Own Instance Properties

  /**
    - Selector: trackID
  */
  @objc var trackID: Int32 { @objc get }
}

extension AVVideoCompositionLayerInstruction: AVVideoCompositionLayerInstructionExports {
}
