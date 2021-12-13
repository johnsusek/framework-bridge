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
    - Selector: AVAudioUnitComponent
    - Introduced: 10.10
  */

@objc(AVAudioUnitComponent) protocol AVAudioUnitComponentExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: supportsNumberInputChannels:outputChannels:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func supportsNumberInputChannels(_ p0: Int, outputChannels: Int) -> Bool

  // Own Instance Properties

  /**
    - Selector: allTagNames
  */
  @objc var allTagNames: [String] { @objc get }

  /**
    - Selector: audioComponent
  */
  @objc var audioComponent: AudioComponent { @objc get }

  /**
    - Selector: audioComponentDescription
  */
  @objc var audioComponentDescription: AudioComponentDescription { @objc get }

  /**
    - Selector: availableArchitectures
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var availableArchitectures: [NSNumber] { @objc get }

  /**
    - Selector: configurationDictionary
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var configurationDictionary: [String: Any] { @objc get }

  /**
    - Selector: hasCustomView
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var hasCustomView: Bool { @objc get }

  /**
    - Selector: hasMIDIInput
  */
  @objc var hasMIDIInput: Bool { @objc get }

  /**
    - Selector: hasMIDIOutput
  */
  @objc var hasMIDIOutput: Bool { @objc get }

  /**
    - Selector: icon
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var icon: NSImage? { @objc get }

  /**
    - Selector: iconURL
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var iconURL: URL? { @objc get }

  /**
    - Selector: localizedTypeName
  */
  @objc var localizedTypeName: String { @objc get }

  /**
    - Selector: manufacturerName
  */
  @objc var manufacturerName: String { @objc get }

  /**
    - Selector: name
  */
  @objc var name: String { @objc get }

  /**
    - Selector: passesAUVal
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var passesAUVal: Bool { @objc get }

  /**
    - Selector: sandboxSafe
  */
  @objc var isSandboxSafe: Bool { @objc get }

  /**
    - Selector: typeName
  */
  @objc var typeName: String { @objc get }

  /**
    - Selector: userTagNames
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var userTagNames: [String] { @objc get @objc (setUserTagNames:) set }

  /**
    - Selector: version
  */
  @objc var version: Int { @objc get }

  /**
    - Selector: versionString
  */
  @objc var versionString: String { @objc get }
}

extension AVAudioUnitComponent: AVAudioUnitComponentExports {
}
