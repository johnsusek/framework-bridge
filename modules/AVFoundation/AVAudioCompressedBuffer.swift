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
    - Selector: AVAudioCompressedBuffer
    - Introduced: 10.11
  */

@objc(AVAudioCompressedBuffer) protocol AVAudioCompressedBufferExports: JSExport, AVAudioBufferExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: byteCapacity
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var byteCapacity: UInt32 { @objc get }

  /**
    - Selector: byteLength
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var byteLength: UInt32 { @objc get @objc (setByteLength:) set }

  /**
    - Selector: data
  */
  @objc var data: UnsafeMutableRawPointer { @objc get }

  /**
    - Selector: maximumPacketSize
  */
  @objc var maximumPacketSize: Int { @objc get }

  /**
    - Selector: packetCapacity
  */
  @objc var packetCapacity: AVAudioPacketCount { @objc get }

  /**
    - Selector: packetCount
  */
  @objc var packetCount: AVAudioPacketCount { @objc get @objc (setPacketCount:) set }

  /**
    - Selector: packetDescriptions
  */
  @objc var packetDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>? { @objc get }
}

extension AVAudioCompressedBuffer: AVAudioCompressedBufferExports {
}
