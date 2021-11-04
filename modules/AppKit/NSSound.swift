import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSound
  */

@objc(NSSound) protocol NSSoundExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canInitWithPasteboard:
  */
  @objc (canInitWithPasteboard:) static func canInit(with: NSPasteboard) -> Bool

  // Own Static Properties

  /**
    - Selector: soundUnfilteredTypes
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var soundUnfilteredTypes: [String] { @objc get }

  // Instance Methods

  /**
    - Selector: initWithContentsOfURL:byReference:
  */
  @objc static func createWithContentsOfURL(_: URL, byReference: Bool) -> Self?

  /**
    - Selector: pause
  */
  @objc func pause() -> Bool

  /**
    - Selector: play
  */
  @objc func play() -> Bool

  /**
    - Selector: resume
  */
  @objc func resume() -> Bool

  /**
    - Selector: setName:
  */
  @objc func setName(_: NSSound.Name?) -> Bool

  /**
    - Selector: stop
  */
  @objc func stop() -> Bool

  /**
    - Selector: writeToPasteboard:
  */
  @objc (writeToPasteboard:) func write(to: NSPasteboard)

  // Own Instance Properties

  /**
    - Selector: currentTime
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var currentTime: TimeInterval { @objc get @objc (setCurrentTime:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSoundDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: duration
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var duration: TimeInterval { @objc get }

  /**
    - Selector: loops
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var loops: Bool { @objc get @objc (setLoops:) set }

  /**
    - Selector: name
  */
  @objc var name: NSSound.Name? { @objc get }

  /**
    - Selector: playbackDeviceIdentifier
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var playbackDeviceIdentifier: NSSound.PlaybackDeviceIdentifier? { @objc get @objc (setPlaybackDeviceIdentifier:) set }

  /**
    - Selector: playing
  */
  @objc var isPlaying: Bool { @objc get }

  /**
    - Selector: volume
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var volume: Float { @objc get @objc (setVolume:) set }
}

extension NSSound: NSSoundExports {
  @objc public static func createWithContentsOfURL(_ contentsOf: URL, byReference: Bool) -> Self? {
    return self.init(contentsOf: contentsOf, byReference: byReference)
  }

}
