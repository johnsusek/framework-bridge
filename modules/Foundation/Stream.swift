import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSStream
  */

@objc(Stream) protocol StreamExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: getBoundStreamsWithBufferSize:inputStream:outputStream:
    - Introduced: 10.10
  */
  @objc (getBoundStreamsWithBufferSize:inputStream:outputStream:) @available(OSX 10.10, *) static func getBoundStreams(withBufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)

  /**
    - Selector: getStreamsToHostWithName:port:inputStream:outputStream:
    - Introduced: 10.10
  */
  @objc (getStreamsToHostWithName:port:inputStream:outputStream:) @available(OSX 10.10, *) static func getStreamsToHost(withName: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)

  // Instance Methods

  /**
    - Selector: close
  */
  @objc func close()

  /**
    - Selector: open
  */
  @objc func open()

  /**
    - Selector: propertyForKey:
  */
  @objc (propertyForKey:) func property(forKey: Stream.PropertyKey) -> Any?

  /**
    - Selector: removeFromRunLoop:forMode:
  */
  @objc (removeFromRunLoop:forMode:) func remove(from: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: scheduleInRunLoop:forMode:
  */
  @objc (scheduleInRunLoop:forMode:) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: setProperty:forKey:
  */
  @objc func setProperty(_ p0: Any?, forKey: Stream.PropertyKey) -> Bool

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: StreamDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: streamError
  */
  @objc var streamError: Error? { @objc get }

  /**
    - Selector: streamStatus
  */
  @objc var streamStatus: Stream.Status { @objc get }
}

extension Stream: StreamExports {
}
