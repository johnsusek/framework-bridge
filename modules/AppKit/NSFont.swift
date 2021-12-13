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
    - Selector: NSFont
  */

@objc(NSFont) protocol NSFontExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: boldSystemFontOfSize:
  */
  @objc (boldSystemFontOfSize:) static func boldSystemFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: controlContentFontOfSize:
  */
  @objc (controlContentFontOfSize:) static func controlContentFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: fontWithDescriptor:size:
  */
  @objc static func createWithDescriptor_Size(_ descriptor: NSFontDescriptor, _ size: CGFloat) -> NSFont?

  /**
    - Selector: fontWithDescriptor:textTransform:
  */
  @objc static func createWithDescriptor_TextTransform(_ descriptor: NSFontDescriptor, _ textTransform: AffineTransform?) -> NSFont?

  /**
    - Selector: fontWithName:matrix:
  */
  @objc static func createWithName_Matrix(_ name: String, _ matrix: UnsafePointer<CGFloat>) -> NSFont?

  /**
    - Selector: fontWithName:size:
  */
  @objc static func createWithName_Size(_ name: String, _ size: CGFloat) -> NSFont?

  /**
    - Selector: labelFontOfSize:
  */
  @objc (labelFontOfSize:) static func labelFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: menuBarFontOfSize:
  */
  @objc (menuBarFontOfSize:) static func menuBarFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: menuFontOfSize:
  */
  @objc (menuFontOfSize:) static func menuFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: messageFontOfSize:
  */
  @objc (messageFontOfSize:) static func messageFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: monospacedDigitSystemFontOfSize:weight:
    - Introduced: 10.11
  */
  @objc (monospacedDigitSystemFontOfSize:weight:) @available(OSX 10.11, *) static func monospacedDigitSystemFont(ofSize: CGFloat, weight: NSFont.Weight) -> NSFont

  /**
    - Selector: monospacedSystemFontOfSize:weight:
    - Introduced: 10.15
  */
  @objc (monospacedSystemFontOfSize:weight:) @available(OSX 10.15, *) static func monospacedSystemFont(ofSize: CGFloat, weight: NSFont.Weight) -> NSFont

  /**
    - Selector: paletteFontOfSize:
  */
  @objc (paletteFontOfSize:) static func paletteFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: setUserFixedPitchFont:
  */
  @objc (setUserFixedPitchFont:) static func setUserFixedPitch(_ p0: NSFont?)

  /**
    - Selector: setUserFont:
  */
  @objc (setUserFont:) static func setUser(_ p0: NSFont?)

  /**
    - Selector: systemFontOfSize:
  */
  @objc (systemFontOfSize:) static func systemFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: systemFontOfSize:weight:
    - Introduced: 10.11
  */
  @objc (systemFontOfSize:weight:) @available(OSX 10.11, *) static func systemFont(ofSize: CGFloat, weight: NSFont.Weight) -> NSFont

  /**
    - Selector: systemFontSizeForControlSize:
  */
  @objc (systemFontSizeForControlSize:) static func systemFontSize(`for`: NSControl.ControlSize) -> CGFloat

  /**
    - Selector: titleBarFontOfSize:
  */
  @objc (titleBarFontOfSize:) static func titleBarFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: toolTipsFontOfSize:
  */
  @objc (toolTipsFontOfSize:) static func toolTipsFont(ofSize: CGFloat) -> NSFont

  /**
    - Selector: userFixedPitchFontOfSize:
  */
  @objc (userFixedPitchFontOfSize:) static func userFixedPitchFont(ofSize: CGFloat) -> NSFont?

  /**
    - Selector: userFontOfSize:
  */
  @objc (userFontOfSize:) static func userFont(ofSize: CGFloat) -> NSFont?

  // Own Static Properties

  /**
    - Selector: labelFontSize
  */
  @objc static var labelFontSize: CGFloat { @objc get }

  /**
    - Selector: smallSystemFontSize
  */
  @objc static var smallSystemFontSize: CGFloat { @objc get }

  /**
    - Selector: systemFontSize
  */
  @objc static var systemFontSize: CGFloat { @objc get }

  // Instance Methods

  /**
    - Selector: advancementForCGGlyph:
    - Introduced: 10.13
  */
  @objc (advancementForCGGlyph:) @available(OSX 10.13, *) func advancement(forCGGlyph: CGGlyph) -> CGSize

  /**
    - Selector: advancementForGlyph:
  */
  @objc (advancementForGlyph:) func advancement(forGlyph: NSGlyph) -> CGSize

  /**
    - Selector: boundingRectForCGGlyph:
    - Introduced: 10.13
  */
  @objc (boundingRectForCGGlyph:) @available(OSX 10.13, *) func boundingRect(forCGGlyph: CGGlyph) -> CGRect

  /**
    - Selector: boundingRectForGlyph:
  */
  @objc (boundingRectForGlyph:) func boundingRect(forGlyph: NSGlyph) -> CGRect

  /**
    - Selector: getAdvancements:forCGGlyphs:count:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func getAdvancements(_ p0: NSSizeArray, forCGGlyphs: UnsafePointer<CGGlyph>, count: Int)

  /**
    - Selector: getAdvancements:forGlyphs:count:
  */
  @objc func getAdvancements(_ p0: NSSizeArray, forGlyphs: UnsafePointer<NSGlyph>, count: Int)

  /**
    - Selector: getAdvancements:forPackedGlyphs:length:
  */
  @objc func getAdvancements(_ p0: NSSizeArray, forPackedGlyphs: UnsafeRawPointer, length: Int)

  /**
    - Selector: getBoundingRects:forCGGlyphs:count:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func getBoundingRects(_ p0: NSRectArray, forCGGlyphs: UnsafePointer<CGGlyph>, count: Int)

  /**
    - Selector: getBoundingRects:forGlyphs:count:
  */
  @objc func getBoundingRects(_ p0: NSRectArray, forGlyphs: UnsafePointer<NSGlyph>, count: Int)

  /**
    - Selector: glyphWithName:
  */
  @objc (glyphWithName:) func glyph(withName: String) -> NSGlyph

  /**
    - Selector: screenFontWithRenderingMode:
  */
  @objc (screenFontWithRenderingMode:) func screenFont(with: NSFontRenderingMode) -> NSFont

  /**
    - Selector: set
  */
  @objc func set()

  /**
    - Selector: setInContext:
  */
  @objc (setInContext:) func set(in: NSGraphicsContext)

  // Own Instance Properties

  /**
    - Selector: ascender
  */
  @objc var ascender: CGFloat { @objc get }

  /**
    - Selector: boundingRectForFont
  */
  @objc var boundingRectForFont: CGRect { @objc get }

  /**
    - Selector: capHeight
  */
  @objc var capHeight: CGFloat { @objc get }

  /**
    - Selector: coveredCharacterSet
  */
  @objc var coveredCharacterSet: CharacterSet { @objc get }

  /**
    - Selector: descender
  */
  @objc var descender: CGFloat { @objc get }

  /**
    - Selector: displayName
  */
  @objc var displayName: String? { @objc get }

  /**
    - Selector: familyName
  */
  @objc var familyName: String? { @objc get }

  /**
    - Selector: fixedPitch
  */
  @objc var isFixedPitch: Bool { @objc get }

  /**
    - Selector: fontDescriptor
  */
  @objc var fontDescriptor: NSFontDescriptor { @objc get }

  /**
    - Selector: fontName
  */
  @objc var fontName: String { @objc get }

  /**
    - Selector: italicAngle
  */
  @objc var italicAngle: CGFloat { @objc get }

  /**
    - Selector: leading
  */
  @objc var leading: CGFloat { @objc get }

  /**
    - Selector: matrix
  */
  @objc var matrix: UnsafePointer<CGFloat> { @objc get }

  /**
    - Selector: maximumAdvancement
  */
  @objc var maximumAdvancement: CGSize { @objc get }

  /**
    - Selector: mostCompatibleStringEncoding
  */
  @objc var mostCompatibleStringEncoding: UInt { @objc get }

  /**
    - Selector: numberOfGlyphs
  */
  @objc var numberOfGlyphs: Int { @objc get }

  /**
    - Selector: pointSize
  */
  @objc var pointSize: CGFloat { @objc get }

  /**
    - Selector: printerFont
  */
  @objc var printer: NSFont { @objc (printerFont) get }

  /**
    - Selector: renderingMode
  */
  @objc var renderingMode: NSFontRenderingMode { @objc get }

  /**
    - Selector: screenFont
  */
  @objc var screen: NSFont { @objc (screenFont) get }

  /**
    - Selector: textTransform
  */
  @objc var textTransform: AffineTransform { @objc get }

  /**
    - Selector: underlinePosition
  */
  @objc var underlinePosition: CGFloat { @objc get }

  /**
    - Selector: underlineThickness
  */
  @objc var underlineThickness: CGFloat { @objc get }

  /**
    - Selector: vertical
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isVertical: Bool { @objc get }

  /**
    - Selector: verticalFont
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var vertical: NSFont { @objc (verticalFont) get }

  /**
    - Selector: xHeight
  */
  @objc var xHeight: CGFloat { @objc get }
}

extension NSFont: NSFontExports {

  /**
    - Selector: fontWithDescriptor:size:
  */
  @objc public static func createWithDescriptor_Size(_ descriptor: NSFontDescriptor, _ size: CGFloat) -> NSFont? {
    return self.init(descriptor: descriptor, size: size)
  }


  /**
    - Selector: fontWithDescriptor:textTransform:
  */
  @objc public static func createWithDescriptor_TextTransform(_ descriptor: NSFontDescriptor, _ textTransform: AffineTransform?) -> NSFont? {
    return self.init(descriptor: descriptor, textTransform: textTransform)
  }


  /**
    - Selector: fontWithName:matrix:
  */
  @objc public static func createWithName_Matrix(_ name: String, _ matrix: UnsafePointer<CGFloat>) -> NSFont? {
    return self.init(name: name, matrix: matrix)
  }


  /**
    - Selector: fontWithName:size:
  */
  @objc public static func createWithName_Size(_ name: String, _ size: CGFloat) -> NSFont? {
    return self.init(name: name, size: size)
  }

}
