import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFilePromiseReceiver
    - name: NSFilePromiseReceiver
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSFilePromiseReceiver) protocol NSFilePromiseReceiverExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: readableDraggedTypes
    - name: readableDraggedTypes
    - argLabels: 
  */
  @objc static var readableDraggedTypes: [String] { @objc get }

  // Instance Methods

  /**
    - jsName: receivePromisedFiles
    - name: receivePromisedFilesAtDestination:options:operationQueue:reader:
    - argLabels: atDestination, options, operationQueue, reader
    - constructorTokens: 
    - obsoleted: 3
    - renamed: receivePromisedFiles(atDestination:options:operationQueue:reader:)
  */
  // jsvalue - @objc (receivePromisedFilesAtDestination:options:operationQueue:reader:) func receivePromisedFiles(atDestination: URL, options: [AnyHashable: Any], operationQueue: OperationQueue, reader: JSValue)

  // Own Instance Properties

  /**
    - jsName: fileNames
    - name: fileNames
    - argLabels: 
  */
  @objc var fileNames: [String] { @objc get }

  /**
    - jsName: fileTypes
    - name: fileTypes
    - argLabels: 
  */
  @objc var fileTypes: [String] { @objc get }
}

extension NSFilePromiseReceiver: NSFilePromiseReceiverExports {
}
