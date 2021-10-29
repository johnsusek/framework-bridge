import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Stream
    - name: NSStream
    - argLabels: 
  */

@objc(Stream) protocol StreamExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: getBoundStreams
    - name: getBoundStreamsWithBufferSize:inputStream:outputStream:
    - argLabels: withBufferSize, inputStream, outputStream
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getBoundStreams(withBufferSize:inputStream:outputStream:)
    - Introduced: 10.10
  */
  @objc (getBoundStreamsWithBufferSize:inputStream:outputStream:) @available(OSX 10.10, *) static func getBoundStreams(withBufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)

  /**
    - jsName: getStreamsToHost
    - name: getStreamsToHostWithName:port:inputStream:outputStream:
    - argLabels: withName, port, inputStream, outputStream
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getStreamsToHost(withName:port:inputStream:outputStream:)
    - Introduced: 10.10
  */
  @objc (getStreamsToHostWithName:port:inputStream:outputStream:) @available(OSX 10.10, *) static func getStreamsToHost(withName: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)

  // Instance Methods

  /**
    - jsName: close
    - name: close
    - argLabels: 
    - constructorTokens: 
  */
  @objc func close()

  /**
    - jsName: open
    - name: open
    - argLabels: 
    - constructorTokens: 
  */
  @objc func open()

  /**
    - jsName: property
    - name: propertyForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: property(forKey:)
  */
  @objc (propertyForKey:) func property(forKey: Stream.PropertyKey) -> Any?

  /**
    - jsName: remove
    - name: removeFromRunLoop:forMode:
    - argLabels: from, forMode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: remove(from:forMode:)
  */
  @objc (removeFromRunLoop:forMode:) func remove(from: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: schedule
    - name: scheduleInRunLoop:forMode:
    - argLabels: in, forMode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: schedule(in:forMode:)
  */
  @objc (scheduleInRunLoop:forMode:) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: setProperty
    - name: setProperty:forKey:
    - argLabels: forKey
    - constructorTokens: 
  */
  @objc func setProperty(_: Any?, forKey: Stream.PropertyKey) -> Bool

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: StreamDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: streamError
    - name: streamError
    - argLabels: 
  */
  @objc var streamError: Error? { @objc get }

  /**
    - jsName: streamStatus
    - name: streamStatus
    - argLabels: 
  */
  @objc var streamStatus: Stream.Status { @objc get }
}

extension Stream: StreamExports {
}
