import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSPipe
  */

@objc(Pipe) protocol PipeExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: fileHandleForReading
  */
  @objc var fileHandleForReading: FileHandle { @objc get }

  /**
    - Selector: fileHandleForWriting
  */
  @objc var fileHandleForWriting: FileHandle { @objc get }
}

extension Pipe: PipeExports {
}
