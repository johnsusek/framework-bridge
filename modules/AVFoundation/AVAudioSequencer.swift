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
    - Selector: AVAudioSequencer
    - Introduced: 10.11
  */

@objc(AVAudioSequencer) protocol AVAudioSequencerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: beatsForHostTime:error:
  */
  // throws - @objc (beatsForHostTime:error:) func beats(_ p0: UInt64) -> AVMusicTimeStamp

  /**
    - Selector: beatsForSeconds:
  */
  @objc (beatsForSeconds:) func beats(forSeconds: TimeInterval) -> AVMusicTimeStamp

  /**
    - Selector: dataWithSMPTEResolution:error:
  */
  // throws - @objc (dataWithSMPTEResolution:error:) func data(_ p0: Int) -> Data

  /**
    - Selector: hostTimeForBeats:error:
  */
  // throws - @objc (hostTimeForBeats:error:) func hostTime(_ p0: AVMusicTimeStamp) -> UInt64

  /**
    - Selector: loadFromData:options:error:
  */
  // throws - @objc func loadFromData(data: Data, options: AVMusicSequenceLoadOptions) -> Bool

  /**
    - Selector: loadFromURL:options:error:
  */
  // throws - @objc func loadFromURL(fileURL: URL, options: AVMusicSequenceLoadOptions) -> Bool

  /**
    - Selector: prepareToPlay
  */
  @objc func prepareToPlay()

  /**
    - Selector: secondsForBeats:
  */
  @objc (secondsForBeats:) func seconds(forBeats: AVMusicTimeStamp) -> TimeInterval

  /**
    - Selector: startAndReturnError:
  */
  // throws - @objc func startAndReturnError() -> Bool

  /**
    - Selector: stop
  */
  @objc func stop()

  /**
    - Selector: writeToURL:SMPTEResolution:replaceExisting:error:
  */
  // throws - @objc func writeToURL(fileURL: URL, SMPTEResolution: Int, replaceExisting: Bool) -> Bool

  // Own Instance Properties

  /**
    - Selector: currentPositionInBeats
  */
  @objc var currentPositionInBeats: TimeInterval { @objc get @objc (setCurrentPositionInBeats:) set }

  /**
    - Selector: currentPositionInSeconds
  */
  @objc var currentPositionInSeconds: TimeInterval { @objc get @objc (setCurrentPositionInSeconds:) set }

  /**
    - Selector: playing
  */
  @objc var isPlaying: Bool { @objc get }

  /**
    - Selector: rate
  */
  @objc var rate: Float { @objc get @objc (setRate:) set }

  /**
    - Selector: tempoTrack
  */
  @objc var tempoTrack: AVMusicTrack { @objc get }

  /**
    - Selector: tracks
  */
  @objc var tracks: [AVMusicTrack] { @objc get }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [String: Any] { @objc get }
}

extension AVAudioSequencer: AVAudioSequencerExports {
}
