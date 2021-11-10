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
    - Selector: AVPlayerItemOutput
    - Introduced: 10.8
  */

@objc(AVPlayerItemOutput) protocol AVPlayerItemOutputExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: itemTimeForCVTimeStamp:
    - Introduced: 10.8
  */
  @objc (itemTimeForCVTimeStamp:) @available(OSX 10.8, *) func itemTime(`for`: CVTimeStamp) -> CMTime

  /**
    - Selector: itemTimeForHostTime:
  */
  @objc (itemTimeForHostTime:) func itemTime(forHostTime: CFTimeInterval) -> CMTime

  /**
    - Selector: itemTimeForMachAbsoluteTime:
  */
  @objc (itemTimeForMachAbsoluteTime:) func itemTime(forMachAbsoluteTime: Int64) -> CMTime

  // Own Instance Properties

  /**
    - Selector: suppressesPlayerRendering
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var suppressesPlayerRendering: Bool { @objc get @objc (setSuppressesPlayerRendering:) set }
}

extension AVPlayerItemOutput: AVPlayerItemOutputExports {
}
