import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
// jsvalue   @objc static func create(block: JSValue) -> Self

  // Instance Methods

  /**
    - Selector: addExecutionBlock:
  */
  // jsvalue @objc func addExecutionBlock(_: JSValue)

  // Own Instance Properties

  /**
    - Selector: executionBlocks
  */
// jsvalue   @objc var executionBlocks: [JSValue] { @objc get }
}

extension BlockOperation: BlockOperationExports {
  @objc public static func create(block: JSValue) -> Self {
    return self.init(block: { 
      block.call(withArguments: [])!
    })
  }

}
