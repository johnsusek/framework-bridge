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
    - Selector: NSBlockOperation
    - Introduced: 10.6
  */

@objc(BlockOperation) protocol BlockOperationExports: JSExport, OperationExports {
  // Static Methods

  /**
    - Selector: blockOperationWithBlock:
  */
// jsvalue   @objc static func createWithBlock(_ block: JSValue) -> Self

  // Instance Methods

  /**
    - Selector: addExecutionBlock:
  */
  // jsvalue @objc func addExecutionBlock(_ p0: JSValue)

  // Own Instance Properties

  /**
    - Selector: executionBlocks
  */
// jsvalue   @objc var executionBlocks: [JSValue] { @objc get }
}

extension BlockOperation: BlockOperationExports {

  /**
    - Selector: blockOperationWithBlock:
  */
  @objc public static func createWithBlock(_ block: JSValue) -> Self {
    return self.init(block: { 
      block.call(withArguments: [])
    })
  }

}
