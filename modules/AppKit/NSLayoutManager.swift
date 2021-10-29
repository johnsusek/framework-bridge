import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLayoutManager
    - name: NSLayoutManager
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSLayoutManager) protocol NSLayoutManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cgGlyph
    - name: CGGlyphAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: cgGlyph(at:)
    - Introduced: 10.11
  */
  @objc (CGGlyphAtIndex:) @available(OSX 10.11, *) func cgGlyph(at: Int) -> CGGlyph

  /**
    - jsName: cgGlyph
    - name: CGGlyphAtIndex:isValidIndex:
    - argLabels: at, isValidIndex
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: cgGlyph(at:isValidIndex:)
    - Introduced: 10.11
  */
  @objc (CGGlyphAtIndex:isValidIndex:) @available(OSX 10.11, *) func cgGlyph(at: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph

  /**
    - jsName: addTemporaryAttribute
    - name: addTemporaryAttribute:value:forCharacterRange:
    - argLabels: value, forCharacterRange
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addTemporaryAttribute(_: NSAttributedString.Key, value: Any, forCharacterRange: NSRange)

  /**
    - jsName: addTemporaryAttributes
    - name: addTemporaryAttributes:forCharacterRange:
    - argLabels: forCharacterRange
    - constructorTokens: 
  */
  @objc func addTemporaryAttributes(_: [NSAttributedString.Key: Any], forCharacterRange: NSRange)

  /**
    - jsName: addTextContainer
    - name: addTextContainer:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addTextContainer(_: NSTextContainer)

  /**
    - jsName: attachmentSize
    - name: attachmentSizeForGlyphAtIndex:
    - argLabels: forGlyphAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attachmentSize(forGlyphAt:)
  */
  @objc (attachmentSizeForGlyphAtIndex:) func attachmentSize(forGlyphAt: Int) -> CGSize

  /**
    - jsName: boundingRect
    - name: boundingRectForGlyphRange:inTextContainer:
    - argLabels: forGlyphRange, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: boundingRect(forGlyphRange:in:)
  */
  @objc (boundingRectForGlyphRange:inTextContainer:) func boundingRect(forGlyphRange: NSRange, in: NSTextContainer) -> CGRect

  /**
    - jsName: boundsRect
    - name: boundsRectForTextBlock:atIndex:effectiveRange:
    - argLabels: for, at, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: boundsRect(for:at:effectiveRange:)
  */
  @objc (boundsRectForTextBlock:atIndex:effectiveRange:) func boundsRect(`for`: NSTextBlock, at: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - jsName: boundsRect
    - name: boundsRectForTextBlock:glyphRange:
    - argLabels: for, glyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: boundsRect(for:glyphRange:)
  */
  @objc (boundsRectForTextBlock:glyphRange:) func boundsRect(`for`: NSTextBlock, glyphRange: NSRange) -> CGRect

  /**
    - jsName: characterIndexForGlyph
    - name: characterIndexForGlyphAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: characterIndexForGlyph(at:)
  */
  @objc (characterIndexForGlyphAtIndex:) func characterIndexForGlyph(at: Int) -> Int

  /**
    - jsName: characterIndex
    - name: characterIndexForPoint:inTextContainer:fractionOfDistanceBetweenInsertionPoints:
    - argLabels: for, in, fractionOfDistanceBetweenInsertionPoints
    - constructorTokens: 
    - obsoleted: 3
    - renamed: characterIndex(for:in:fractionOfDistanceBetweenInsertionPoints:)
  */
  @objc (characterIndexForPoint:inTextContainer:fractionOfDistanceBetweenInsertionPoints:) func characterIndex(`for`: CGPoint, in: NSTextContainer, fractionOfDistanceBetweenInsertionPoints: UnsafeMutablePointer<CGFloat>?) -> Int

  /**
    - jsName: characterRange
    - name: characterRangeForGlyphRange:actualGlyphRange:
    - argLabels: forGlyphRange, actualGlyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: characterRange(forGlyphRange:actualGlyphRange:)
  */
  @objc (characterRangeForGlyphRange:actualGlyphRange:) func characterRange(forGlyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange

  /**
    - jsName: defaultBaselineOffset
    - name: defaultBaselineOffsetForFont:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: defaultBaselineOffset(for:)
  */
  @objc (defaultBaselineOffsetForFont:) func defaultBaselineOffset(`for`: NSFont) -> CGFloat

  /**
    - jsName: defaultLineHeight
    - name: defaultLineHeightForFont:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: defaultLineHeight(for:)
  */
  @objc (defaultLineHeightForFont:) func defaultLineHeight(`for`: NSFont) -> CGFloat

  /**
    - jsName: drawBackground
    - name: drawBackgroundForGlyphRange:atPoint:
    - argLabels: forGlyphRange, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBackground(forGlyphRange:at:)
  */
  @objc (drawBackgroundForGlyphRange:atPoint:) func drawBackground(forGlyphRange: NSRange, at: CGPoint)

  /**
    - jsName: drawGlyphs
    - name: drawGlyphsForGlyphRange:atPoint:
    - argLabels: forGlyphRange, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawGlyphs(forGlyphRange:at:)
  */
  @objc (drawGlyphsForGlyphRange:atPoint:) func drawGlyphs(forGlyphRange: NSRange, at: CGPoint)

  /**
    - jsName: drawStrikethrough
    - name: drawStrikethroughForGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
    - argLabels: forGlyphRange, strikethroughType, baselineOffset, lineFragmentRect, lineFragmentGlyphRange, containerOrigin
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawStrikethrough(forGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:)
  */
  @objc (drawStrikethroughForGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:) func drawStrikethrough(forGlyphRange: NSRange, strikethroughType: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - jsName: drawUnderline
    - name: drawUnderlineForGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
    - argLabels: forGlyphRange, underlineType, baselineOffset, lineFragmentRect, lineFragmentGlyphRange, containerOrigin
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawUnderline(forGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:)
  */
  @objc (drawUnderlineForGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:) func drawUnderline(forGlyphRange: NSRange, underlineType: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - jsName: drawsOutsideLineFragment
    - name: drawsOutsideLineFragmentForGlyphAtIndex:
    - argLabels: forGlyphAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawsOutsideLineFragment(forGlyphAt:)
  */
  @objc (drawsOutsideLineFragmentForGlyphAtIndex:) func drawsOutsideLineFragment(forGlyphAt: Int) -> Bool

  /**
    - jsName: ensureGlyphs
    - name: ensureGlyphsForCharacterRange:
    - argLabels: forCharacterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureGlyphs(forCharacterRange:)
  */
  @objc (ensureGlyphsForCharacterRange:) func ensureGlyphs(forCharacterRange: NSRange)

  /**
    - jsName: ensureGlyphs
    - name: ensureGlyphsForGlyphRange:
    - argLabels: forGlyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureGlyphs(forGlyphRange:)
  */
  @objc (ensureGlyphsForGlyphRange:) func ensureGlyphs(forGlyphRange: NSRange)

  /**
    - jsName: ensureLayout
    - name: ensureLayoutForBoundingRect:inTextContainer:
    - argLabels: forBoundingRect, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureLayout(forBoundingRect:in:)
  */
  @objc (ensureLayoutForBoundingRect:inTextContainer:) func ensureLayout(forBoundingRect: CGRect, in: NSTextContainer)

  /**
    - jsName: ensureLayout
    - name: ensureLayoutForCharacterRange:
    - argLabels: forCharacterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureLayout(forCharacterRange:)
  */
  @objc (ensureLayoutForCharacterRange:) func ensureLayout(forCharacterRange: NSRange)

  /**
    - jsName: ensureLayout
    - name: ensureLayoutForGlyphRange:
    - argLabels: forGlyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureLayout(forGlyphRange:)
  */
  @objc (ensureLayoutForGlyphRange:) func ensureLayout(forGlyphRange: NSRange)

  /**
    - jsName: ensureLayout
    - name: ensureLayoutForTextContainer:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureLayout(for:)
  */
  @objc (ensureLayoutForTextContainer:) func ensureLayout(`for`: NSTextContainer)

  /**
    - jsName: enumerateEnclosingRects
    - name: enumerateEnclosingRectsForGlyphRange:withinSelectedGlyphRange:inTextContainer:usingBlock:
    - argLabels: forGlyphRange, withinSelectedGlyphRange, in, using
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: enumerateEnclosingRects(forGlyphRange:withinSelectedGlyphRange:in:using:)
    - Introduced: 10.11
  */
  // jsvalue - @objc (enumerateEnclosingRectsForGlyphRange:withinSelectedGlyphRange:inTextContainer:usingBlock:) @available(OSX 10.11, *) func enumerateEnclosingRects(forGlyphRange: NSRange, withinSelectedGlyphRange: NSRange, in: NSTextContainer, using: JSValue)

  /**
    - jsName: enumerateLineFragments
    - name: enumerateLineFragmentsForGlyphRange:usingBlock:
    - argLabels: forGlyphRange, using
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: enumerateLineFragments(forGlyphRange:using:)
    - Introduced: 10.11
  */
  // jsvalue - @objc (enumerateLineFragmentsForGlyphRange:usingBlock:) @available(OSX 10.11, *) func enumerateLineFragments(forGlyphRange: NSRange, using: JSValue)

  /**
    - jsName: fillBackgroundRectArray
    - name: fillBackgroundRectArray:count:forCharacterRange:color:
    - argLabels: count, forCharacterRange, color
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func fillBackgroundRectArray(_: UnsafePointer<NSRect>, count: Int, forCharacterRange: NSRange, color: NSColor)

  /**
    - jsName: firstUnlaidCharacterIndex
    - name: firstUnlaidCharacterIndex
    - argLabels: 
    - constructorTokens: 
  */
  @objc func firstUnlaidCharacterIndex() -> Int

  /**
    - jsName: firstUnlaidGlyphIndex
    - name: firstUnlaidGlyphIndex
    - argLabels: 
    - constructorTokens: 
  */
  @objc func firstUnlaidGlyphIndex() -> Int

  /**
    - jsName: fractionOfDistanceThroughGlyph
    - name: fractionOfDistanceThroughGlyphForPoint:inTextContainer:
    - argLabels: for, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fractionOfDistanceThroughGlyph(for:in:)
  */
  @objc (fractionOfDistanceThroughGlyphForPoint:inTextContainer:) func fractionOfDistanceThroughGlyph(`for`: CGPoint, in: NSTextContainer) -> CGFloat

  /**
    - jsName: getFirstUnlaidCharacterIndex
    - name: getFirstUnlaidCharacterIndex:glyphIndex:
    - argLabels: glyphIndex
    - constructorTokens: 
  */
  @objc func getFirstUnlaidCharacterIndex(_: UnsafeMutablePointer<Int>?, glyphIndex: UnsafeMutablePointer<Int>?)

  /**
    - jsName: getGlyphs
    - name: getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels:
    - argLabels: in, glyphs, properties, characterIndexes, bidiLevels
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: getGlyphs(in:glyphs:properties:characterIndexes:bidiLevels:)
    - Introduced: 10.5
  */
  @objc (getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels:) @available(OSX 10.5, *) func getGlyphs(in: NSRange, glyphs: UnsafeMutablePointer<CGGlyph>?, properties: UnsafeMutablePointer<NSLayoutManager.GlyphProperty>?, characterIndexes: UnsafeMutablePointer<Int>?, bidiLevels: UnsafeMutablePointer<UInt8>?) -> Int

  /**
    - jsName: getLineFragmentInsertionPoints
    - name: getLineFragmentInsertionPointsForCharacterAtIndex:alternatePositions:inDisplayOrder:positions:characterIndexes:
    - argLabels: forCharacterAt, alternatePositions, inDisplayOrder, positions, characterIndexes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: getLineFragmentInsertionPoints(forCharacterAt:alternatePositions:inDisplayOrder:positions:characterIndexes:)
  */
  @objc (getLineFragmentInsertionPointsForCharacterAtIndex:alternatePositions:inDisplayOrder:positions:characterIndexes:) func getLineFragmentInsertionPoints(forCharacterAt: Int, alternatePositions: Bool, inDisplayOrder: Bool, positions: UnsafeMutablePointer<CGFloat>?, characterIndexes: UnsafeMutablePointer<Int>?) -> Int

  /**
    - jsName: glyph
    - name: glyphAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyph(at:)
  */
  @objc (glyphAtIndex:) func glyph(at: Int) -> NSGlyph

  /**
    - jsName: glyph
    - name: glyphAtIndex:isValidIndex:
    - argLabels: at, isValidIndex
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyph(at:isValidIndex:)
  */
  @objc (glyphAtIndex:isValidIndex:) func glyph(at: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> NSGlyph

  /**
    - jsName: glyphIndexForCharacter
    - name: glyphIndexForCharacterAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphIndexForCharacter(at:)
  */
  @objc (glyphIndexForCharacterAtIndex:) func glyphIndexForCharacter(at: Int) -> Int

  /**
    - jsName: glyphIndex
    - name: glyphIndexForPoint:inTextContainer:
    - argLabels: for, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphIndex(for:in:)
  */
  @objc (glyphIndexForPoint:inTextContainer:) func glyphIndex(`for`: CGPoint, in: NSTextContainer) -> Int

  /**
    - jsName: glyphIndex
    - name: glyphIndexForPoint:inTextContainer:fractionOfDistanceThroughGlyph:
    - argLabels: for, in, fractionOfDistanceThroughGlyph
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphIndex(for:in:fractionOfDistanceThroughGlyph:)
  */
  @objc (glyphIndexForPoint:inTextContainer:fractionOfDistanceThroughGlyph:) func glyphIndex(`for`: CGPoint, in: NSTextContainer, fractionOfDistanceThroughGlyph: UnsafeMutablePointer<CGFloat>?) -> Int

  /**
    - jsName: glyphRange
    - name: glyphRangeForBoundingRect:inTextContainer:
    - argLabels: forBoundingRect, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphRange(forBoundingRect:in:)
  */
  @objc (glyphRangeForBoundingRect:inTextContainer:) func glyphRange(forBoundingRect: CGRect, in: NSTextContainer) -> NSRange

  /**
    - jsName: glyphRange
    - name: glyphRangeForBoundingRectWithoutAdditionalLayout:inTextContainer:
    - argLabels: forBoundingRectWithoutAdditionalLayout, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphRange(forBoundingRectWithoutAdditionalLayout:in:)
  */
  @objc (glyphRangeForBoundingRectWithoutAdditionalLayout:inTextContainer:) func glyphRange(forBoundingRectWithoutAdditionalLayout: CGRect, in: NSTextContainer) -> NSRange

  /**
    - jsName: glyphRange
    - name: glyphRangeForCharacterRange:actualCharacterRange:
    - argLabels: forCharacterRange, actualCharacterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphRange(forCharacterRange:actualCharacterRange:)
  */
  @objc (glyphRangeForCharacterRange:actualCharacterRange:) func glyphRange(forCharacterRange: NSRange, actualCharacterRange: NSRangePointer?) -> NSRange

  /**
    - jsName: glyphRange
    - name: glyphRangeForTextContainer:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: glyphRange(for:)
  */
  @objc (glyphRangeForTextContainer:) func glyphRange(`for`: NSTextContainer) -> NSRange

  /**
    - jsName: insertTextContainer
    - name: insertTextContainer:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertTextContainer(_:at:)
  */
  @objc (insertTextContainer:atIndex:) func insertTextContainer(_: NSTextContainer, at: Int)

  /**
    - jsName: invalidateDisplay
    - name: invalidateDisplayForCharacterRange:
    - argLabels: forCharacterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateDisplay(forCharacterRange:)
  */
  @objc (invalidateDisplayForCharacterRange:) func invalidateDisplay(forCharacterRange: NSRange)

  /**
    - jsName: invalidateDisplay
    - name: invalidateDisplayForGlyphRange:
    - argLabels: forGlyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateDisplay(forGlyphRange:)
  */
  @objc (invalidateDisplayForGlyphRange:) func invalidateDisplay(forGlyphRange: NSRange)

  /**
    - jsName: invalidateGlyphs
    - name: invalidateGlyphsForCharacterRange:changeInLength:actualCharacterRange:
    - argLabels: forCharacterRange, changeInLength, actualCharacterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateGlyphs(forCharacterRange:changeInLength:actualCharacterRange:)
  */
  @objc (invalidateGlyphsForCharacterRange:changeInLength:actualCharacterRange:) func invalidateGlyphs(forCharacterRange: NSRange, changeInLength: Int, actualCharacterRange: NSRangePointer?)

  /**
    - jsName: invalidateLayout
    - name: invalidateLayoutForCharacterRange:actualCharacterRange:
    - argLabels: forCharacterRange, actualCharacterRange
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: invalidateLayout(forCharacterRange:actualCharacterRange:)
    - Introduced: 10.5
  */
  @objc (invalidateLayoutForCharacterRange:actualCharacterRange:) @available(OSX 10.5, *) func invalidateLayout(forCharacterRange: NSRange, actualCharacterRange: NSRangePointer?)

  /**
    - jsName: isValidGlyphIndex
    - name: isValidGlyphIndex:
    - argLabels: 
    - constructorTokens: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func isValidGlyphIndex(_: Int) -> Bool

  /**
    - jsName: layoutManagerOwnsFirstResponder
    - name: layoutManagerOwnsFirstResponderInWindow:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutManagerOwnsFirstResponder(in:)
  */
  @objc (layoutManagerOwnsFirstResponderInWindow:) func layoutManagerOwnsFirstResponder(in: NSWindow) -> Bool

  /**
    - jsName: layoutRect
    - name: layoutRectForTextBlock:atIndex:effectiveRange:
    - argLabels: for, at, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutRect(for:at:effectiveRange:)
  */
  @objc (layoutRectForTextBlock:atIndex:effectiveRange:) func layoutRect(`for`: NSTextBlock, at: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - jsName: layoutRect
    - name: layoutRectForTextBlock:glyphRange:
    - argLabels: for, glyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutRect(for:glyphRange:)
  */
  @objc (layoutRectForTextBlock:glyphRange:) func layoutRect(`for`: NSTextBlock, glyphRange: NSRange) -> CGRect

  /**
    - jsName: lineFragmentRect
    - name: lineFragmentRectForGlyphAtIndex:effectiveRange:
    - argLabels: forGlyphAt, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: lineFragmentRect(forGlyphAt:effectiveRange:)
  */
  @objc (lineFragmentRectForGlyphAtIndex:effectiveRange:) func lineFragmentRect(forGlyphAt: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - jsName: lineFragmentRect
    - name: lineFragmentRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:
    - argLabels: forGlyphAt, effectiveRange, withoutAdditionalLayout
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: lineFragmentRect(forGlyphAt:effectiveRange:withoutAdditionalLayout:)
    - Introduced: 10.0
  */
  @objc (lineFragmentRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:) @available(OSX 10.0, *) func lineFragmentRect(forGlyphAt: Int, effectiveRange: NSRangePointer?, withoutAdditionalLayout: Bool) -> CGRect

  /**
    - jsName: lineFragmentUsedRect
    - name: lineFragmentUsedRectForGlyphAtIndex:effectiveRange:
    - argLabels: forGlyphAt, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: lineFragmentUsedRect(forGlyphAt:effectiveRange:)
  */
  @objc (lineFragmentUsedRectForGlyphAtIndex:effectiveRange:) func lineFragmentUsedRect(forGlyphAt: Int, effectiveRange: NSRangePointer?) -> CGRect

  /**
    - jsName: lineFragmentUsedRect
    - name: lineFragmentUsedRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:
    - argLabels: forGlyphAt, effectiveRange, withoutAdditionalLayout
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: lineFragmentUsedRect(forGlyphAt:effectiveRange:withoutAdditionalLayout:)
    - Introduced: 10.0
  */
  @objc (lineFragmentUsedRectForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:) @available(OSX 10.0, *) func lineFragmentUsedRect(forGlyphAt: Int, effectiveRange: NSRangePointer?, withoutAdditionalLayout: Bool) -> CGRect

  /**
    - jsName: location
    - name: locationForGlyphAtIndex:
    - argLabels: forGlyphAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: location(forGlyphAt:)
  */
  @objc (locationForGlyphAtIndex:) func location(forGlyphAt: Int) -> CGPoint

  /**
    - jsName: notShownAttribute
    - name: notShownAttributeForGlyphAtIndex:
    - argLabels: forGlyphAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: notShownAttribute(forGlyphAt:)
  */
  @objc (notShownAttributeForGlyphAtIndex:) func notShownAttribute(forGlyphAt: Int) -> Bool

  /**
    - jsName: processEditing
    - name: processEditingForTextStorage:edited:range:changeInLength:invalidatedRange:
    - argLabels: for, edited, range, changeInLength, invalidatedRange
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: processEditing(for:edited:range:changeInLength:invalidatedRange:)
    - Introduced: 10.11
  */
  @objc (processEditingForTextStorage:edited:range:changeInLength:invalidatedRange:) @available(OSX 10.11, *) func processEditing(`for`: NSTextStorage, edited: NSTextStorageEditActions, range: NSRange, changeInLength: Int, invalidatedRange: NSRange)

  /**
    - jsName: propertyForGlyph
    - name: propertyForGlyphAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: propertyForGlyph(at:)
    - Introduced: 10.5
  */
  @objc (propertyForGlyphAtIndex:) @available(OSX 10.5, *) func propertyForGlyph(at: Int) -> NSLayoutManager.GlyphProperty

  /**
    - jsName: range
    - name: rangeOfNominallySpacedGlyphsContainingIndex:
    - argLabels: ofNominallySpacedGlyphsContaining
    - constructorTokens: 
    - obsoleted: 3
    - renamed: range(ofNominallySpacedGlyphsContaining:)
  */
  @objc (rangeOfNominallySpacedGlyphsContainingIndex:) func range(ofNominallySpacedGlyphsContaining: Int) -> NSRange

  /**
    - jsName: rectArray
    - name: rectArrayForCharacterRange:withinSelectedCharacterRange:inTextContainer:rectCount:
    - argLabels: forCharacterRange, withinSelectedCharacterRange, in, rectCount
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectArray(forCharacterRange:withinSelectedCharacterRange:in:rectCount:)
  */
  @objc (rectArrayForCharacterRange:withinSelectedCharacterRange:inTextContainer:rectCount:) func rectArray(forCharacterRange: NSRange, withinSelectedCharacterRange: NSRange, in: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray?

  /**
    - jsName: rectArray
    - name: rectArrayForGlyphRange:withinSelectedGlyphRange:inTextContainer:rectCount:
    - argLabels: forGlyphRange, withinSelectedGlyphRange, in, rectCount
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectArray(forGlyphRange:withinSelectedGlyphRange:in:rectCount:)
  */
  @objc (rectArrayForGlyphRange:withinSelectedGlyphRange:inTextContainer:rectCount:) func rectArray(forGlyphRange: NSRange, withinSelectedGlyphRange: NSRange, in: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray?

  /**
    - jsName: removeTemporaryAttribute
    - name: removeTemporaryAttribute:forCharacterRange:
    - argLabels: forCharacterRange
    - constructorTokens: 
  */
  @objc func removeTemporaryAttribute(_: NSAttributedString.Key, forCharacterRange: NSRange)

  /**
    - jsName: removeTextContainer
    - name: removeTextContainerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeTextContainer(at:)
  */
  @objc (removeTextContainerAtIndex:) func removeTextContainer(at: Int)

  /**
    - jsName: replaceTextStorage
    - name: replaceTextStorage:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func replaceTextStorage(_: NSTextStorage)

  /**
    - jsName: rulerAccessoryView
    - name: rulerAccessoryViewForTextView:paragraphStyle:ruler:enabled:
    - argLabels: for, paragraphStyle, ruler, enabled
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerAccessoryView(for:paragraphStyle:ruler:enabled:)
  */
  @objc (rulerAccessoryViewForTextView:paragraphStyle:ruler:enabled:) func rulerAccessoryView(`for`: NSTextView, paragraphStyle: NSParagraphStyle, ruler: NSRulerView, enabled: Bool) -> NSView?

  /**
    - jsName: rulerMarkers
    - name: rulerMarkersForTextView:paragraphStyle:ruler:
    - argLabels: for, paragraphStyle, ruler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerMarkers(for:paragraphStyle:ruler:)
  */
  @objc (rulerMarkersForTextView:paragraphStyle:ruler:) func rulerMarkers(`for`: NSTextView, paragraphStyle: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]

  /**
    - jsName: setAttachmentSize
    - name: setAttachmentSize:forGlyphRange:
    - argLabels: forGlyphRange
    - constructorTokens: 
  */
  @objc func setAttachmentSize(_: CGSize, forGlyphRange: NSRange)

  /**
    - jsName: setBoundsRect
    - name: setBoundsRect:forTextBlock:glyphRange:
    - argLabels: _, for, glyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setBoundsRect(_:for:glyphRange:)
  */
  @objc (setBoundsRect:forTextBlock:glyphRange:) func setBoundsRect(_: CGRect, `for`: NSTextBlock, glyphRange: NSRange)

  /**
    - jsName: setDrawsOutsideLineFragment
    - name: setDrawsOutsideLineFragment:forGlyphAtIndex:
    - argLabels: _, forGlyphAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setDrawsOutsideLineFragment(_:forGlyphAt:)
  */
  @objc (setDrawsOutsideLineFragment:forGlyphAtIndex:) func setDrawsOutsideLineFragment(_: Bool, forGlyphAt: Int)

  /**
    - jsName: setExtraLineFragmentRect
    - name: setExtraLineFragmentRect:usedRect:textContainer:
    - argLabels: usedRect, textContainer
    - constructorTokens: 
  */
  @objc func setExtraLineFragmentRect(_: CGRect, usedRect: CGRect, textContainer: NSTextContainer)

  /**
    - jsName: setGlyphs
    - name: setGlyphs:properties:characterIndexes:font:forGlyphRange:
    - argLabels: properties, characterIndexes, font, forGlyphRange
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func setGlyphs(_: UnsafePointer<CGGlyph>, properties: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes: UnsafePointer<Int>, font: NSFont, forGlyphRange: NSRange)

  /**
    - jsName: setLayoutRect
    - name: setLayoutRect:forTextBlock:glyphRange:
    - argLabels: _, for, glyphRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setLayoutRect(_:for:glyphRange:)
  */
  @objc (setLayoutRect:forTextBlock:glyphRange:) func setLayoutRect(_: CGRect, `for`: NSTextBlock, glyphRange: NSRange)

  /**
    - jsName: setLineFragmentRect
    - name: setLineFragmentRect:forGlyphRange:usedRect:
    - argLabels: forGlyphRange, usedRect
    - constructorTokens: 
  */
  @objc func setLineFragmentRect(_: CGRect, forGlyphRange: NSRange, usedRect: CGRect)

  /**
    - jsName: setLocation
    - name: setLocation:forStartOfGlyphRange:
    - argLabels: forStartOfGlyphRange
    - constructorTokens: 
  */
  @objc func setLocation(_: CGPoint, forStartOfGlyphRange: NSRange)

  /**
    - jsName: setNotShownAttribute
    - name: setNotShownAttribute:forGlyphAtIndex:
    - argLabels: _, forGlyphAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setNotShownAttribute(_:forGlyphAt:)
  */
  @objc (setNotShownAttribute:forGlyphAtIndex:) func setNotShownAttribute(_: Bool, forGlyphAt: Int)

  /**
    - jsName: setTemporaryAttributes
    - name: setTemporaryAttributes:forCharacterRange:
    - argLabels: forCharacterRange
    - constructorTokens: 
  */
  @objc func setTemporaryAttributes(_: [NSAttributedString.Key: Any], forCharacterRange: NSRange)

  /**
    - jsName: setTextContainer
    - name: setTextContainer:forGlyphRange:
    - argLabels: forGlyphRange
    - constructorTokens: 
  */
  @objc func setTextContainer(_: NSTextContainer, forGlyphRange: NSRange)

  /**
    - jsName: showAttachmentCell
    - name: showAttachmentCell:inRect:characterIndex:
    - argLabels: _, in, characterIndex
    - constructorTokens: 
    - obsoleted: 3
    - renamed: showAttachmentCell(_:in:characterIndex:)
  */
  @objc (showAttachmentCell:inRect:characterIndex:) func showAttachmentCell(_: NSCell, in: CGRect, characterIndex: Int)

  /**
    - jsName: showCGGlyphs
    - name: showCGGlyphs:positions:count:font:textMatrix:attributes:inContext:
    - argLabels: _, positions, count, font, textMatrix, attributes, in
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: showCGGlyphs(_:positions:count:font:textMatrix:attributes:in:)
    - Introduced: 10.15
  */
  @objc (showCGGlyphs:positions:count:font:textMatrix:attributes:inContext:) @available(OSX 10.15, *) func showCGGlyphs(_: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count: Int, font: NSFont, textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key: Any], in: CGContext)

  /**
    - jsName: strikethroughGlyphRange
    - name: strikethroughGlyphRange:strikethroughType:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
    - argLabels: strikethroughType, lineFragmentRect, lineFragmentGlyphRange, containerOrigin
    - constructorTokens: 
  */
  @objc func strikethroughGlyphRange(_: NSRange, strikethroughType: NSUnderlineStyle, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - jsName: temporaryAttribute
    - name: temporaryAttribute:atCharacterIndex:effectiveRange:
    - argLabels: atCharacterIndex, effectiveRange
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func temporaryAttribute(_: NSAttributedString.Key, atCharacterIndex: Int, effectiveRange: NSRangePointer?) -> Any?

  /**
    - jsName: temporaryAttribute
    - name: temporaryAttribute:atCharacterIndex:longestEffectiveRange:inRange:
    - argLabels: _, atCharacterIndex, longestEffectiveRange, in
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: temporaryAttribute(_:atCharacterIndex:longestEffectiveRange:in:)
    - Introduced: 10.5
  */
  @objc (temporaryAttribute:atCharacterIndex:longestEffectiveRange:inRange:) @available(OSX 10.5, *) func temporaryAttribute(_: NSAttributedString.Key, atCharacterIndex: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> Any?

  /**
    - jsName: temporaryAttributes
    - name: temporaryAttributesAtCharacterIndex:effectiveRange:
    - argLabels: atCharacterIndex, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: temporaryAttributes(atCharacterIndex:effectiveRange:)
  */
  @objc (temporaryAttributesAtCharacterIndex:effectiveRange:) func temporaryAttributes(atCharacterIndex: Int, effectiveRange: NSRangePointer?) -> [NSAttributedString.Key: Any]

  /**
    - jsName: temporaryAttributes
    - name: temporaryAttributesAtCharacterIndex:longestEffectiveRange:inRange:
    - argLabels: atCharacterIndex, longestEffectiveRange, in
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: temporaryAttributes(atCharacterIndex:longestEffectiveRange:in:)
    - Introduced: 10.5
  */
  @objc (temporaryAttributesAtCharacterIndex:longestEffectiveRange:inRange:) @available(OSX 10.5, *) func temporaryAttributes(atCharacterIndex: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - jsName: textContainerChangedGeometry
    - name: textContainerChangedGeometry:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textContainerChangedGeometry(_: NSTextContainer)

  /**
    - jsName: textContainerChangedTextView
    - name: textContainerChangedTextView:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textContainerChangedTextView(_: NSTextContainer)

  /**
    - jsName: textContainer
    - name: textContainerForGlyphAtIndex:effectiveRange:
    - argLabels: forGlyphAt, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: textContainer(forGlyphAt:effectiveRange:)
  */
  @objc (textContainerForGlyphAtIndex:effectiveRange:) func textContainer(forGlyphAt: Int, effectiveRange: NSRangePointer?) -> NSTextContainer?

  /**
    - jsName: textContainer
    - name: textContainerForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:
    - argLabels: forGlyphAt, effectiveRange, withoutAdditionalLayout
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: textContainer(forGlyphAt:effectiveRange:withoutAdditionalLayout:)
    - Introduced: 10.0
  */
  @objc (textContainerForGlyphAtIndex:effectiveRange:withoutAdditionalLayout:) @available(OSX 10.0, *) func textContainer(forGlyphAt: Int, effectiveRange: NSRangePointer?, withoutAdditionalLayout: Bool) -> NSTextContainer?

  /**
    - jsName: truncatedGlyphRange
    - name: truncatedGlyphRangeInLineFragmentForGlyphAtIndex:
    - argLabels: inLineFragmentForGlyphAt
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: truncatedGlyphRange(inLineFragmentForGlyphAt:)
    - Introduced: 10.11
  */
  @objc (truncatedGlyphRangeInLineFragmentForGlyphAtIndex:) @available(OSX 10.11, *) func truncatedGlyphRange(inLineFragmentForGlyphAt: Int) -> NSRange

  /**
    - jsName: underlineGlyphRange
    - name: underlineGlyphRange:underlineType:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:
    - argLabels: underlineType, lineFragmentRect, lineFragmentGlyphRange, containerOrigin
    - constructorTokens: 
  */
  @objc func underlineGlyphRange(_: NSRange, underlineType: NSUnderlineStyle, lineFragmentRect: CGRect, lineFragmentGlyphRange: NSRange, containerOrigin: CGPoint)

  /**
    - jsName: usedRect
    - name: usedRectForTextContainer:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: usedRect(for:)
  */
  @objc (usedRectForTextContainer:) func usedRect(`for`: NSTextContainer) -> CGRect

  // Own Instance Properties

  /**
    - jsName: allowsNonContiguousLayout
    - name: allowsNonContiguousLayout
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowsNonContiguousLayout: Bool { @objc get @objc (setAllowsNonContiguousLayout:) set }

  /**
    - jsName: backgroundLayoutEnabled
    - name: backgroundLayoutEnabled
    - argLabels: 
  */
  @objc var backgroundLayoutEnabled: Bool { @objc get @objc (setBackgroundLayoutEnabled:) set }

  /**
    - jsName: defaultAttachmentScaling
    - name: defaultAttachmentScaling
    - argLabels: 
  */
  @objc var defaultAttachmentScaling: NSImageScaling { @objc get @objc (setDefaultAttachmentScaling:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSLayoutManagerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: extraLineFragmentRect
    - name: extraLineFragmentRect
    - argLabels: 
  */
  @objc var extraLineFragmentRect: CGRect { @objc get }

  /**
    - jsName: extraLineFragmentTextContainer
    - name: extraLineFragmentTextContainer
    - argLabels: 
  */
  @objc var extraLineFragmentTextContainer: NSTextContainer? { @objc get }

  /**
    - jsName: extraLineFragmentUsedRect
    - name: extraLineFragmentUsedRect
    - argLabels: 
  */
  @objc var extraLineFragmentUsedRect: CGRect { @objc get }

  /**
    - jsName: firstTextView
    - name: firstTextView
    - argLabels: 
  */
  @objc var firstTextView: NSTextView? { @objc get }

  /**
    - jsName: glyphGenerator
    - name: glyphGenerator
    - argLabels: 
  */
  @objc var glyphGenerator: NSGlyphGenerator { @objc get @objc (setGlyphGenerator:) set }

  /**
    - jsName: hasNonContiguousLayout
    - name: hasNonContiguousLayout
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var hasNonContiguousLayout: Bool { @objc get }

  /**
    - jsName: limitsLayoutForSuspiciousContents
    - name: limitsLayoutForSuspiciousContents
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var limitsLayoutForSuspiciousContents: Bool { @objc get @objc (setLimitsLayoutForSuspiciousContents:) set }

  /**
    - jsName: numberOfGlyphs
    - name: numberOfGlyphs
    - argLabels: 
  */
  @objc var numberOfGlyphs: Int { @objc get }

  /**
    - jsName: showsControlCharacters
    - name: showsControlCharacters
    - argLabels: 
  */
  @objc var showsControlCharacters: Bool { @objc get @objc (setShowsControlCharacters:) set }

  /**
    - jsName: showsInvisibleCharacters
    - name: showsInvisibleCharacters
    - argLabels: 
  */
  @objc var showsInvisibleCharacters: Bool { @objc get @objc (setShowsInvisibleCharacters:) set }

  /**
    - jsName: textContainers
    - name: textContainers
    - argLabels: 
  */
  @objc var textContainers: [NSTextContainer] { @objc get }

  /**
    - jsName: textStorage
    - name: textStorage
    - argLabels: 
  */
  @objc var textStorage: NSTextStorage? { @objc get @objc (setTextStorage:) set }

  /**
    - jsName: textViewForBeginningOfSelection
    - name: textViewForBeginningOfSelection
    - argLabels: 
  */
  @objc var textViewForBeginningOfSelection: NSTextView? { @objc get }

  /**
    - jsName: typesetter
    - name: typesetter
    - argLabels: 
  */
  @objc var typesetter: NSTypesetter { @objc get @objc (setTypesetter:) set }

  /**
    - jsName: typesetterBehavior
    - name: typesetterBehavior
    - argLabels: 
  */
  @objc var typesetterBehavior: NSLayoutManager.TypesetterBehavior { @objc get @objc (setTypesetterBehavior:) set }

  /**
    - jsName: usesDefaultHyphenation
    - name: usesDefaultHyphenation
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var usesDefaultHyphenation: Bool { @objc get @objc (setUsesDefaultHyphenation:) set }

  /**
    - jsName: usesFontLeading
    - name: usesFontLeading
    - argLabels: 
  */
  @objc var usesFontLeading: Bool { @objc get @objc (setUsesFontLeading:) set }
}

extension NSLayoutManager: NSLayoutManagerExports {
}
