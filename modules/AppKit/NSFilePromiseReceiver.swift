import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSFilePromiseReceiver
    - Introduced: 10.12
  */

@objc(NSFilePromiseReceiver) protocol NSFilePromiseReceiverExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: readableDraggedTypes
  */
  @objc static var readableDraggedTypes: [String] { @objc get }

  // Instance Methods

  /**
    - Selector: receivePromisedFilesAtDestination:options:operationQueue:reader:
  */
  // jsvalue @objc func receivePromisedFilesAtDestinationWithOptionsWithOperationQueueWithReader(atDestination: URL, options: [AnyHashable: Any], operationQueue: OperationQueue, reader: JSValue)

  // Own Instance Properties

  /**
    - Selector: fileNames
  */
  @objc var fileNames: [String] { @objc get }

  /**
    - Selector: fileTypes
  */
  @objc var fileTypes: [String] { @objc get }
}

extension NSFilePromiseReceiver: NSFilePromiseReceiverExports {
}
