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
    - Selector: AVMetadataGroup
    - Introduced: 10.11
  */

@objc(AVMetadataGroup) protocol AVMetadataGroupExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: classifyingLabel
    - Introduced: 10.11.3
  */
  @objc @available(OSX 10.11.3, *) var classifyingLabel: String? { @objc get }

  /**
    - Selector: items
  */
  @objc var items: [AVMetadataItem] { @objc get }

  /**
    - Selector: uniqueID
    - Introduced: 10.11.3
  */
  @objc @available(OSX 10.11.3, *) var uniqueID: String? { @objc get }
}

extension AVMetadataGroup: AVMetadataGroupExports {
}
