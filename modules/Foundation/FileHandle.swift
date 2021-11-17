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
    - Selector: NSFileHandle
  */

@objc(FileHandle) protocol FileHandleExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: fileHandleWithNullDevice
  */
  @objc static var nullDevice: FileHandle { @objc (fileHandleWithNullDevice) get }

  /**
    - Selector: fileHandleWithStandardError
  */
  @objc static var standardError: FileHandle { @objc (fileHandleWithStandardError) get }

  /**
    - Selector: fileHandleWithStandardInput
  */
  @objc static var standardInput: FileHandle { @objc (fileHandleWithStandardInput) get }

  /**
    - Selector: fileHandleWithStandardOutput
  */
  @objc static var standardOutput: FileHandle { @objc (fileHandleWithStandardOutput) get }

  // Instance Methods

  /**
    - Selector: acceptConnectionInBackgroundAndNotify
  */
  @objc func acceptConnectionInBackgroundAndNotify()

  /**
    - Selector: acceptConnectionInBackgroundAndNotifyForModes:
  */
  @objc (acceptConnectionInBackgroundAndNotifyForModes:) func acceptConnectionInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - Selector: closeAndReturnError:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func closeAndReturnError() -> Bool

  /**
    - Selector: closeFile
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: closeAndReturnError:
  */
  @objc @available(OSX 10.0, *) func closeFile()

  /**
    - Selector: getOffset:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func getOffset(offsetInFile: UnsafeMutablePointer<unsigned long long>) -> Bool

  /**
    - Selector: readDataOfLength:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: readDataUpToLength:error:
  */
  @objc (readDataOfLength:) @available(OSX 10.0, *) func readData(ofLength: Int) -> Data

  /**
    - Selector: readDataToEndOfFile
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: readDataToEndOfFileAndReturnError:
  */
  @objc @available(OSX 10.0, *) func readDataToEndOfFile() -> Data

  /**
    - Selector: readDataToEndOfFileAndReturnError:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func readDataToEndOfFileAndReturnError() -> Data?

  /**
    - Selector: readDataUpToLength:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func readDataUpToLength(length: Int) -> Data?

  /**
    - Selector: readInBackgroundAndNotify
  */
  @objc func readInBackgroundAndNotify()

  /**
    - Selector: readInBackgroundAndNotifyForModes:
  */
  @objc (readInBackgroundAndNotifyForModes:) func readInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - Selector: readToEndOfFileInBackgroundAndNotify
  */
  @objc func readToEndOfFileInBackgroundAndNotify()

  /**
    - Selector: readToEndOfFileInBackgroundAndNotifyForModes:
  */
  @objc (readToEndOfFileInBackgroundAndNotifyForModes:) func readToEndOfFileInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - Selector: seekToEndOfFile
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: seekToEndReturningOffset:error:
  */
  @objc @available(OSX 10.0, *) func seekToEndOfFile() -> UInt64

  /**
    - Selector: seekToEndReturningOffset:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func seekToEndReturningOffset(offsetInFile: UnsafeMutablePointer<unsigned long long>?) -> Bool

  /**
    - Selector: seekToFileOffset:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: seekToOffset:error:
  */
  @objc (seekToFileOffset:) @available(OSX 10.0, *) func seek(toFileOffset: UInt64)

  /**
    - Selector: seekToOffset:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func seekToOffset(offset: UInt64) -> Bool

  /**
    - Selector: synchronizeAndReturnError:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func synchronizeAndReturnError() -> Bool

  /**
    - Selector: synchronizeFile
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: synchronizeAndReturnError:
  */
  @objc @available(OSX 10.0, *) func synchronizeFile()

  /**
    - Selector: truncateAtOffset:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func truncateAtOffset(offset: UInt64) -> Bool

  /**
    - Selector: truncateFileAtOffset:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: truncateAtOffset:error:
  */
  @objc (truncateFileAtOffset:) @available(OSX 10.0, *) func truncateFile(atOffset: UInt64)

  /**
    - Selector: waitForDataInBackgroundAndNotify
  */
  @objc func waitForDataInBackgroundAndNotify()

  /**
    - Selector: waitForDataInBackgroundAndNotifyForModes:
  */
  @objc (waitForDataInBackgroundAndNotifyForModes:) func waitForDataInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - Selector: writeData:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: writeData:error:
  */
  @objc (writeData:) @available(OSX 10.0, *) func write(_: Data)

  /**
    - Selector: writeData:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func writeData(data: Data) -> Bool

  // Own Instance Properties

  /**
    - Selector: availableData
  */
  @objc var availableData: Data { @objc get }

  /**
    - Selector: fileDescriptor
  */
  @objc var fileDescriptor: Int32 { @objc get }

  /**
    - Selector: offsetInFile
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: getOffset:error:
  */
  @objc @available(OSX 10.0, *) var offsetInFile: UInt64 { @objc get }

  /**
    - Selector: readabilityHandler
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var readabilityHandler: JSValue? { @objc get @objc (setReadabilityHandler:) set }

  /**
    - Selector: writeabilityHandler
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var writeabilityHandler: JSValue? { @objc get @objc (setWriteabilityHandler:) set }
}

extension FileHandle: FileHandleExports {
}
