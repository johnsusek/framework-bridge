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
    - Selector: AVMIDIPlayer
    - Introduced: 10.10
  */

@objc(AVMIDIPlayer) protocol AVMIDIPlayerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: play:
  */
  // jsvalue @objc func play(_ p0: JSValue?)

  /**
    - Selector: prepareToPlay
  */
  @objc func prepareToPlay()

  /**
    - Selector: stop
  */
  @objc func stop()

  // Own Instance Properties

  /**
    - Selector: currentPosition
  */
  @objc var currentPosition: TimeInterval { @objc get @objc (setCurrentPosition:) set }

  /**
    - Selector: duration
  */
  @objc var duration: TimeInterval { @objc get }

  /**
    - Selector: playing
  */
  @objc var isPlaying: Bool { @objc get }

  /**
    - Selector: rate
  */
  @objc var rate: Float { @objc get @objc (setRate:) set }
}

extension AVMIDIPlayer: AVMIDIPlayerExports {
}
