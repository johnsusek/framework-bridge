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
    - Selector: AVAudioPlayer
    - Introduced: 10.7
  */

@objc(AVAudioPlayer) protocol AVAudioPlayerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: averagePowerForChannel:
  */
  @objc (averagePowerForChannel:) func averagePower(forChannel: Int) -> Float

  /**
    - Selector: pause
  */
  @objc func pause()

  /**
    - Selector: peakPowerForChannel:
  */
  @objc (peakPowerForChannel:) func peakPower(forChannel: Int) -> Float

  /**
    - Selector: play
  */
  @objc func play() -> Bool

  /**
    - Selector: playAtTime:
    - Introduced: 10.7
  */
  @objc (playAtTime:) @available(OSX 10.7, *) func play(atTime: TimeInterval) -> Bool

  /**
    - Selector: prepareToPlay
  */
  @objc func prepareToPlay() -> Bool

  /**
    - Selector: stop
  */
  @objc func stop()

  /**
    - Selector: updateMeters
  */
  @objc func updateMeters()

  // Own Instance Properties

  /**
    - Selector: currentDevice
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var currentDevice: String? { @objc get @objc (setCurrentDevice:) set }

  /**
    - Selector: currentTime
  */
  @objc var currentTime: TimeInterval { @objc get @objc (setCurrentTime:) set }

  /**
    - Selector: data
  */
  @objc var data: Data? { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: AVAudioPlayerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: deviceCurrentTime
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var deviceCurrentTime: TimeInterval { @objc get }

  /**
    - Selector: duration
  */
  @objc var duration: TimeInterval { @objc get }

  /**
    - Selector: enableRate
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var enableRate: Bool { @objc get @objc (setEnableRate:) set }

  /**
    - Selector: format
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var format: AVAudioFormat { @objc get }

  /**
    - Selector: meteringEnabled
  */
  @objc var isMeteringEnabled: Bool { @objc get @objc (setMeteringEnabled:) set }

  /**
    - Selector: numberOfChannels
  */
  @objc var numberOfChannels: Int { @objc get }

  /**
    - Selector: numberOfLoops
  */
  @objc var numberOfLoops: Int { @objc get @objc (setNumberOfLoops:) set }

  /**
    - Selector: pan
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var pan: Float { @objc get @objc (setPan:) set }

  /**
    - Selector: playing
  */
  @objc var isPlaying: Bool { @objc get }

  /**
    - Selector: rate
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var rate: Float { @objc get @objc (setRate:) set }

  /**
    - Selector: settings
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var settings: [String: Any] { @objc get }

  /**
    - Selector: url
  */
  @objc var url: URL? { @objc get }

  /**
    - Selector: volume
  */
  @objc var volume: Float { @objc get @objc (setVolume:) set }
}

extension AVAudioPlayer: AVAudioPlayerExports {
}
