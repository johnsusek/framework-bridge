import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSound
    - name: NSSound
    - argLabels: 
  */

@objc(NSSound) protocol NSSoundExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: canInit
    - name: canInitWithPasteboard:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canInit(with:)
  */
  @objc (canInitWithPasteboard:) static func canInit(with: NSPasteboard) -> Bool

  // Own Static Properties

  /**
    - jsName: soundUnfilteredTypes
    - name: soundUnfilteredTypes
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var soundUnfilteredTypes: [String] { @objc get }

  // Instance Methods

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:byReference:
    - argLabels: byReference
    - constructorTokens: contentsOf, byReference
  */
  @objc static func createWithContentsOfURL(_: URL, byReference: Bool) -> Self?

  /**
    - jsName: pause
    - name: pause
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pause() -> Bool

  /**
    - jsName: play
    - name: play
    - argLabels: 
    - constructorTokens: 
  */
  @objc func play() -> Bool

  /**
    - jsName: resume
    - name: resume
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resume() -> Bool

  /**
    - jsName: setName
    - name: setName:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setName(_: NSSound.Name?) -> Bool

  /**
    - jsName: stop
    - name: stop
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stop() -> Bool

  /**
    - jsName: write
    - name: writeToPasteboard:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: write(to:)
  */
  @objc (writeToPasteboard:) func write(to: NSPasteboard)

  // Own Instance Properties

  /**
    - jsName: currentTime
    - name: currentTime
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var currentTime: TimeInterval { @objc get @objc (setCurrentTime:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSoundDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: duration
    - name: duration
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var duration: TimeInterval { @objc get }

  /**
    - jsName: loops
    - name: loops
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var loops: Bool { @objc get @objc (setLoops:) set }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: NSSound.Name? { @objc get }

  /**
    - jsName: playbackDeviceIdentifier
    - name: playbackDeviceIdentifier
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var playbackDeviceIdentifier: NSSound.PlaybackDeviceIdentifier? { @objc get @objc (setPlaybackDeviceIdentifier:) set }

  /**
    - jsName: isPlaying
    - name: playing
    - argLabels: 
    - obsoleted: 3
    - renamed: isPlaying
  */
  @objc var isPlaying: Bool { @objc get }

  /**
    - jsName: volume
    - name: volume
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var volume: Float { @objc get @objc (setVolume:) set }
}

extension NSSound: NSSoundExports {
  @objc public static func createWithContentsOfURL(_ contentsOf: URL, byReference: Bool) -> Self? {
    return self.init(contentsOf: contentsOf, byReference: byReference)
  }

}
