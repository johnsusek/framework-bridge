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
    - Selector: AVAudioUnitComponentManager
    - Introduced: 10.10
  */

@objc(AVAudioUnitComponentManager) protocol AVAudioUnitComponentManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: componentsMatchingDescription:
  */
  @objc (componentsMatchingDescription:) func components(matching: AudioComponentDescription) -> [AVAudioUnitComponent]

  /**
    - Selector: componentsMatchingPredicate:
  */
  @objc (componentsMatchingPredicate:) func components(matching: NSPredicate) -> [AVAudioUnitComponent]

  /**
    - Selector: componentsPassingTest:
  */
  // jsvalue @objc func componentsPassingTest(passingTest: JSValue) -> [AVAudioUnitComponent]

  // Own Instance Properties

  /**
    - Selector: standardLocalizedTagNames
  */
  @objc var standardLocalizedTagNames: [String] { @objc get }

  /**
    - Selector: tagNames
  */
  @objc var tagNames: [String] { @objc get }
}

extension AVAudioUnitComponentManager: AVAudioUnitComponentManagerExports {
}
