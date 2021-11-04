import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextCheckingController
    - Introduced: 10.15
  */

@objc(NSTextCheckingController) protocol NSTextCheckingControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: changeSpelling:
  */
  @objc func changeSpelling(_: Any?)

  /**
    - Selector: checkSpelling:
  */
  @objc func checkSpelling(_: Any?)

  /**
    - Selector: checkTextInDocument:
  */
  @objc func checkTextInDocument(_: Any?)

  /**
    - Selector: checkTextInRange:types:options:
  */
  @objc (checkTextInRange:types:options:) func checkText(in: NSRange, types: UInt64, options: [NSSpellChecker.OptionKey: Any])

  /**
    - Selector: checkTextInSelection:
  */
  @objc func checkTextInSelection(_: Any?)

  /**
    - Selector: considerTextCheckingForRange:
  */
  @objc (considerTextCheckingForRange:) func considerTextChecking(`for`: NSRange)

  /**
    - Selector: didChangeSelectedRange
  */
  @objc func didChangeSelectedRange()

  /**
    - Selector: didChangeTextInRange:
  */
  @objc (didChangeTextInRange:) func didChangeText(in: NSRange)

  /**
    - Selector: ignoreSpelling:
  */
  @objc func ignoreSpelling(_: Any?)

  /**
    - Selector: initWithClient:
  */
  @objc static func createWithClient(_: NSTextCheckingClient) -> Self

  /**
    - Selector: insertedTextInRange:
  */
  @objc (insertedTextInRange:) func insertedText(in: NSRange)

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  /**
    - Selector: menuAtIndex:clickedOnSelection:effectiveRange:
  */
  @objc (menuAtIndex:clickedOnSelection:effectiveRange:) func menu(at: Int, clickedOnSelection: Bool, effectiveRange: NSRangePointer) -> NSMenu?

  /**
    - Selector: orderFrontSubstitutionsPanel:
  */
  @objc func orderFrontSubstitutionsPanel(_: Any?)

  /**
    - Selector: showGuessPanel:
  */
  @objc func showGuessPanel(_: Any?)

  /**
    - Selector: updateCandidates
  */
  @objc func updateCandidates()

  /**
    - Selector: validAnnotations
  */
  @objc func validAnnotations() -> [NSAttributedString.Key]

  // Own Instance Properties

  /**
    - Selector: client
  */
  @objc var client: NSTextCheckingClient { @objc get }

  /**
    - Selector: spellCheckerDocumentTag
  */
  @objc var spellCheckerDocumentTag: Int { @objc get @objc (setSpellCheckerDocumentTag:) set }
}

extension NSTextCheckingController: NSTextCheckingControllerExports {
  @objc public static func createWithClient(_ client: NSTextCheckingClient) -> Self {
    return self.init(client: client)
  }

}
