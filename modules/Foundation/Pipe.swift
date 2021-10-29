import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Pipe
    - name: NSPipe
    - argLabels: 
  */

@objc(Pipe) protocol PipeExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: fileHandleForReading
    - name: fileHandleForReading
    - argLabels: 
  */
  @objc var fileHandleForReading: FileHandle { @objc get }

  /**
    - jsName: fileHandleForWriting
    - name: fileHandleForWriting
    - argLabels: 
  */
  @objc var fileHandleForWriting: FileHandle { @objc get }
}

extension Pipe: PipeExports {
}
