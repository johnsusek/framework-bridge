import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextCheckingController
    - name: NSTextCheckingController
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSTextCheckingController) protocol NSTextCheckingControllerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: changeSpelling
    - name: changeSpelling:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func changeSpelling(_: Any?)

  /**
    - jsName: checkSpelling
    - name: checkSpelling:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func checkSpelling(_: Any?)

  /**
    - jsName: checkTextInDocument
    - name: checkTextInDocument:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func checkTextInDocument(_: Any?)

  /**
    - jsName: checkText
    - name: checkTextInRange:types:options:
    - argLabels: in, types, options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: checkText(in:types:options:)
  */
  @objc (checkTextInRange:types:options:) func checkText(in: NSRange, types: UInt64, options: [NSSpellChecker.OptionKey: Any])

  /**
    - jsName: checkTextInSelection
    - name: checkTextInSelection:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func checkTextInSelection(_: Any?)

  /**
    - jsName: considerTextChecking
    - name: considerTextCheckingForRange:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: considerTextChecking(for:)
  */
  @objc (considerTextCheckingForRange:) func considerTextChecking(`for`: NSRange)

  /**
    - jsName: didChangeSelectedRange
    - name: didChangeSelectedRange
    - argLabels: 
    - constructorTokens: 
  */
  @objc func didChangeSelectedRange()

  /**
    - jsName: didChangeText
    - name: didChangeTextInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: didChangeText(in:)
  */
  @objc (didChangeTextInRange:) func didChangeText(in: NSRange)

  /**
    - jsName: ignoreSpelling
    - name: ignoreSpelling:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func ignoreSpelling(_: Any?)

  /**
    - jsName: createWithClient
    - name: initWithClient:
    - argLabels: 
    - constructorTokens: client
  */
  @objc static func createWithClient(_: NSTextCheckingClient) -> Self

  /**
    - jsName: insertedText
    - name: insertedTextInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertedText(in:)
  */
  @objc (insertedTextInRange:) func insertedText(in: NSRange)

  /**
    - jsName: invalidate
    - name: invalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidate()

  /**
    - jsName: menu
    - name: menuAtIndex:clickedOnSelection:effectiveRange:
    - argLabels: at, clickedOnSelection, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: menu(at:clickedOnSelection:effectiveRange:)
  */
  @objc (menuAtIndex:clickedOnSelection:effectiveRange:) func menu(at: Int, clickedOnSelection: Bool, effectiveRange: NSRangePointer) -> NSMenu?

  /**
    - jsName: orderFrontSubstitutionsPanel
    - name: orderFrontSubstitutionsPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontSubstitutionsPanel(_: Any?)

  /**
    - jsName: showGuessPanel
    - name: showGuessPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func showGuessPanel(_: Any?)

  /**
    - jsName: updateCandidates
    - name: updateCandidates
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateCandidates()

  /**
    - jsName: validAnnotations
    - name: validAnnotations
    - argLabels: 
    - constructorTokens: 
  */
  @objc func validAnnotations() -> [NSAttributedString.Key]

  // Own Instance Properties

  /**
    - jsName: client
    - name: client
    - argLabels: 
  */
  @objc var client: NSTextCheckingClient { @objc get }

  /**
    - jsName: spellCheckerDocumentTag
    - name: spellCheckerDocumentTag
    - argLabels: 
  */
  @objc var spellCheckerDocumentTag: Int { @objc get @objc (setSpellCheckerDocumentTag:) set }
}

extension NSTextCheckingController: NSTextCheckingControllerExports {
  @objc public static func createWithClient(_ client: NSTextCheckingClient) -> Self {
    return self.init(client: client)
  }

}
