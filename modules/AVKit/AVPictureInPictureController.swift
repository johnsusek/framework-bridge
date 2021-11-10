import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVKit

// Interface 

  /**
    - Selector: AVPictureInPictureController
    - Introduced: 10.15
  */

@objc(AVPictureInPictureController) protocol AVPictureInPictureControllerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: isPictureInPictureSupported
  */
  @objc static func isPictureInPictureSupported() -> Bool

  // Own Static Properties

  /**
    - Selector: pictureInPictureButtonStartImage
  */
  @objc static var pictureInPictureButtonStartImage: NSImage { @objc get }

  /**
    - Selector: pictureInPictureButtonStopImage
  */
  @objc static var pictureInPictureButtonStopImage: NSImage { @objc get }

  // Instance Methods

  /**
    - Selector: startPictureInPicture
  */
  @objc func startPictureInPicture()

  /**
    - Selector: stopPictureInPicture
  */
  @objc func stopPictureInPicture()

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AVPictureInPictureControllerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: pictureInPictureActive
  */
  @objc var isPictureInPictureActive: Bool { @objc get }

  /**
    - Selector: pictureInPicturePossible
  */
  @objc var isPictureInPicturePossible: Bool { @objc get }

  /**
    - Selector: pictureInPictureSuspended
  */
  @objc var isPictureInPictureSuspended: Bool { @objc get }

  /**
    - Selector: playerLayer
  */
  @objc var playerLayer: AVPlayerLayer { @objc get }
}

extension AVPictureInPictureController: AVPictureInPictureControllerExports {
}
