import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextView
    - name: NSTextView
    - argLabels: 
  */

@objc(NSTextView) protocol NSTextViewExports: JSExport, NSTextExports {
  // Static Methods

  /**
    - jsName: fieldEditor
    - name: fieldEditor
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func fieldEditor() -> Self

  /**
    - jsName: registerForServices
    - name: registerForServices
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func registerForServices()

  /**
    - jsName: scrollableDocumentContentTextView
    - name: scrollableDocumentContentTextView
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func scrollableDocumentContentTextView() -> NSScrollView

  /**
    - jsName: scrollablePlainDocumentContentTextView
    - name: scrollablePlainDocumentContentTextView
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func scrollablePlainDocumentContentTextView() -> NSScrollView

  /**
    - jsName: scrollableTextView
    - name: scrollableTextView
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func scrollableTextView() -> NSScrollView

  // Own Static Properties

  /**
    - jsName: stronglyReferencesTextStorage
    - name: stronglyReferencesTextStorage
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var stronglyReferencesTextStorage: Bool { @objc get }

  // Instance Methods

  /**
    - jsName: alignJustified
    - name: alignJustified:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func alignJustified(_: Any?)

  /**
    - jsName: breakUndoCoalescing
    - name: breakUndoCoalescing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func breakUndoCoalescing()

  /**
    - jsName: changeAttributes
    - name: changeAttributes:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func changeAttributes(_: Any?)

  /**
    - jsName: changeDocumentBackgroundColor
    - name: changeDocumentBackgroundColor:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func changeDocumentBackgroundColor(_: Any?)

  /**
    - jsName: changeLayoutOrientation
    - name: changeLayoutOrientation:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func changeLayoutOrientation(_: Any?)

  /**
    - jsName: characterIndexForInsertion
    - name: characterIndexForInsertionAtPoint:
    - argLabels: at
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: characterIndexForInsertion(at:)
    - Introduced: 10.5
  */
  @objc (characterIndexForInsertionAtPoint:) @available(OSX 10.5, *) func characterIndexForInsertion(at: CGPoint) -> Int

  /**
    - jsName: checkTextInDocument
    - name: checkTextInDocument:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func checkTextInDocument(_: Any?)

  /**
    - jsName: checkText
    - name: checkTextInRange:types:options:
    - argLabels: in, types, options
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: checkText(in:types:options:)
    - Introduced: 10.6
  */
  @objc (checkTextInRange:types:options:) @available(OSX 10.6, *) func checkText(in: NSRange, types: UInt64, options: [NSSpellChecker.OptionKey: Any])

  /**
    - jsName: checkTextInSelection
    - name: checkTextInSelection:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func checkTextInSelection(_: Any?)

  /**
    - jsName: cleanUpAfterDragOperation
    - name: cleanUpAfterDragOperation
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cleanUpAfterDragOperation()

  /**
    - jsName: clicked
    - name: clickedOnLink:atIndex:
    - argLabels: onLink, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: clicked(onLink:at:)
  */
  @objc (clickedOnLink:atIndex:) func clicked(onLink: Any, at: Int)

  /**
    - jsName: completions
    - name: completionsForPartialWordRange:indexOfSelectedItem:
    - argLabels: forPartialWordRange, indexOfSelectedItem
    - constructorTokens: 
    - obsoleted: 3
    - renamed: completions(forPartialWordRange:indexOfSelectedItem:)
  */
  @objc (completionsForPartialWordRange:indexOfSelectedItem:) func completions(forPartialWordRange: NSRange, indexOfSelectedItem: UnsafeMutablePointer<NSInteger>) -> [String]?

  /**
    - jsName: didChangeText
    - name: didChangeText
    - argLabels: 
    - constructorTokens: 
  */
  @objc func didChangeText()

  /**
    - jsName: dragImageForSelection
    - name: dragImageForSelectionWithEvent:origin:
    - argLabels: with, origin
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dragImageForSelection(with:origin:)
  */
  @objc (dragImageForSelectionWithEvent:origin:) func dragImageForSelection(with: NSEvent, origin: NSPointPointer?) -> NSImage?

  /**
    - jsName: dragOperation
    - name: dragOperationForDraggingInfo:type:
    - argLabels: for, type
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dragOperation(for:type:)
  */
  @objc (dragOperationForDraggingInfo:type:) func dragOperation(`for`: NSDraggingInfo, type: NSPasteboard.PasteboardType) -> NSDragOperation

  /**
    - jsName: dragSelection
    - name: dragSelectionWithEvent:offset:slideBack:
    - argLabels: with, offset, slideBack
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dragSelection(with:offset:slideBack:)
  */
  @objc (dragSelectionWithEvent:offset:slideBack:) func dragSelection(with: NSEvent, offset: CGSize, slideBack: Bool) -> Bool

  /**
    - jsName: drawInsertionPoint
    - name: drawInsertionPointInRect:color:turnedOn:
    - argLabels: in, color, turnedOn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawInsertionPoint(in:color:turnedOn:)
  */
  @objc (drawInsertionPointInRect:color:turnedOn:) func drawInsertionPoint(in: CGRect, color: NSColor, turnedOn: Bool)

  /**
    - jsName: drawBackground
    - name: drawViewBackgroundInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBackground(in:)
  */
  @objc (drawViewBackgroundInRect:) func drawBackground(in: CGRect)

  /**
    - jsName: handleTextCheckingResults
    - name: handleTextCheckingResults:forRange:types:options:orthography:wordCount:
    - argLabels: _, forRange, types, options, orthography, wordCount
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc (handleTextCheckingResults:forRange:types:options:orthography:wordCount:) @available(OSX 10.6, *) func handleTextCheckingResults(_: [NSTextCheckingResult], forRange: NSRange, types: UInt64, options: [NSSpellChecker.OptionKey: Any], orthography: NSOrthography, wordCount: Int)

  /**
    - jsName: insertCompletion
    - name: insertCompletion:forPartialWordRange:movement:isFinal:
    - argLabels: forPartialWordRange, movement, isFinal
    - constructorTokens: 
  */
  @objc func insertCompletion(_: String, forPartialWordRange: NSRange, movement: Int, isFinal: Bool)

  /**
    - jsName: invalidateTextContainerOrigin
    - name: invalidateTextContainerOrigin
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateTextContainerOrigin()

  /**
    - jsName: loosenKerning
    - name: loosenKerning:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func loosenKerning(_: Any?)

  /**
    - jsName: lowerBaseline
    - name: lowerBaseline:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func lowerBaseline(_: Any?)

  /**
    - jsName: orderFrontLinkPanel
    - name: orderFrontLinkPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontLinkPanel(_: Any?)

  /**
    - jsName: orderFrontListPanel
    - name: orderFrontListPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontListPanel(_: Any?)

  /**
    - jsName: orderFrontSharingServicePicker
    - name: orderFrontSharingServicePicker:
    - argLabels: 
    - constructorTokens: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func orderFrontSharingServicePicker(_: Any?)

  /**
    - jsName: orderFrontSpacingPanel
    - name: orderFrontSpacingPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontSpacingPanel(_: Any?)

  /**
    - jsName: orderFrontSubstitutionsPanel
    - name: orderFrontSubstitutionsPanel:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func orderFrontSubstitutionsPanel(_: Any?)

  /**
    - jsName: orderFrontTablePanel
    - name: orderFrontTablePanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontTablePanel(_: Any?)

  /**
    - jsName: outline
    - name: outline:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func outline(_: Any?)

  /**
    - jsName: pasteAsPlainText
    - name: pasteAsPlainText:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pasteAsPlainText(_: Any?)

  /**
    - jsName: pasteAsRichText
    - name: pasteAsRichText:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pasteAsRichText(_: Any?)

  /**
    - jsName: performFindPanelAction
    - name: performFindPanelAction:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performFindPanelAction(_: Any?)

  /**
    - jsName: performValidatedReplacement
    - name: performValidatedReplacementInRange:withAttributedString:
    - argLabels: in, with
    - constructorTokens: 
    - available: 10.14
    - obsoleted: 3
    - renamed: performValidatedReplacement(in:with:)
    - Introduced: 10.14
  */
  @objc (performValidatedReplacementInRange:withAttributedString:) @available(OSX 10.14, *) func performValidatedReplacement(in: NSRange, with: NSAttributedString) -> Bool

  /**
    - jsName: preferredPasteboardType
    - name: preferredPasteboardTypeFromArray:restrictedToTypesFromArray:
    - argLabels: from, restrictedToTypesFrom
    - constructorTokens: 
    - obsoleted: 3
    - renamed: preferredPasteboardType(from:restrictedToTypesFrom:)
  */
  @objc (preferredPasteboardTypeFromArray:restrictedToTypesFromArray:) func preferredPasteboardType(from: [NSPasteboard.PasteboardType], restrictedToTypesFrom: [NSPasteboard.PasteboardType]?) -> NSPasteboard.PasteboardType?

  /**
    - jsName: quickLookPreviewableItemsInRanges
    - name: quickLookPreviewableItemsInRanges:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.7
  */
  // unavailableInSwift @objc @available(OSX 10.7, *) func quickLookPreviewableItemsInRanges(_: [NSValue]) -> [QLPreviewItem]

  /**
    - jsName: raiseBaseline
    - name: raiseBaseline:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func raiseBaseline(_: Any?)

  /**
    - jsName: readSelection
    - name: readSelectionFromPasteboard:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readSelection(from:)
  */
  @objc (readSelectionFromPasteboard:) func readSelection(from: NSPasteboard) -> Bool

  /**
    - jsName: readSelection
    - name: readSelectionFromPasteboard:type:
    - argLabels: from, type
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readSelection(from:type:)
  */
  @objc (readSelectionFromPasteboard:type:) func readSelection(from: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool

  /**
    - jsName: replaceTextContainer
    - name: replaceTextContainer:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func replaceTextContainer(_: NSTextContainer)

  /**
    - jsName: selectionRange
    - name: selectionRangeForProposedRange:granularity:
    - argLabels: forProposedRange, granularity
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectionRange(forProposedRange:granularity:)
  */
  @objc (selectionRangeForProposedRange:granularity:) func selectionRange(forProposedRange: NSRange, granularity: NSSelectionGranularity) -> NSRange

  /**
    - jsName: setAlignment
    - name: setAlignment:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func setAlignment(_: NSTextAlignment, range: NSRange)

  /**
    - jsName: setBaseWritingDirection
    - name: setBaseWritingDirection:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func setBaseWritingDirection(_: NSWritingDirection, range: NSRange)

  /**
    - jsName: setConstrainedFrameSize
    - name: setConstrainedFrameSize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setConstrainedFrameSize(_: CGSize)

  /**
    - jsName: setLayoutOrientation
    - name: setLayoutOrientation:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func setLayoutOrientation(_: NSLayoutManager.TextLayoutOrientation)

  /**
    - jsName: setNeedsDisplay
    - name: setNeedsDisplayInRect:avoidAdditionalLayout:
    - argLabels: _, avoidAdditionalLayout
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setNeedsDisplay(_:avoidAdditionalLayout:)
  */
  @objc (setNeedsDisplayInRect:avoidAdditionalLayout:) func setNeedsDisplay(_: CGRect, avoidAdditionalLayout: Bool)

  /**
    - jsName: setSelectedRange
    - name: setSelectedRange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setSelectedRange(_: NSRange)

  /**
    - jsName: setSelectedRange
    - name: setSelectedRange:affinity:stillSelecting:
    - argLabels: affinity, stillSelecting
    - constructorTokens: 
  */
  @objc func setSelectedRange(_: NSRange, affinity: NSSelectionAffinity, stillSelecting: Bool)

  /**
    - jsName: setSpellingState
    - name: setSpellingState:range:
    - argLabels: range
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setSpellingState(_: Int, range: NSRange)

  /**
    - jsName: shouldChangeText
    - name: shouldChangeTextInRange:replacementString:
    - argLabels: in, replacementString
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldChangeText(in:replacementString:)
  */
  @objc (shouldChangeTextInRange:replacementString:) func shouldChangeText(in: NSRange, replacementString: String?) -> Bool

  /**
    - jsName: shouldChangeText
    - name: shouldChangeTextInRanges:replacementStrings:
    - argLabels: inRanges, replacementStrings
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldChangeText(inRanges:replacementStrings:)
  */
  @objc (shouldChangeTextInRanges:replacementStrings:) func shouldChangeText(inRanges: [NSValue], replacementStrings: [String]?) -> Bool

  /**
    - jsName: showFindIndicator
    - name: showFindIndicatorForRange:
    - argLabels: for
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: showFindIndicator(for:)
    - Introduced: 10.5
  */
  @objc (showFindIndicatorForRange:) @available(OSX 10.5, *) func showFindIndicator(`for`: NSRange)

  /**
    - jsName: smartDeleteRange
    - name: smartDeleteRangeForProposedRange:
    - argLabels: forProposedRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: smartDeleteRange(forProposedRange:)
  */
  @objc (smartDeleteRangeForProposedRange:) func smartDeleteRange(forProposedRange: NSRange) -> NSRange

  /**
    - jsName: smartInsert
    - name: smartInsertAfterStringForString:replacingRange:
    - argLabels: afterStringFor, replacing
    - constructorTokens: 
    - obsoleted: 3
    - renamed: smartInsert(afterStringFor:replacing:)
  */
  @objc (smartInsertAfterStringForString:replacingRange:) func smartInsert(afterStringFor: String, replacing: NSRange) -> String?

  /**
    - jsName: smartInsert
    - name: smartInsertBeforeStringForString:replacingRange:
    - argLabels: beforeStringFor, replacing
    - constructorTokens: 
    - obsoleted: 3
    - renamed: smartInsert(beforeStringFor:replacing:)
  */
  @objc (smartInsertBeforeStringForString:replacingRange:) func smartInsert(beforeStringFor: String, replacing: NSRange) -> String?

  /**
    - jsName: smartInsert
    - name: smartInsertForString:replacingRange:beforeString:afterString:
    - argLabels: for, replacing, before, after
    - constructorTokens: 
    - obsoleted: 3
    - renamed: smartInsert(for:replacing:before:after:)
  */
  @objc (smartInsertForString:replacingRange:beforeString:afterString:) func smartInsert(`for`: String, replacing: NSRange, before: AutoreleasingUnsafeMutablePointer<NSString?>?, after: AutoreleasingUnsafeMutablePointer<NSString?>?)

  /**
    - jsName: startSpeaking
    - name: startSpeaking:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func startSpeaking(_: Any?)

  /**
    - jsName: stopSpeaking
    - name: stopSpeaking:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stopSpeaking(_: Any?)

  /**
    - jsName: tightenKerning
    - name: tightenKerning:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func tightenKerning(_: Any?)

  /**
    - jsName: toggleAutomaticDashSubstitution
    - name: toggleAutomaticDashSubstitution:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticDashSubstitution(_: Any?)

  /**
    - jsName: toggleAutomaticDataDetection
    - name: toggleAutomaticDataDetection:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticDataDetection(_: Any?)

  /**
    - jsName: toggleAutomaticLinkDetection
    - name: toggleAutomaticLinkDetection:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func toggleAutomaticLinkDetection(_: Any?)

  /**
    - jsName: toggleAutomaticQuoteSubstitution
    - name: toggleAutomaticQuoteSubstitution:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func toggleAutomaticQuoteSubstitution(_: Any?)

  /**
    - jsName: toggleAutomaticSpellingCorrection
    - name: toggleAutomaticSpellingCorrection:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticSpellingCorrection(_: Any?)

  /**
    - jsName: toggleAutomaticTextCompletion
    - name: toggleAutomaticTextCompletion:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func toggleAutomaticTextCompletion(_: Any?)

  /**
    - jsName: toggleAutomaticTextReplacement
    - name: toggleAutomaticTextReplacement:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticTextReplacement(_: Any?)

  /**
    - jsName: toggleContinuousSpellChecking
    - name: toggleContinuousSpellChecking:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func toggleContinuousSpellChecking(_: Any?)

  /**
    - jsName: toggleGrammarChecking
    - name: toggleGrammarChecking:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func toggleGrammarChecking(_: Any?)

  /**
    - jsName: toggleQuickLookPreviewPanel
    - name: toggleQuickLookPreviewPanel:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func toggleQuickLookPreviewPanel(_: Any?)

  /**
    - jsName: toggleSmartInsertDelete
    - name: toggleSmartInsertDelete:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func toggleSmartInsertDelete(_: Any?)

  /**
    - jsName: turnOffKerning
    - name: turnOffKerning:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func turnOffKerning(_: Any?)

  /**
    - jsName: turnOffLigatures
    - name: turnOffLigatures:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func turnOffLigatures(_: Any?)

  /**
    - jsName: updateCandidates
    - name: updateCandidates
    - argLabels: 
    - constructorTokens: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func updateCandidates()

  /**
    - jsName: updateDragTypeRegistration
    - name: updateDragTypeRegistration
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateDragTypeRegistration()

  /**
    - jsName: updateFontPanel
    - name: updateFontPanel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateFontPanel()

  /**
    - jsName: updateInsertionPointStateAndRestartTimer
    - name: updateInsertionPointStateAndRestartTimer:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateInsertionPointStateAndRestartTimer(_: Bool)

  /**
    - jsName: updateQuickLookPreviewPanel
    - name: updateQuickLookPreviewPanel
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateQuickLookPreviewPanel()

  /**
    - jsName: updateRuler
    - name: updateRuler
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateRuler()

  /**
    - jsName: updateTextTouchBarItems
    - name: updateTextTouchBarItems
    - argLabels: 
    - constructorTokens: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func updateTextTouchBarItems()

  /**
    - jsName: updateTouchBarItemIdentifiers
    - name: updateTouchBarItemIdentifiers
    - argLabels: 
    - constructorTokens: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func updateTouchBarItemIdentifiers()

  /**
    - jsName: useAllLigatures
    - name: useAllLigatures:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func useAllLigatures(_: Any?)

  /**
    - jsName: useStandardKerning
    - name: useStandardKerning:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func useStandardKerning(_: Any?)

  /**
    - jsName: useStandardLigatures
    - name: useStandardLigatures:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func useStandardLigatures(_: Any?)

  /**
    - jsName: writeSelection
    - name: writeSelectionToPasteboard:type:
    - argLabels: to, type
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writeSelection(to:type:)
  */
  @objc (writeSelectionToPasteboard:type:) func writeSelection(to: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool

  /**
    - jsName: writeSelection
    - name: writeSelectionToPasteboard:types:
    - argLabels: to, types
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writeSelection(to:types:)
  */
  @objc (writeSelectionToPasteboard:types:) func writeSelection(to: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> Bool

  // Own Instance Properties

  /**
    - jsName: acceptableDragTypes
    - name: acceptableDragTypes
    - argLabels: 
  */
  @objc var acceptableDragTypes: [NSPasteboard.PasteboardType] { @objc get }

  /**
    - jsName: acceptsGlyphInfo
    - name: acceptsGlyphInfo
    - argLabels: 
  */
  @objc var acceptsGlyphInfo: Bool { @objc get @objc (setAcceptsGlyphInfo:) set }

  /**
    - jsName: allowedInputSourceLocales
    - name: allowedInputSourceLocales
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowedInputSourceLocales: [String]? { @objc get @objc (setAllowedInputSourceLocales:) set }

  /**
    - jsName: allowsCharacterPickerTouchBarItem
    - name: allowsCharacterPickerTouchBarItem
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowsCharacterPickerTouchBarItem: Bool { @objc get @objc (setAllowsCharacterPickerTouchBarItem:) set }

  /**
    - jsName: allowsDocumentBackgroundColorChange
    - name: allowsDocumentBackgroundColorChange
    - argLabels: 
  */
  @objc var allowsDocumentBackgroundColorChange: Bool { @objc get @objc (setAllowsDocumentBackgroundColorChange:) set }

  /**
    - jsName: allowsImageEditing
    - name: allowsImageEditing
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowsImageEditing: Bool { @objc get @objc (setAllowsImageEditing:) set }

  /**
    - jsName: allowsUndo
    - name: allowsUndo
    - argLabels: 
  */
  @objc var allowsUndo: Bool { @objc get @objc (setAllowsUndo:) set }

  /**
    - jsName: isAutomaticDashSubstitutionEnabled
    - name: automaticDashSubstitutionEnabled
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isAutomaticDashSubstitutionEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticDashSubstitutionEnabled: Bool { @objc get @objc (setAutomaticDashSubstitutionEnabled:) set }

  /**
    - jsName: isAutomaticDataDetectionEnabled
    - name: automaticDataDetectionEnabled
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isAutomaticDataDetectionEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticDataDetectionEnabled: Bool { @objc get @objc (setAutomaticDataDetectionEnabled:) set }

  /**
    - jsName: isAutomaticLinkDetectionEnabled
    - name: automaticLinkDetectionEnabled
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isAutomaticLinkDetectionEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isAutomaticLinkDetectionEnabled: Bool { @objc get @objc (setAutomaticLinkDetectionEnabled:) set }

  /**
    - jsName: isAutomaticQuoteSubstitutionEnabled
    - name: automaticQuoteSubstitutionEnabled
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isAutomaticQuoteSubstitutionEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isAutomaticQuoteSubstitutionEnabled: Bool { @objc get @objc (setAutomaticQuoteSubstitutionEnabled:) set }

  /**
    - jsName: isAutomaticSpellingCorrectionEnabled
    - name: automaticSpellingCorrectionEnabled
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isAutomaticSpellingCorrectionEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticSpellingCorrectionEnabled: Bool { @objc get @objc (setAutomaticSpellingCorrectionEnabled:) set }

  /**
    - jsName: isAutomaticTextCompletionEnabled
    - name: automaticTextCompletionEnabled
    - argLabels: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: isAutomaticTextCompletionEnabled
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var isAutomaticTextCompletionEnabled: Bool { @objc get @objc (setAutomaticTextCompletionEnabled:) set }

  /**
    - jsName: isAutomaticTextReplacementEnabled
    - name: automaticTextReplacementEnabled
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isAutomaticTextReplacementEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticTextReplacementEnabled: Bool { @objc get @objc (setAutomaticTextReplacementEnabled:) set }

  /**
    - jsName: isCoalescingUndo
    - name: coalescingUndo
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isCoalescingUndo
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isCoalescingUndo: Bool { @objc get }

  /**
    - jsName: isContinuousSpellCheckingEnabled
    - name: continuousSpellCheckingEnabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isContinuousSpellCheckingEnabled
  */
  @objc var isContinuousSpellCheckingEnabled: Bool { @objc get @objc (setContinuousSpellCheckingEnabled:) set }

  /**
    - jsName: defaultParagraphStyle
    - name: defaultParagraphStyle
    - argLabels: 
  */
  @objc var defaultParagraphStyle: NSParagraphStyle? { @objc get @objc (setDefaultParagraphStyle:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTextViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: displaysLinkToolTips
    - name: displaysLinkToolTips
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var displaysLinkToolTips: Bool { @objc get @objc (setDisplaysLinkToolTips:) set }

  /**
    - jsName: enabledTextCheckingTypes
    - name: enabledTextCheckingTypes
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var enabledTextCheckingTypes: UInt64 { @objc get @objc (setEnabledTextCheckingTypes:) set }

  /**
    - jsName: isGrammarCheckingEnabled
    - name: grammarCheckingEnabled
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isGrammarCheckingEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isGrammarCheckingEnabled: Bool { @objc get @objc (setGrammarCheckingEnabled:) set }

  /**
    - jsName: isIncrementalSearchingEnabled
    - name: incrementalSearchingEnabled
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isIncrementalSearchingEnabled
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isIncrementalSearchingEnabled: Bool { @objc get @objc (setIncrementalSearchingEnabled:) set }

  /**
    - jsName: insertionPointColor
    - name: insertionPointColor
    - argLabels: 
  */
  @objc var insertionPointColor: NSColor { @objc get @objc (setInsertionPointColor:) set }

  /**
    - jsName: layoutManager
    - name: layoutManager
    - argLabels: 
  */
  @objc var layoutManager: NSLayoutManager? { @objc get }

  /**
    - jsName: linkTextAttributes
    - name: linkTextAttributes
    - argLabels: 
  */
  @objc var linkTextAttributes: [NSAttributedString.Key: Any]? { @objc get @objc (setLinkTextAttributes:) set }

  /**
    - jsName: markedTextAttributes
    - name: markedTextAttributes
    - argLabels: 
  */
  @objc var markedTextAttributes: [NSAttributedString.Key: Any]? { @objc get @objc (setMarkedTextAttributes:) set }

  /**
    - jsName: rangeForUserCharacterAttributeChange
    - name: rangeForUserCharacterAttributeChange
    - argLabels: 
  */
  @objc var rangeForUserCharacterAttributeChange: NSRange { @objc get }

  /**
    - jsName: rangeForUserCompletion
    - name: rangeForUserCompletion
    - argLabels: 
  */
  @objc var rangeForUserCompletion: NSRange { @objc get }

  /**
    - jsName: rangeForUserParagraphAttributeChange
    - name: rangeForUserParagraphAttributeChange
    - argLabels: 
  */
  @objc var rangeForUserParagraphAttributeChange: NSRange { @objc get }

  /**
    - jsName: rangeForUserTextChange
    - name: rangeForUserTextChange
    - argLabels: 
  */
  @objc var rangeForUserTextChange: NSRange { @objc get }

  /**
    - jsName: rangesForUserCharacterAttributeChange
    - name: rangesForUserCharacterAttributeChange
    - argLabels: 
  */
  @objc var rangesForUserCharacterAttributeChange: [NSValue]? { @objc get }

  /**
    - jsName: rangesForUserParagraphAttributeChange
    - name: rangesForUserParagraphAttributeChange
    - argLabels: 
  */
  @objc var rangesForUserParagraphAttributeChange: [NSValue]? { @objc get }

  /**
    - jsName: rangesForUserTextChange
    - name: rangesForUserTextChange
    - argLabels: 
  */
  @objc var rangesForUserTextChange: [NSValue]? { @objc get }

  /**
    - jsName: readablePasteboardTypes
    - name: readablePasteboardTypes
    - argLabels: 
  */
  @objc var readablePasteboardTypes: [NSPasteboard.PasteboardType] { @objc get }

  /**
    - jsName: isRulerVisible
    - name: rulerVisible
    - argLabels: 
    - obsoleted: 3
    - renamed: isRulerVisible
  */
  @objc var isRulerVisible: Bool { @objc get @objc (setRulerVisible:) set }

  /**
    - jsName: selectedRanges
    - name: selectedRanges
    - argLabels: 
  */
  @objc var selectedRanges: [NSValue] { @objc get @objc (setSelectedRanges:) set }

  /**
    - jsName: selectedTextAttributes
    - name: selectedTextAttributes
    - argLabels: 
  */
  @objc var selectedTextAttributes: [NSAttributedString.Key: Any] { @objc get @objc (setSelectedTextAttributes:) set }

  /**
    - jsName: selectionAffinity
    - name: selectionAffinity
    - argLabels: 
  */
  @objc var selectionAffinity: NSSelectionAffinity { @objc get }

  /**
    - jsName: selectionGranularity
    - name: selectionGranularity
    - argLabels: 
  */
  @objc var selectionGranularity: NSSelectionGranularity { @objc get @objc (setSelectionGranularity:) set }

  /**
    - jsName: shouldDrawInsertionPoint
    - name: shouldDrawInsertionPoint
    - argLabels: 
  */
  @objc var shouldDrawInsertionPoint: Bool { @objc get }

  /**
    - jsName: smartInsertDeleteEnabled
    - name: smartInsertDeleteEnabled
    - argLabels: 
  */
  @objc var smartInsertDeleteEnabled: Bool { @objc get @objc (setSmartInsertDeleteEnabled:) set }

  /**
    - jsName: spellCheckerDocumentTag
    - name: spellCheckerDocumentTag
    - argLabels: 
  */
  @objc var spellCheckerDocumentTag: Int { @objc get }

  /**
    - jsName: textContainer
    - name: textContainer
    - argLabels: 
  */
  @objc var textContainer: NSTextContainer? { @objc get @objc (setTextContainer:) set }

  /**
    - jsName: textContainerInset
    - name: textContainerInset
    - argLabels: 
  */
  @objc var textContainerInset: CGSize { @objc get @objc (setTextContainerInset:) set }

  /**
    - jsName: textContainerOrigin
    - name: textContainerOrigin
    - argLabels: 
  */
  @objc var textContainerOrigin: CGPoint { @objc get }

  /**
    - jsName: textStorage
    - name: textStorage
    - argLabels: 
  */
  @objc var textStorage: NSTextStorage? { @objc get }

  /**
    - jsName: typingAttributes
    - name: typingAttributes
    - argLabels: 
  */
  @objc var typingAttributes: [NSAttributedString.Key: Any] { @objc get @objc (setTypingAttributes:) set }

  /**
    - jsName: usesAdaptiveColorMappingForDarkAppearance
    - name: usesAdaptiveColorMappingForDarkAppearance
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var usesAdaptiveColorMappingForDarkAppearance: Bool { @objc get @objc (setUsesAdaptiveColorMappingForDarkAppearance:) set }

  /**
    - jsName: usesFindBar
    - name: usesFindBar
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var usesFindBar: Bool { @objc get @objc (setUsesFindBar:) set }

  /**
    - jsName: usesFindPanel
    - name: usesFindPanel
    - argLabels: 
  */
  @objc var usesFindPanel: Bool { @objc get @objc (setUsesFindPanel:) set }

  /**
    - jsName: usesInspectorBar
    - name: usesInspectorBar
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var usesInspectorBar: Bool { @objc get @objc (setUsesInspectorBar:) set }

  /**
    - jsName: usesRolloverButtonForSelection
    - name: usesRolloverButtonForSelection
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var usesRolloverButtonForSelection: Bool { @objc get @objc (setUsesRolloverButtonForSelection:) set }

  /**
    - jsName: usesRuler
    - name: usesRuler
    - argLabels: 
  */
  @objc var usesRuler: Bool { @objc get @objc (setUsesRuler:) set }

  /**
    - jsName: writablePasteboardTypes
    - name: writablePasteboardTypes
    - argLabels: 
  */
  @objc var writablePasteboardTypes: [NSPasteboard.PasteboardType] { @objc get }
}

@objc protocol TextViewExports: JSExport, NSTextExports {
  // Static Methods

  /**
    - jsName: fieldEditor
    - name: fieldEditor
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func fieldEditor() -> Self
}

@objc(TextView) public class TextView: NSTextView, TextViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTextView: NSTextViewExports {
}
