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
    - Selector: AVMusicTrack
    - Introduced: 10.11
  */

@objc(AVMusicTrack) protocol AVMusicTrackExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: destinationAudioUnit
  */
  @objc var destinationAudioUnit: AVAudioUnit? { @objc get @objc (setDestinationAudioUnit:) set }

  /**
    - Selector: destinationMIDIEndpoint
  */
  @objc var destinationMIDIEndpoint: MIDIEndpointRef { @objc get @objc (setDestinationMIDIEndpoint:) set }

  /**
    - Selector: lengthInBeats
  */
  @objc var lengthInBeats: AVMusicTimeStamp { @objc get @objc (setLengthInBeats:) set }

  /**
    - Selector: lengthInSeconds
  */
  @objc var lengthInSeconds: TimeInterval { @objc get @objc (setLengthInSeconds:) set }

  /**
    - Selector: loopRange
  */
  @objc var loopRange: AVBeatRange { @objc get @objc (setLoopRange:) set }

  /**
    - Selector: loopingEnabled
  */
  @objc var isLoopingEnabled: Bool { @objc get @objc (setLoopingEnabled:) set }

  /**
    - Selector: muted
  */
  @objc var isMuted: Bool { @objc get @objc (setMuted:) set }

  /**
    - Selector: numberOfLoops
  */
  @objc var numberOfLoops: Int { @objc get @objc (setNumberOfLoops:) set }

  /**
    - Selector: offsetTime
  */
  @objc var offsetTime: AVMusicTimeStamp { @objc get @objc (setOffsetTime:) set }

  /**
    - Selector: soloed
  */
  @objc var isSoloed: Bool { @objc get @objc (setSoloed:) set }

  /**
    - Selector: timeResolution
  */
  @objc var timeResolution: Int { @objc get }
}

extension AVMusicTrack: AVMusicTrackExports {
}
