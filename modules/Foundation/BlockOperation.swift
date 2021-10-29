import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: BlockOperation
    - name: NSBlockOperation
    - argLabels: 
    - Introduced: 10.6
  */

@objc(BlockOperation) protocol BlockOperationExports: JSExport, OperationExports {
  // Static Methods

  /**
    - jsName: create
    - name: blockOperationWithBlock:
    - argLabels: block
    - constructorTokens: 
    - unavailable: true
    - renamed: init(block:)
    - message: Not available in Swift
  */
  @objc static func create(block: JSValue) -> Self

  // Instance Methods

  /**
    - jsName: addExecutionBlock
    - name: addExecutionBlock:
    - argLabels: 
    - constructorTokens: 
  */
  // jsvalue - @objc func addExecutionBlock(_: JSValue)

  // Own Instance Properties

  /**
    - jsName: executionBlocks
    - name: executionBlocks
    - argLabels: 
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
