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
    - Selector: NSLayoutManager
    - Introduced: 10.7
  */

@objc(NSLayoutManager) protocol NSLayoutManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: CGGlyphAtIndex:
    - Introduced: 10.11
  */
  @objc (CGGlyphAtIndex:) @available(OSX 10.11, *) func cgGlyph(at: Int) -> CGGlyph

  /**
    - Selector: CGGlyphAtIndex:isValidIndex:
    - Introduced: 10.11
  */
  @objc (CGGlyphAtIndex:isValidIndex:) @available(OSX 10.11, *) func cgGlyph(at: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph

  /**
    - Selector: addTemporaryAttribute:value:forCharacterRange:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addTemporaryAttribute(_ p0: NSAttributedString.Key, value: Any, forCharacterRange: NSRange)

  /**
    - Selector: addTemporaryAttributes:forCharacterRange:
  */
  @objc func addTemporaryAttributes(_ p0: [NSAttributedString.Key: Any], forCharacterRange: NSRange)

  /**
    - Selector: addTextContainer:
  */
  @objc func addTextContainer(_ p0: NSTextContainer)

  /**
    - Selector: attachmentSizeForGlyphAtIndex:
  */
  @objc (attachmentSizeForGlyphAtIndex:) func attachmentSize(forGlyphAt: Int) -> CGSize

  /**
    - Selector: boundingRectForGlyphRange:inTextContainer:
  */
  @objc (boundingRectForGlyphRange:inTextContainer:) func boundingRect(forGlyphRange: NSRange, in: NSTextContainer) -> CGRect

  /**
    - Selector: boundsRectForTextBlock:atIndex:effectiveRange:
  */
  @objc (boundsRectForTextBlock:atIndex:effectiveRange:) func boundsRect(`for`: NSTextBlock, at: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - Selector: boundsRectForTextBlock:glyphRange:
  */
  @objc (boundsRectForTextBlock:glyphRange:) func boundsRect(`for`: NSTextBlock, glyphRange: NSRange) -> CGRect

  /**
    - Selector: characterIndexForGlyphAtIndex:
  */
  @objc (characterIndexForGlyphAtIndex:) func characterIndexForGlyph(at: Int) -> Int

  /**
    - Selector: characterIndexForPoint:inTextContainer:fractionOfDistanceBetweenInsertionPoints:
  */
  @objc (characterIndexForPoint:inTextContainer:fractionOfDistanceBetweenInsertionPoints:) func characterIndex(`for`: CGPoint, in: NSTextContainer, fractionOfDistanceBetweenInsertionPoints: UnsafeMutablePointer<CGFloat>?) -> Int

  /**
    - Selector: characterRangeForGlyphRange:actualGlyphRange:
  */
  @objc (characterRangeForGlyphRange:actualGlyphRange:) func characterRange(forGlyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange

  /**
    - Selector: defaultBaselineOffsetForFont:
  */
  @objc (defaultBaselineOffsetForFont:) func defaultBaselineOffset(`for`: NSFont) -> CGFloat

  /**
    - Selector: defaultLineHeightForFont:
  */
  @objc (defaultLineHeightForFont:) func defaultLineHeight(`for`: NSFont) -> CGFloat

  /**
    - Selector: drawBackgroundForGlyphRange:atPoint:
  */
  @objc (drawBackgroundForGlyphRange:atPoint:) func drawBackground(forGlyphRange: NSRange, at: CGPoint)

  /**
    - Selector: drawGlyphsForGlyphRange:atPoint:
  */
  @objc (drawGlyphsForGlyphRange:atPoint:) func drawGlyphs(forGlyphRange: NSRange, at: CGPoint)

  /**
    - Selector: drawStrikethroughForGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
  */
  @objc (drawStrikethroughForGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:) func drawStrikethrough(forGlyphRange: NSRange, strikethroughType: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - Selector: drawUnderlineForGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
  */
  @objc (drawUnderlineForGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:) func drawUnderline(forGlyphRange: NSRange, underlineType: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - Selector: drawsOutsideLineFragmentForGlyphAtIndex:
  */
  @objc (drawsOutsideLineFragmentForGlyphAtIndex:) func drawsOutsideLineFragment(forGlyphAt: Int) -> Bool

  /**
    - Selector: ensureGlyphsForCharacterRange:
  */
  @objc (ensureGlyphsForCharacterRange:) func ensureGlyphs(forCharacterRange: NSRange)

  /**
    - Selector: ensureGlyphsForGlyphRange:
  */
  @objc (ensureGlyphsForGlyphRange:) func ensureGlyphs(forGlyphRange: NSRange)

  /**
    - Selector: ensureLayoutForBoundingRect:inTextContainer:
  */
  @objc (ensureLayoutForBoundingRect:inTextContainer:) func ensureLayout(forBoundingRect: CGRect, in: NSTextContainer)

  /**
    - Selector: ensureLayoutForCharacterRange:
  */
  @objc (ensureLayoutForCharacterRange:) func ensureLayout(forCharacterRange: NSRange)

  /**
    - Selector: ensureLayoutForGlyphRange:
  */
  @objc (ensureLayoutForGlyphRange:) func ensureLayout(forGlyphRange: NSRange)

  /**
    - Selector: ensureLayoutForTextContainer:
  */
  @objc (ensureLayoutForTextContainer:) func ensureLayout(`for`: NSTextContainer)

  /**
    - Selector: enumerateEnclosingRectsForGlyphRange:withinSelectedGlyphRange:inTextContainer:usingBlock:
    - Introduced: 10.11
  */
  // jsvalue @objc @available(OSX 10.11, *) func enumerateEnclosingRects(forGlyphRange: NSRange, withinSelectedGlyphRange: NSRange, in: NSTextContainer, using: JSValue)

  /**
    - Selector: enumerateLineFragmentsForGlyphRange:usingBlock:
    - Introduced: 10.11
  */
  // jsvalue @objc @available(OSX 10.11, *) func enumerateLineFragments(forGlyphRange: NSRange, using: JSValue)

  /**
    - Selector: fillBackgroundRectArray:count:forCharacterRange:color:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func fillBackgroundRectArray(_ p0: UnsafePointer<NSRect>, count: Int, forCharacterRange: NSRange, color: NSColor)

  /**
    - Selector: firstUnlaidCharacterIndex
  */
  @objc func firstUnlaidCharacterIndex() -> Int

  /**
    - Selector: firstUnlaidGlyphIndex
  */
  @objc func firstUnlaidGlyphIndex() -> Int

  /**
    - Selector: fractionOfDistanceThroughGlyphForPoint:inTextContainer:
  */
  @objc (fractionOfDistanceThroughGlyphForPoint:inTextContainer:) func fractionOfDistanceThroughGlyph(`for`: CGPoint, in: NSTextContainer) -> CGFloat

  /**
    - Selector: getFirstUnlaidCharacterIndex:glyphIndex:
  */
  @objc func getFirstUnlaidCharacterIndex(_ p0: UnsafeMutablePointer<Int>?, glyphIndex: UnsafeMutablePointer<Int>?)

  /**
    - Selector: getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels:
    - Introduced: 10.5
  */
  @objc (getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels:) @available(OSX 10.5, *) func getGlyphs(in: NSRange, glyphs: UnsafeMutablePointer<CGGlyph>?, properties: UnsafeMutablePointer<NSLayoutManager.GlyphProperty>?, characterIndexes: UnsafeMutablePointer<Int>?, bidiLevels: UnsafeMutablePointer<UInt8>?) -> Int

  /**
    - Selector: getLineFragmentInsertionPointsForCharacterAtIndex:alternatePositions:inDisplayOrder:positions:characterIndexes:
  */
  @objc (getLineFragmentInsertionPointsForCharacterAtIndex:alternatePositions:inDisplayOrder:positions:characterIndexes:) func getLineFragmentInsertionPoints(forCharacterAt: Int, alternatePositions: Bool, inDisplayOrder: Bool, positions: UnsafeMutablePointer<CGFloat>?, characterIndexes: UnsafeMutablePointer<Int>?) -> Int

  /**
    - Selector: glyphAtIndex:
  */
  @objc (glyphAtIndex:) func glyph(at: Int) -> NSGlyph

  /**
    - Selector: glyphAtIndex:isValidIndex:
  */
  @objc (glyphAtIndex:isValidIndex:) func glyph(at: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> NSGlyph

  /**
    - Selector: glyphIndexForCharacterAtIndex:
  */
  @objc (glyphIndexForCharacterAtIndex:) func glyphIndexForCharacter(at: Int) -> Int

  /**
    - Selector: glyphIndexForPoint:inTextContainer:
  */
  @objc (glyphIndexForPoint:inTextContainer:) func glyphIndex(`for`: CGPoint, in: NSTextContainer) -> Int

  /**
    - Selector: glyphIndexForPoint:inTextContainer:fractionOfDistanceThroughGlyph:
  */
  @objc (glyphIndexForPoint:inTextContainer:fractionOfDistanceThroughGlyph:) func glyphIndex(`for`: CGPoint, in: NSTextContainer, fractionOfDistanceThroughGlyph: UnsafeMutablePointer<CGFloat>?) -> Int

  /**
    - Selector: glyphRangeForBoundingRect:inTextContainer:
  */
  @objc (glyphRangeForBoundingRect:inTextContainer:) func glyphRange(forBoundingRect: CGRect, in: NSTextContainer) -> NSRange

  /**
    - Selector: glyphRangeForBoundingRectWithoutAdditionalLayout:inTextContainer:
  */
  @objc (glyphRangeForBoundingRectWithoutAdditionalLayout:inTextContainer:) func glyphRange(forBoundingRectWithoutAdditionalLayout: CGRect, in: NSTextContainer) -> NSRange

  /**
    - Selector: glyphRangeForCharacterRange:actualCharacterRange:
  */
  @objc (glyphRangeForCharacterRange:actualCharacterRange:) func glyphRange(forCharacterRange: NSRange, actualCharacterRange: NSRangePointer?) -> NSRange

  /**
    - Selector: glyphRangeForTextContainer:
  */
  @objc (glyphRangeForTextContainer:) func glyphRange(`for`: NSTextContainer) -> NSRange

  /**
    - Selector: insertTextContainer:atIndex:
  */
  @objc (insertTextContainer:atIndex:) func insertTextContainer(_ p0: NSTextContainer, at: Int)

  /**
    - Selector: invalidateDisplayForCharacterRange:
  */
  @objc (invalidateDisplayForCharacterRange:) func invalidateDisplay(forCharacterRange: NSRange)

  /**
    - Selector: invalidateDisplayForGlyphRange:
  */
  @objc (invalidateDisplayForGlyphRange:) func invalidateDisplay(forGlyphRange: NSRange)

  /**
    - Selector: invalidateGlyphsForCharacterRange:changeInLength:actualCharacterRange:
  */
  @objc (invalidateGlyphsForCharacterRange:changeInLength:actualCharacterRange:) func invalidateGlyphs(forCharacterRange: NSRange, changeInLength: Int, actualCharacterRange: NSRangePointer?)

  /**
    - Selector: invalidateLayoutForCharacterRange:actualCharacterRange:
    - Introduced: 10.5
  */
  @objc (invalidateLayoutForCharacterRange:actualCharacterRange:) @available(OSX 10.5, *) func invalidateLayout(forCharacterRange: NSRange, actualCharacterRange: NSRangePointer?)

  /**
    - Selector: isValidGlyphIndex:
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func isValidGlyphIndex(_ p0: Int) -> Bool

  /**
    - Selector: layoutManagerOwnsFirstResponderInWindow:
  */
  @objc (layoutManagerOwnsFirstResponderInWindow:) func layoutManagerOwnsFirstResponder(in: NSWindow) -> Bool

  /**
    - Selector: layoutRectForTextBlock:atIndex:effectiveRange:
  */
  @objc (layoutRectForTextBlock:atIndex:effectiveRange:) func layoutRect(`for`: NSTextBlock, at: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - Selector: layoutRectForTextBlock:glyphRange:
  */
  @objc (layoutRectForTextBlock:glyphRange:) func layoutRect(`for`: NSTextBlock, glyphRange: NSRange) -> CGRect

  /**
    - Selector: lineFragmentRectForGlyphAtIndex:effectiveRange:
  */
  @objc (lineFragmentRectForGlyphAtIndex:effectiveRange:) func lineFragmentRect(forGlyphAt: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - Selector: lineFragmentRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:
    - Introduced: 10.0
  */
  @objc (lineFragmentRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:) @available(OSX 10.0, *) func lineFragmentRect(forGlyphAt: Int, effectiveRange: NSRangePointer?, withoutAdditionalLayout: Bool) -> CGRect

  /**
    - Selector: lineFragmentUsedRectForGlyphAtIndex:effectiveRange:
  */
  @objc (lineFragmentUsedRectForGlyphAtIndex:effectiveRange:) func lineFragmentUsedRect(forGlyphAt: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - Selector: lineFragmentUsedRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:
    - Introduced: 10.0
  */
  @objc (lineFragmentUsedRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:) @available(OSX 10.0, *) func lineFragmentUsedRect(forGlyphAt: Int, effectiveRange: NSRangePointer?, withoutAdditionalLayout: Bool) -> CGRect

  /**
    - Selector: locationForGlyphAtIndex:
  */
  @objc (locationForGlyphAtIndex:) func location(forGlyphAt: Int) -> CGPoint

  /**
    - Selector: notShownAttributeForGlyphAtIndex:
  */
  @objc (notShownAttributeForGlyphAtIndex:) func notShownAttribute(forGlyphAt: Int) -> Bool

  /**
    - Selector: processEditingForTextStorage:edited:range:changeInLength:invalidatedRange:
    - Introduced: 10.11
  */
  @objc (processEditingForTextStorage:edited:range:changeInLength:invalidatedRange:) @available(OSX 10.11, *) func processEditing(`for`: NSTextStorage, edited: NSTextStorageEditActions, range: NSRange, changeInLength: Int, invalidatedRange: NSRange)

  /**
    - Selector: propertyForGlyphAtIndex:
    - Introduced: 10.5
  */
  @objc (propertyForGlyphAtIndex:) @available(OSX 10.5, *) func propertyForGlyph(at: Int) -> NSLayoutManager.GlyphProperty

  /**
    - Selector: rangeOfNominallySpacedGlyphsContainingIndex:
  */
  @objc (rangeOfNominallySpacedGlyphsContainingIndex:) func range(ofNominallySpacedGlyphsContaining: Int) -> NSRange

  /**
    - Selector: rectArrayForCharacterRange:withinSelectedCharacterRange:inTextContainer:rectCount:
  */
  @objc (rectArrayForCharacterRange:withinSelectedCharacterRange:inTextContainer:rectCount:) func rectArray(forCharacterRange: NSRange, withinSelectedCharacterRange: NSRange, in: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray?

  /**
    - Selector: rectArrayForGlyphRange:withinSelectedGlyphRange:inTextContainer:rectCount:
  */
  @objc (rectArrayForGlyphRange:withinSelectedGlyphRange:inTextContainer:rectCount:) func rectArray(forGlyphRange: NSRange, withinSelectedGlyphRange: NSRange, in: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray?

  /**
    - Selector: removeTemporaryAttribute:forCharacterRange:
  */
  @objc func removeTemporaryAttribute(_ p0: NSAttributedString.Key, forCharacterRange: NSRange)

  /**
    - Selector: removeTextContainerAtIndex:
  */
  @objc (removeTextContainerAtIndex:) func removeTextContainer(at: Int)

  /**
    - Selector: replaceTextStorage:
  */
  @objc func replaceTextStorage(_ p0: NSTextStorage)

  /**
    - Selector: rulerAccessoryViewForTextView:paragraphStyle:ruler:enabled:
  */
  @objc (rulerAccessoryViewForTextView:paragraphStyle:ruler:enabled:) func rulerAccessoryView(`for`: NSTextView, paragraphStyle: NSParagraphStyle, ruler: NSRulerView, enabled: Bool) -> NSView?

  /**
    - Selector: rulerMarkersForTextView:paragraphStyle:ruler:
  */
  @objc (rulerMarkersForTextView:paragraphStyle:ruler:) func rulerMarkers(`for`: NSTextView, paragraphStyle: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]

  /**
    - Selector: setAttachmentSize:forGlyphRange:
  */
  @objc func setAttachmentSize(_ p0: CGSize, forGlyphRange: NSRange)

  /**
    - Selector: setBoundsRect:forTextBlock:glyphRange:
  */
  @objc (setBoundsRect:forTextBlock:glyphRange:) func setBoundsRect(_ p0: CGRect, `for`: NSTextBlock, glyphRange: NSRange)

  /**
    - Selector: setDrawsOutsideLineFragment:forGlyphAtIndex:
  */
  @objc (setDrawsOutsideLineFragment:forGlyphAtIndex:) func setDrawsOutsideLineFragment(_ p0: Bool, forGlyphAt: Int)

  /**
    - Selector: setExtraLineFragmentRect:usedRect:textContainer:
  */
  @objc func setExtraLineFragmentRect(_ p0: CGRect, usedRect: CGRect, textContainer: NSTextContainer)

  /**
    - Selector: setGlyphs:properties:characterIndexes:font:forGlyphRange:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func setGlyphs(_ p0: UnsafePointer<CGGlyph>, properties: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes: UnsafePointer<Int>, font: NSFont, forGlyphRange: NSRange)

  /**
    - Selector: setLayoutRect:forTextBlock:glyphRange:
  */
  @objc (setLayoutRect:forTextBlock:glyphRange:) func setLayoutRect(_ p0: CGRect, `for`: NSTextBlock, glyphRange: NSRange)

  /**
    - Selector: setLineFragmentRect:forGlyphRange:usedRect:
  */
  @objc func setLineFragmentRect(_ p0: CGRect, forGlyphRange: NSRange, usedRect: CGRect)

  /**
    - Selector: setLocation:forStartOfGlyphRange:
  */
  @objc func setLocation(_ p0: CGPoint, forStartOfGlyphRange: NSRange)

  /**
    - Selector: setNotShownAttribute:forGlyphAtIndex:
  */
  @objc (setNotShownAttribute:forGlyphAtIndex:) func setNotShownAttribute(_ p0: Bool, forGlyphAt: Int)

  /**
    - Selector: setTemporaryAttributes:forCharacterRange:
  */
  @objc func setTemporaryAttributes(_ p0: [NSAttributedString.Key: Any], forCharacterRange: NSRange)

  /**
    - Selector: setTextContainer:forGlyphRange:
  */
  @objc func setTextContainer(_ p0: NSTextContainer, forGlyphRange: NSRange)

  /**
    - Selector: showAttachmentCell:inRect:characterIndex:
  */
  @objc (showAttachmentCell:inRect:characterIndex:) func showAttachmentCell(_ p0: NSCell, in: CGRect, characterIndex: Int)

  /**
    - Selector: showCGGlyphs:positions:count:font:textMatrix:attributes:inContext:
    - Introduced: 10.15
  */
  @objc (showCGGlyphs:positions:count:font:textMatrix:attributes:inContext:) @available(OSX 10.15, *) func showCGGlyphs(_ p0: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count: Int, font: NSFont, textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key: Any], in: CGContext)

  /**
    - Selector: strikethroughGlyphRange:strikethroughType:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
  */
  @objc func strikethroughGlyphRange(_ p0: NSRange, strikethroughType: NSUnderlineStyle, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - Selector: temporaryAttribute:atCharacterIndex:effectiveRange:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func temporaryAttribute(_ p0: NSAttributedString.Key, atCharacterIndex: Int, effectiveRange: NSRangePointer?) -> Any?

  /**
    - Selector: temporaryAttribute:atCharacterIndex:longestEffectiveRange:inRange:
    - Introduced: 10.5
  */
  @objc (temporaryAttribute:atCharacterIndex:longestEffectiveRange:inRange:) @available(OSX 10.5, *) func temporaryAttribute(_ p0: NSAttributedString.Key, atCharacterIndex: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> Any?

  /**
    - Selector: temporaryAttributesAtCharacterIndex:effectiveRange:
  */
  @objc (temporaryAttributesAtCharacterIndex:effectiveRange:) func temporaryAttributes(atCharacterIndex: Int, effectiveRange: NSRangePointer?) -> [NSAttributedString.Key: Any]

  /**
    - Selector: temporaryAttributesAtCharacterIndex:longestEffectiveRange:inRange:
    - Introduced: 10.5
  */
  @objc (temporaryAttributesAtCharacterIndex:longestEffectiveRange:inRange:) @available(OSX 10.5, *) func temporaryAttributes(atCharacterIndex: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - Selector: textContainerChangedGeometry:
  */
  @objc func textContainerChangedGeometry(_ p0: NSTextContainer)

  /**
    - Selector: textContainerChangedTextView:
  */
  @objc func textContainerChangedTextView(_ p0: NSTextContainer)

  /**
    - Selector: textContainerForGlyphAtIndex:effectiveRange:
  */
  @objc (textContainerForGlyphAtIndex:effectiveRange:) func textContainer(forGlyphAt: Int, effectiveRange: NSRangePointer?) -> NSTextContainer?

  /**
    - Selector: textContainerForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:
    - Introduced: 10.0
  */
  @objc (textContainerForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:) @available(OSX 10.0, *) func textContainer(forGlyphAt: Int, effectiveRange: NSRangePointer?, withoutAdditionalLayout: Bool) -> NSTextContainer?

  /**
    - Selector: truncatedGlyphRangeInLineFragmentForGlyphAtIndex:
    - Introduced: 10.11
  */
  @objc (truncatedGlyphRangeInLineFragmentForGlyphAtIndex:) @available(OSX 10.11, *) func truncatedGlyphRange(inLineFragmentForGlyphAt: Int) -> NSRange

  /**
    - Selector: underlineGlyphRange:underlineType:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
  */
  @objc func underlineGlyphRange(_ p0: NSRange, underlineType: NSUnderlineStyle, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - Selector: usedRectForTextContainer:
  */
  @objc (usedRectForTextContainer:) func usedRect(`for`: NSTextContainer) -> CGRect

  // Own Instance Properties

  /**
    - Selector: allowsNonContiguousLayout
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowsNonContiguousLayout: Bool { @objc get @objc (setAllowsNonContiguousLayout:) set }

  /**
    - Selector: backgroundLayoutEnabled
  */
  @objc var backgroundLayoutEnabled: Bool { @objc get @objc (setBackgroundLayoutEnabled:) set }

  /**
    - Selector: defaultAttachmentScaling
  */
  @objc var defaultAttachmentScaling: NSImageScaling { @objc get @objc (setDefaultAttachmentScaling:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSLayoutManagerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: extraLineFragmentRect
  */
  @objc var extraLineFragmentRect: CGRect { @objc get }

  /**
    - Selector: extraLineFragmentTextContainer
  */
  @objc var extraLineFragmentTextContainer: NSTextContainer? { @objc get }

  /**
    - Selector: extraLineFragmentUsedRect
  */
  @objc var extraLineFragmentUsedRect: CGRect { @objc get }

  /**
    - Selector: firstTextView
  */
  @objc var firstTextView: NSTextView? { @objc get }

  /**
    - Selector: glyphGenerator
  */
  @objc var glyphGenerator: NSGlyphGenerator { @objc get @objc (setGlyphGenerator:) set }

  /**
    - Selector: hasNonContiguousLayout
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var hasNonContiguousLayout: Bool { @objc get }

  /**
    - Selector: limitsLayoutForSuspiciousContents
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var limitsLayoutForSuspiciousContents: Bool { @objc get @objc (setLimitsLayoutForSuspiciousContents:) set }

  /**
    - Selector: numberOfGlyphs
  */
  @objc var numberOfGlyphs: Int { @objc get }

  /**
    - Selector: showsControlCharacters
  */
  @objc var showsControlCharacters: Bool { @objc get @objc (setShowsControlCharacters:) set }

  /**
    - Selector: showsInvisibleCharacters
  */
  @objc var showsInvisibleCharacters: Bool { @objc get @objc (setShowsInvisibleCharacters:) set }

  /**
    - Selector: textContainers
  */
  @objc var textContainers: [NSTextContainer] { @objc get }

  /**
    - Selector: textStorage
  */
  @objc var textStorage: NSTextStorage? { @objc get @objc (setTextStorage:) set }

  /**
    - Selector: textViewForBeginningOfSelection
  */
  @objc var textViewForBeginningOfSelection: NSTextView? { @objc get }

  /**
    - Selector: typesetter
  */
  @objc var typesetter: NSTypesetter { @objc get @objc (setTypesetter:) set }

  /**
    - Selector: typesetterBehavior
  */
  @objc var typesetterBehavior: NSLayoutManager.TypesetterBehavior { @objc get @objc (setTypesetterBehavior:) set }

  /**
    - Selector: usesDefaultHyphenation
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var usesDefaultHyphenation: Bool { @objc get @objc (setUsesDefaultHyphenation:) set }

  /**
    - Selector: usesFontLeading
  */
  @objc var usesFontLeading: Bool { @objc get @objc (setUsesFontLeading:) set }
}

extension NSLayoutManager: NSLayoutManagerExports {
}
