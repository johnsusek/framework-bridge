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
    - Selector: NSTextView
  */

@objc(NSTextView) protocol NSTextViewExports: JSExport, NSTextExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: registerForServices
  */
  @objc static func registerForServices()

  /**
    - Selector: scrollableDocumentContentTextView
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func scrollableDocumentContentTextView() -> NSScrollView

  /**
    - Selector: scrollablePlainDocumentContentTextView
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func scrollablePlainDocumentContentTextView() -> NSScrollView

  /**
    - Selector: scrollableTextView
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func scrollableTextView() -> NSScrollView

  // Own Static Properties

  /**
    - Selector: stronglyReferencesTextStorage
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var stronglyReferencesTextStorage: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: alignJustified:
  */
  @objc func alignJustified(_ p0: Any?)

  /**
    - Selector: breakUndoCoalescing
  */
  @objc func breakUndoCoalescing()

  /**
    - Selector: changeAttributes:
  */
  @objc func changeAttributes(_ p0: Any?)

  /**
    - Selector: changeDocumentBackgroundColor:
  */
  @objc func changeDocumentBackgroundColor(_ p0: Any?)

  /**
    - Selector: changeLayoutOrientation:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func changeLayoutOrientation(_ p0: Any?)

  /**
    - Selector: characterIndexForInsertionAtPoint:
    - Introduced: 10.5
  */
  @objc (characterIndexForInsertionAtPoint:) @available(OSX 10.5, *) func characterIndexForInsertion(at: CGPoint) -> Int

  /**
    - Selector: checkTextInDocument:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func checkTextInDocument(_ p0: Any?)

  /**
    - Selector: checkTextInRange:types:options:
    - Introduced: 10.6
  */
  @objc (checkTextInRange:types:options:) @available(OSX 10.6, *) func checkText(in: NSRange, types: UInt64, options: [NSSpellChecker.OptionKey: Any])

  /**
    - Selector: checkTextInSelection:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func checkTextInSelection(_ p0: Any?)

  /**
    - Selector: cleanUpAfterDragOperation
  */
  @objc func cleanUpAfterDragOperation()

  /**
    - Selector: clickedOnLink:atIndex:
  */
  @objc (clickedOnLink:atIndex:) func clicked(onLink: Any, at: Int)

  /**
    - Selector: completionsForPartialWordRange:indexOfSelectedItem:
  */
  @objc (completionsForPartialWordRange:indexOfSelectedItem:) func completions(forPartialWordRange: NSRange, indexOfSelectedItem: UnsafeMutablePointer<NSInteger>) -> [String]?

  /**
    - Selector: didChangeText
  */
  @objc func didChangeText()

  /**
    - Selector: dragImageForSelectionWithEvent:origin:
  */
  @objc (dragImageForSelectionWithEvent:origin:) func dragImageForSelection(with: NSEvent, origin: NSPointPointer?) -> NSImage?

  /**
    - Selector: dragOperationForDraggingInfo:type:
  */
  @objc (dragOperationForDraggingInfo:type:) func dragOperation(`for`: NSDraggingInfo, type: NSPasteboard.PasteboardType) -> NSDragOperation

  /**
    - Selector: dragSelectionWithEvent:offset:slideBack:
  */
  @objc (dragSelectionWithEvent:offset:slideBack:) func dragSelection(with: NSEvent, offset: CGSize, slideBack: Bool) -> Bool

  /**
    - Selector: drawInsertionPointInRect:color:turnedOn:
  */
  @objc (drawInsertionPointInRect:color:turnedOn:) func drawInsertionPoint(in: CGRect, color: NSColor, turnedOn: Bool)

  /**
    - Selector: drawViewBackgroundInRect:
  */
  @objc (drawViewBackgroundInRect:) func drawBackground(in: CGRect)

  /**
    - Selector: handleTextCheckingResults:forRange:types:options:orthography:wordCount:
    - Introduced: 10.6
  */
  @objc (handleTextCheckingResults:forRange:types:options:orthography:wordCount:) @available(OSX 10.6, *) func handleTextCheckingResults(_ p0: [NSTextCheckingResult], forRange: NSRange, types: UInt64, options: [NSSpellChecker.OptionKey: Any], orthography: NSOrthography, wordCount: Int)

  /**
    - Selector: insertCompletion:forPartialWordRange:movement:isFinal:
  */
  @objc func insertCompletion(_ p0: String, forPartialWordRange: NSRange, movement: Int, isFinal: Bool)

  /**
    - Selector: invalidateTextContainerOrigin
  */
  @objc func invalidateTextContainerOrigin()

  /**
    - Selector: loosenKerning:
  */
  @objc func loosenKerning(_ p0: Any?)

  /**
    - Selector: lowerBaseline:
  */
  @objc func lowerBaseline(_ p0: Any?)

  /**
    - Selector: orderFrontLinkPanel:
  */
  @objc func orderFrontLinkPanel(_ p0: Any?)

  /**
    - Selector: orderFrontListPanel:
  */
  @objc func orderFrontListPanel(_ p0: Any?)

  /**
    - Selector: orderFrontSharingServicePicker:
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func orderFrontSharingServicePicker(_ p0: Any?)

  /**
    - Selector: orderFrontSpacingPanel:
  */
  @objc func orderFrontSpacingPanel(_ p0: Any?)

  /**
    - Selector: orderFrontSubstitutionsPanel:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func orderFrontSubstitutionsPanel(_ p0: Any?)

  /**
    - Selector: orderFrontTablePanel:
  */
  @objc func orderFrontTablePanel(_ p0: Any?)

  /**
    - Selector: outline:
  */
  @objc func outline(_ p0: Any?)

  /**
    - Selector: pasteAsPlainText:
  */
  @objc func pasteAsPlainText(_ p0: Any?)

  /**
    - Selector: pasteAsRichText:
  */
  @objc func pasteAsRichText(_ p0: Any?)

  /**
    - Selector: performFindPanelAction:
  */
  @objc func performFindPanelAction(_ p0: Any?)

  /**
    - Selector: performValidatedReplacementInRange:withAttributedString:
    - Introduced: 10.14
  */
  @objc (performValidatedReplacementInRange:withAttributedString:) @available(OSX 10.14, *) func performValidatedReplacement(in: NSRange, with: NSAttributedString) -> Bool

  /**
    - Selector: preferredPasteboardTypeFromArray:restrictedToTypesFromArray:
  */
  @objc (preferredPasteboardTypeFromArray:restrictedToTypesFromArray:) func preferredPasteboardType(from: [NSPasteboard.PasteboardType], restrictedToTypesFrom: [NSPasteboard.PasteboardType]?) -> NSPasteboard.PasteboardType?

  /**
    - Selector: quickLookPreviewableItemsInRanges:
    - Introduced: 10.7
  */
  // unavailableInSwift @objc @available(OSX 10.7, *) func quickLookPreviewableItemsInRanges(_ p0: [NSValue]) -> [QLPreviewItem]

  /**
    - Selector: raiseBaseline:
  */
  @objc func raiseBaseline(_ p0: Any?)

  /**
    - Selector: readSelectionFromPasteboard:
  */
  @objc (readSelectionFromPasteboard:) func readSelection(from: NSPasteboard) -> Bool

  /**
    - Selector: readSelectionFromPasteboard:type:
  */
  @objc (readSelectionFromPasteboard:type:) func readSelection(from: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool

  /**
    - Selector: replaceTextContainer:
  */
  @objc func replaceTextContainer(_ p0: NSTextContainer)

  /**
    - Selector: selectionRangeForProposedRange:granularity:
  */
  @objc (selectionRangeForProposedRange:granularity:) func selectionRange(forProposedRange: NSRange, granularity: NSSelectionGranularity) -> NSRange

  /**
    - Selector: setAlignment:range:
  */
  @objc func setAlignment(_ p0: NSTextAlignment, range: NSRange)

  /**
    - Selector: setBaseWritingDirection:range:
  */
  @objc func setBaseWritingDirection(_ p0: NSWritingDirection, range: NSRange)

  /**
    - Selector: setConstrainedFrameSize:
  */
  @objc func setConstrainedFrameSize(_ p0: CGSize)

  /**
    - Selector: setLayoutOrientation:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func setLayoutOrientation(_ p0: NSLayoutManager.TextLayoutOrientation)

  /**
    - Selector: setNeedsDisplayInRect:avoidAdditionalLayout:
  */
  @objc (setNeedsDisplayInRect:avoidAdditionalLayout:) func setNeedsDisplay(_ p0: CGRect, avoidAdditionalLayout: Bool)

  /**
    - Selector: setSelectedRange:
  */
  @objc func setSelectedRange(_ p0: NSRange)

  /**
    - Selector: setSelectedRange:affinity:stillSelecting:
  */
  @objc func setSelectedRange(_ p0: NSRange, affinity: NSSelectionAffinity, stillSelecting: Bool)

  /**
    - Selector: setSpellingState:range:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setSpellingState(_ p0: Int, range: NSRange)

  /**
    - Selector: shouldChangeTextInRange:replacementString:
  */
  @objc (shouldChangeTextInRange:replacementString:) func shouldChangeText(in: NSRange, replacementString: String?) -> Bool

  /**
    - Selector: shouldChangeTextInRanges:replacementStrings:
  */
  @objc (shouldChangeTextInRanges:replacementStrings:) func shouldChangeText(inRanges: [NSValue], replacementStrings: [String]?) -> Bool

  /**
    - Selector: showFindIndicatorForRange:
    - Introduced: 10.5
  */
  @objc (showFindIndicatorForRange:) @available(OSX 10.5, *) func showFindIndicator(`for`: NSRange)

  /**
    - Selector: smartDeleteRangeForProposedRange:
  */
  @objc (smartDeleteRangeForProposedRange:) func smartDeleteRange(forProposedRange: NSRange) -> NSRange

  /**
    - Selector: smartInsertAfterStringForString:replacingRange:
  */
  @objc (smartInsertAfterStringForString:replacingRange:) func smartInsert(afterStringFor: String, replacing: NSRange) -> String?

  /**
    - Selector: smartInsertBeforeStringForString:replacingRange:
  */
  @objc (smartInsertBeforeStringForString:replacingRange:) func smartInsert(beforeStringFor: String, replacing: NSRange) -> String?

  /**
    - Selector: smartInsertForString:replacingRange:beforeString:afterString:
  */
  @objc (smartInsertForString:replacingRange:beforeString:afterString:) func smartInsert(`for`: String, replacing: NSRange, before: AutoreleasingUnsafeMutablePointer<NSString?>?, after: AutoreleasingUnsafeMutablePointer<NSString?>?)

  /**
    - Selector: startSpeaking:
  */
  @objc func startSpeaking(_ p0: Any?)

  /**
    - Selector: stopSpeaking:
  */
  @objc func stopSpeaking(_ p0: Any?)

  /**
    - Selector: tightenKerning:
  */
  @objc func tightenKerning(_ p0: Any?)

  /**
    - Selector: toggleAutomaticDashSubstitution:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticDashSubstitution(_ p0: Any?)

  /**
    - Selector: toggleAutomaticDataDetection:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticDataDetection(_ p0: Any?)

  /**
    - Selector: toggleAutomaticLinkDetection:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func toggleAutomaticLinkDetection(_ p0: Any?)

  /**
    - Selector: toggleAutomaticQuoteSubstitution:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func toggleAutomaticQuoteSubstitution(_ p0: Any?)

  /**
    - Selector: toggleAutomaticSpellingCorrection:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticSpellingCorrection(_ p0: Any?)

  /**
    - Selector: toggleAutomaticTextCompletion:
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func toggleAutomaticTextCompletion(_ p0: Any?)

  /**
    - Selector: toggleAutomaticTextReplacement:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func toggleAutomaticTextReplacement(_ p0: Any?)

  /**
    - Selector: toggleContinuousSpellChecking:
  */
  @objc func toggleContinuousSpellChecking(_ p0: Any?)

  /**
    - Selector: toggleGrammarChecking:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func toggleGrammarChecking(_ p0: Any?)

  /**
    - Selector: toggleQuickLookPreviewPanel:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func toggleQuickLookPreviewPanel(_ p0: Any?)

  /**
    - Selector: toggleSmartInsertDelete:
  */
  @objc func toggleSmartInsertDelete(_ p0: Any?)

  /**
    - Selector: turnOffKerning:
  */
  @objc func turnOffKerning(_ p0: Any?)

  /**
    - Selector: turnOffLigatures:
  */
  @objc func turnOffLigatures(_ p0: Any?)

  /**
    - Selector: updateCandidates
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func updateCandidates()

  /**
    - Selector: updateDragTypeRegistration
  */
  @objc func updateDragTypeRegistration()

  /**
    - Selector: updateFontPanel
  */
  @objc func updateFontPanel()

  /**
    - Selector: updateInsertionPointStateAndRestartTimer:
  */
  @objc func updateInsertionPointStateAndRestartTimer(_ p0: Bool)

  /**
    - Selector: updateQuickLookPreviewPanel
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateQuickLookPreviewPanel()

  /**
    - Selector: updateRuler
  */
  @objc func updateRuler()

  /**
    - Selector: updateTextTouchBarItems
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func updateTextTouchBarItems()

  /**
    - Selector: updateTouchBarItemIdentifiers
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func updateTouchBarItemIdentifiers()

  /**
    - Selector: useAllLigatures:
  */
  @objc func useAllLigatures(_ p0: Any?)

  /**
    - Selector: useStandardKerning:
  */
  @objc func useStandardKerning(_ p0: Any?)

  /**
    - Selector: useStandardLigatures:
  */
  @objc func useStandardLigatures(_ p0: Any?)

  /**
    - Selector: writeSelectionToPasteboard:type:
  */
  @objc (writeSelectionToPasteboard:type:) func writeSelection(to: NSPasteboard, type: NSPasteboard.PasteboardType) -> Bool

  /**
    - Selector: writeSelectionToPasteboard:types:
  */
  @objc (writeSelectionToPasteboard:types:) func writeSelection(to: NSPasteboard, types: [NSPasteboard.PasteboardType]) -> Bool

  // Own Instance Properties

  /**
    - Selector: acceptableDragTypes
  */
  @objc var acceptableDragTypes: [NSPasteboard.PasteboardType] { @objc get }

  /**
    - Selector: acceptsGlyphInfo
  */
  @objc var acceptsGlyphInfo: Bool { @objc get @objc (setAcceptsGlyphInfo:) set }

  /**
    - Selector: allowedInputSourceLocales
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowedInputSourceLocales: [String]? { @objc get @objc (setAllowedInputSourceLocales:) set }

  /**
    - Selector: allowsCharacterPickerTouchBarItem
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowsCharacterPickerTouchBarItem: Bool { @objc get @objc (setAllowsCharacterPickerTouchBarItem:) set }

  /**
    - Selector: allowsDocumentBackgroundColorChange
  */
  @objc var allowsDocumentBackgroundColorChange: Bool { @objc get @objc (setAllowsDocumentBackgroundColorChange:) set }

  /**
    - Selector: allowsImageEditing
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowsImageEditing: Bool { @objc get @objc (setAllowsImageEditing:) set }

  /**
    - Selector: allowsUndo
  */
  @objc var allowsUndo: Bool { @objc get @objc (setAllowsUndo:) set }

  /**
    - Selector: automaticDashSubstitutionEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticDashSubstitutionEnabled: Bool { @objc get @objc (setAutomaticDashSubstitutionEnabled:) set }

  /**
    - Selector: automaticDataDetectionEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticDataDetectionEnabled: Bool { @objc get @objc (setAutomaticDataDetectionEnabled:) set }

  /**
    - Selector: automaticLinkDetectionEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isAutomaticLinkDetectionEnabled: Bool { @objc get @objc (setAutomaticLinkDetectionEnabled:) set }

  /**
    - Selector: automaticQuoteSubstitutionEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isAutomaticQuoteSubstitutionEnabled: Bool { @objc get @objc (setAutomaticQuoteSubstitutionEnabled:) set }

  /**
    - Selector: automaticSpellingCorrectionEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticSpellingCorrectionEnabled: Bool { @objc get @objc (setAutomaticSpellingCorrectionEnabled:) set }

  /**
    - Selector: automaticTextCompletionEnabled
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var isAutomaticTextCompletionEnabled: Bool { @objc get @objc (setAutomaticTextCompletionEnabled:) set }

  /**
    - Selector: automaticTextReplacementEnabled
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isAutomaticTextReplacementEnabled: Bool { @objc get @objc (setAutomaticTextReplacementEnabled:) set }

  /**
    - Selector: coalescingUndo
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isCoalescingUndo: Bool { @objc get }

  /**
    - Selector: continuousSpellCheckingEnabled
  */
  @objc var isContinuousSpellCheckingEnabled: Bool { @objc get @objc (setContinuousSpellCheckingEnabled:) set }

  /**
    - Selector: defaultParagraphStyle
  */
  @objc var defaultParagraphStyle: NSParagraphStyle? { @objc get @objc (setDefaultParagraphStyle:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTextViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displaysLinkToolTips
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var displaysLinkToolTips: Bool { @objc get @objc (setDisplaysLinkToolTips:) set }

  /**
    - Selector: enabledTextCheckingTypes
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var enabledTextCheckingTypes: UInt64 { @objc get @objc (setEnabledTextCheckingTypes:) set }

  /**
    - Selector: grammarCheckingEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isGrammarCheckingEnabled: Bool { @objc get @objc (setGrammarCheckingEnabled:) set }

  /**
    - Selector: incrementalSearchingEnabled
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isIncrementalSearchingEnabled: Bool { @objc get @objc (setIncrementalSearchingEnabled:) set }

  /**
    - Selector: insertionPointColor
  */
  @objc var insertionPointColor: NSColor { @objc get @objc (setInsertionPointColor:) set }

  /**
    - Selector: layoutManager
  */
  @objc var layoutManager: NSLayoutManager? { @objc get }

  /**
    - Selector: linkTextAttributes
  */
  @objc var linkTextAttributes: [NSAttributedString.Key: Any]? { @objc get @objc (setLinkTextAttributes:) set }

  /**
    - Selector: markedTextAttributes
  */
  @objc var markedTextAttributes: [NSAttributedString.Key: Any]? { @objc get @objc (setMarkedTextAttributes:) set }

  /**
    - Selector: rangeForUserCharacterAttributeChange
  */
  @objc var rangeForUserCharacterAttributeChange: NSRange { @objc get }

  /**
    - Selector: rangeForUserCompletion
  */
  @objc var rangeForUserCompletion: NSRange { @objc get }

  /**
    - Selector: rangeForUserParagraphAttributeChange
  */
  @objc var rangeForUserParagraphAttributeChange: NSRange { @objc get }

  /**
    - Selector: rangeForUserTextChange
  */
  @objc var rangeForUserTextChange: NSRange { @objc get }

  /**
    - Selector: rangesForUserCharacterAttributeChange
  */
  @objc var rangesForUserCharacterAttributeChange: [NSValue]? { @objc get }

  /**
    - Selector: rangesForUserParagraphAttributeChange
  */
  @objc var rangesForUserParagraphAttributeChange: [NSValue]? { @objc get }

  /**
    - Selector: rangesForUserTextChange
  */
  @objc var rangesForUserTextChange: [NSValue]? { @objc get }

  /**
    - Selector: readablePasteboardTypes
  */
  @objc var readablePasteboardTypes: [NSPasteboard.PasteboardType] { @objc get }

  /**
    - Selector: rulerVisible
  */
  @objc var isRulerVisible: Bool { @objc get @objc (setRulerVisible:) set }

  /**
    - Selector: selectedRanges
  */
  @objc var selectedRanges: [NSValue] { @objc get @objc (setSelectedRanges:) set }

  /**
    - Selector: selectedTextAttributes
  */
  @objc var selectedTextAttributes: [NSAttributedString.Key: Any] { @objc get @objc (setSelectedTextAttributes:) set }

  /**
    - Selector: selectionAffinity
  */
  @objc var selectionAffinity: NSSelectionAffinity { @objc get }

  /**
    - Selector: selectionGranularity
  */
  @objc var selectionGranularity: NSSelectionGranularity { @objc get @objc (setSelectionGranularity:) set }

  /**
    - Selector: shouldDrawInsertionPoint
  */
  @objc var shouldDrawInsertionPoint: Bool { @objc get }

  /**
    - Selector: smartInsertDeleteEnabled
  */
  @objc var smartInsertDeleteEnabled: Bool { @objc get @objc (setSmartInsertDeleteEnabled:) set }

  /**
    - Selector: spellCheckerDocumentTag
  */
  @objc var spellCheckerDocumentTag: Int { @objc get }

  /**
    - Selector: textContainer
  */
  @objc var textContainer: NSTextContainer? { @objc get @objc (setTextContainer:) set }

  /**
    - Selector: textContainerInset
  */
  @objc var textContainerInset: CGSize { @objc get @objc (setTextContainerInset:) set }

  /**
    - Selector: textContainerOrigin
  */
  @objc var textContainerOrigin: CGPoint { @objc get }

  /**
    - Selector: textStorage
  */
  @objc var textStorage: NSTextStorage? { @objc get }

  /**
    - Selector: typingAttributes
  */
  @objc var typingAttributes: [NSAttributedString.Key: Any] { @objc get @objc (setTypingAttributes:) set }

  /**
    - Selector: usesAdaptiveColorMappingForDarkAppearance
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var usesAdaptiveColorMappingForDarkAppearance: Bool { @objc get @objc (setUsesAdaptiveColorMappingForDarkAppearance:) set }

  /**
    - Selector: usesFindBar
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var usesFindBar: Bool { @objc get @objc (setUsesFindBar:) set }

  /**
    - Selector: usesFindPanel
  */
  @objc var usesFindPanel: Bool { @objc get @objc (setUsesFindPanel:) set }

  /**
    - Selector: usesInspectorBar
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var usesInspectorBar: Bool { @objc get @objc (setUsesInspectorBar:) set }

  /**
    - Selector: usesRolloverButtonForSelection
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var usesRolloverButtonForSelection: Bool { @objc get @objc (setUsesRolloverButtonForSelection:) set }

  /**
    - Selector: usesRuler
  */
  @objc var usesRuler: Bool { @objc get @objc (setUsesRuler:) set }

  /**
    - Selector: writablePasteboardTypes
  */
  @objc var writablePasteboardTypes: [NSPasteboard.PasteboardType] { @objc get }
}

extension NSTextView: NSTextViewExports {
}
