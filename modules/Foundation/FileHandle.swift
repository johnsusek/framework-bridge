import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: FileHandle
    - name: NSFileHandle
    - argLabels: 
  */

@objc(FileHandle) protocol FileHandleExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: fileHandleForReadingAtPath:
    - argLabels: forReadingAtPath
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forReadingAtPath:)
    - message: Not available in Swift
  */
  @objc static func create(forReadingAtPath: String) -> Self?

  /**
    - jsName: fileHandleForReadingFromURL
    - name: fileHandleForReadingFromURL:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func fileHandleForReadingFromURL(error: URL) -> Self?

  /**
    - jsName: create
    - name: fileHandleForUpdatingAtPath:
    - argLabels: forUpdatingAtPath
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forUpdatingAtPath:)
    - message: Not available in Swift
  */
  @objc static func create(forUpdatingAtPath: String) -> Self?

  /**
    - jsName: fileHandleForUpdatingURL
    - name: fileHandleForUpdatingURL:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func fileHandleForUpdatingURL(error: URL) -> Self?

  /**
    - jsName: create
    - name: fileHandleForWritingAtPath:
    - argLabels: forWritingAtPath
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forWritingAtPath:)
    - message: Not available in Swift
  */
  @objc static func create(forWritingAtPath: String) -> Self?

  /**
    - jsName: fileHandleForWritingToURL
    - name: fileHandleForWritingToURL:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func fileHandleForWritingToURL(error: URL) -> Self?

  // Own Static Properties

  /**
    - jsName: nullDevice
    - name: fileHandleWithNullDevice
    - argLabels: 
    - obsoleted: 3
    - renamed: nullDevice
  */
  @objc static var nullDevice: FileHandle { @objc (fileHandleWithNullDevice) get }

  /**
    - jsName: standardError
    - name: fileHandleWithStandardError
    - argLabels: 
    - obsoleted: 3
    - renamed: standardError
  */
  @objc static var standardError: FileHandle { @objc (fileHandleWithStandardError) get }

  /**
    - jsName: standardInput
    - name: fileHandleWithStandardInput
    - argLabels: 
    - obsoleted: 3
    - renamed: standardInput
  */
  @objc static var standardInput: FileHandle { @objc (fileHandleWithStandardInput) get }

  /**
    - jsName: standardOutput
    - name: fileHandleWithStandardOutput
    - argLabels: 
    - obsoleted: 3
    - renamed: standardOutput
  */
  @objc static var standardOutput: FileHandle { @objc (fileHandleWithStandardOutput) get }

  // Instance Methods

  /**
    - jsName: acceptConnectionInBackgroundAndNotify
    - name: acceptConnectionInBackgroundAndNotify
    - argLabels: 
    - constructorTokens: 
  */
  @objc func acceptConnectionInBackgroundAndNotify()

  /**
    - jsName: acceptConnectionInBackgroundAndNotify
    - name: acceptConnectionInBackgroundAndNotifyForModes:
    - argLabels: forModes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: acceptConnectionInBackgroundAndNotify(forModes:)
  */
  @objc (acceptConnectionInBackgroundAndNotifyForModes:) func acceptConnectionInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - jsName: closeAndReturnError
    - name: closeAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func closeAndReturnError() -> Bool

  /**
    - jsName: closeFile
    - name: closeFile
    - argLabels: 
    - constructorTokens: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: closeAndReturnError:
  */
  @objc @available(OSX 10.0, *) func closeFile()

  /**
    - jsName: getOffset
    - name: getOffset:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func getOffset(error: UnsafeMutablePointer<unsigned long long>) -> Bool

  /**
    - jsName: createWithFileDescriptor
    - name: initWithFileDescriptor:
    - argLabels: 
    - constructorTokens: fileDescriptor
  */
  @objc static func createWithFileDescriptor(_: Int32) -> Self

  /**
    - jsName: createWithFileDescriptor
    - name: initWithFileDescriptor:closeOnDealloc:
    - argLabels: closeOnDealloc
    - constructorTokens: fileDescriptor, closeOnDealloc
  */
  @objc static func createWithFileDescriptor(_: Int32, closeOnDealloc: Bool) -> Self

  /**
    - jsName: readData
    - name: readDataOfLength:
    - argLabels: ofLength
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readData(ofLength:)
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: readDataUpToLength:error:
  */
  @objc (readDataOfLength:) @available(OSX 10.0, *) func readData(ofLength: Int) -> Data

  /**
    - jsName: readDataToEndOfFile
    - name: readDataToEndOfFile
    - argLabels: 
    - constructorTokens: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: readDataToEndOfFileAndReturnError:
  */
  @objc @available(OSX 10.0, *) func readDataToEndOfFile() -> Data

  /**
    - jsName: readDataToEndOfFileAndReturnError
    - name: readDataToEndOfFileAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func readDataToEndOfFileAndReturnError() -> Data?

  /**
    - jsName: readDataUpToLength
    - name: readDataUpToLength:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func readDataUpToLength(error: Int) -> Data?

  /**
    - jsName: readInBackgroundAndNotify
    - name: readInBackgroundAndNotify
    - argLabels: 
    - constructorTokens: 
  */
  @objc func readInBackgroundAndNotify()

  /**
    - jsName: readInBackgroundAndNotify
    - name: readInBackgroundAndNotifyForModes:
    - argLabels: forModes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readInBackgroundAndNotify(forModes:)
  */
  @objc (readInBackgroundAndNotifyForModes:) func readInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - jsName: readToEndOfFileInBackgroundAndNotify
    - name: readToEndOfFileInBackgroundAndNotify
    - argLabels: 
    - constructorTokens: 
  */
  @objc func readToEndOfFileInBackgroundAndNotify()

  /**
    - jsName: readToEndOfFileInBackgroundAndNotify
    - name: readToEndOfFileInBackgroundAndNotifyForModes:
    - argLabels: forModes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readToEndOfFileInBackgroundAndNotify(forModes:)
  */
  @objc (readToEndOfFileInBackgroundAndNotifyForModes:) func readToEndOfFileInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - jsName: seekToEndOfFile
    - name: seekToEndOfFile
    - argLabels: 
    - constructorTokens: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: seekToEndReturningOffset:error:
  */
  @objc @available(OSX 10.0, *) func seekToEndOfFile() -> UInt64

  /**
    - jsName: seekToEndReturningOffset
    - name: seekToEndReturningOffset:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func seekToEndReturningOffset(error: UnsafeMutablePointer<unsigned long long>?) -> Bool

  /**
    - jsName: seek
    - name: seekToFileOffset:
    - argLabels: toFileOffset
    - constructorTokens: 
    - obsoleted: 3
    - renamed: seek(toFileOffset:)
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: seekToOffset:error:
  */
  @objc (seekToFileOffset:) @available(OSX 10.0, *) func seek(toFileOffset: UInt64)

  /**
    - jsName: seekToOffset
    - name: seekToOffset:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func seekToOffset(error: UInt64) -> Bool

  /**
    - jsName: synchronizeAndReturnError
    - name: synchronizeAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func synchronizeAndReturnError() -> Bool

  /**
    - jsName: synchronizeFile
    - name: synchronizeFile
    - argLabels: 
    - constructorTokens: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: synchronizeAndReturnError:
  */
  @objc @available(OSX 10.0, *) func synchronizeFile()

  /**
    - jsName: truncateAtOffset
    - name: truncateAtOffset:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func truncateAtOffset(error: UInt64) -> Bool

  /**
    - jsName: truncateFile
    - name: truncateFileAtOffset:
    - argLabels: atOffset
    - constructorTokens: 
    - obsoleted: 3
    - renamed: truncateFile(atOffset:)
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: truncateAtOffset:error:
  */
  @objc (truncateFileAtOffset:) @available(OSX 10.0, *) func truncateFile(atOffset: UInt64)

  /**
    - jsName: waitForDataInBackgroundAndNotify
    - name: waitForDataInBackgroundAndNotify
    - argLabels: 
    - constructorTokens: 
  */
  @objc func waitForDataInBackgroundAndNotify()

  /**
    - jsName: waitForDataInBackgroundAndNotify
    - name: waitForDataInBackgroundAndNotifyForModes:
    - argLabels: forModes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: waitForDataInBackgroundAndNotify(forModes:)
  */
  @objc (waitForDataInBackgroundAndNotifyForModes:) func waitForDataInBackgroundAndNotify(forModes: [RunLoop.Mode]?)

  /**
    - jsName: write
    - name: writeData:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: write(_:)
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: writeData:error:
  */
  @objc (writeData:) @available(OSX 10.0, *) func write(_: Data)

  /**
    - jsName: writeData
    - name: writeData:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func writeData(error: Data) -> Bool

  // Own Instance Properties

  /**
    - jsName: availableData
    - name: availableData
    - argLabels: 
  */
  @objc var availableData: Data { @objc get }

  /**
    - jsName: fileDescriptor
    - name: fileDescriptor
    - argLabels: 
  */
  @objc var fileDescriptor: Int32 { @objc get }

  /**
    - jsName: offsetInFile
    - name: offsetInFile
    - argLabels: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: getOffset:error:
  */
  @objc @available(OSX 10.0, *) var offsetInFile: UInt64 { @objc get }

  /**
    - jsName: readabilityHandler
    - name: readabilityHandler
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var readabilityHandler: JSValue? { @objc get @objc (setReadabilityHandler:) set }

  /**
    - jsName: writeabilityHandler
    - name: writeabilityHandler
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var writeabilityHandler: JSValue? { @objc get @objc (setWriteabilityHandler:) set }
}

extension FileHandle: FileHandleExports {
  @objc public static func create(forReadingAtPath: String) -> Self? {
    return self.init(forReadingAtPath: forReadingAtPath)
  }

  @objc public static func fileHandleForReadingFromURL(error: URL) -> Self? {
    return try? self.fileHandleForReadingFromURL(error: error)
  }

  @objc public static func create(forUpdatingAtPath: String) -> Self? {
    return self.init(forUpdatingAtPath: forUpdatingAtPath)
  }

  @objc public static func fileHandleForUpdatingURL(error: URL) -> Self? {
    return try? self.fileHandleForUpdatingURL(error: error)
  }

  @objc public static func create(forWritingAtPath: String) -> Self? {
    return self.init(forWritingAtPath: forWritingAtPath)
  }

  @objc public static func fileHandleForWritingToURL(error: URL) -> Self? {
    return try? self.fileHandleForWritingToURL(error: error)
  }

  @objc public static func createWithFileDescriptor(_ fileDescriptor: Int32) -> Self {
    return self.init(fileDescriptor: fileDescriptor)
  }

  @objc public static func createWithFileDescriptor(_ fileDescriptor: Int32, closeOnDealloc: Bool) -> Self {
    return self.init(fileDescriptor: fileDescriptor, closeOnDealloc: closeOnDealloc)
  }

}
