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
    - Selector: NSGlyphInfo
  */

@objc(NSGlyphInfo) protocol NSGlyphInfoExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: glyphInfoWithCGGlyph:forFont:baseString:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithCGGlyphWithForFontWithBaseString(_ cgGlyph: CGGlyph, _ `for`: NSFont, _ baseString: String) -> NSGlyphInfo?

  /**
    - Selector: glyphInfoWithCharacterIdentifier:collection:baseString:
  */
  @objc static func createWithCharacterIdentifierWithCollectionWithBaseString(_ characterIdentifier: Int, _ collection: NSCharacterCollection, _ baseString: String) -> NSGlyphInfo?

  /**
    - Selector: glyphInfoWithGlyph:forFont:baseString:
  */
  @objc static func createWithGlyphWithForFontWithBaseString(_ glyph: NSGlyph, _ `for`: NSFont, _ baseString: String) -> NSGlyphInfo?

  /**
    - Selector: glyphInfoWithGlyphName:forFont:baseString:
  */
  @objc static func createWithGlyphNameWithForFontWithBaseString(_ glyphName: String, _ `for`: NSFont, _ baseString: String) -> NSGlyphInfo?

  // Own Instance Properties

  /**
    - Selector: baseString
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var baseString: String { @objc get }

  /**
    - Selector: characterCollection
  */
  @objc var characterCollection: NSCharacterCollection { @objc get }

  /**
    - Selector: characterIdentifier
  */
  @objc var characterIdentifier: Int { @objc get }

  /**
    - Selector: glyphID
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var glyphID: CGGlyph { @objc get }

  /**
    - Selector: glyphName
  */
  @objc var glyphName: String? { @objc get }
}

extension NSGlyphInfo: NSGlyphInfoExports {

  /**
    - Selector: glyphInfoWithCGGlyph:forFont:baseString:
    - Introduced: 10.13
  */
  @objc public static func createWithCGGlyphWithForFontWithBaseString(_ cgGlyph: CGGlyph, _ `for`: NSFont, _ baseString: String) -> NSGlyphInfo? {
    return self.init(cgGlyph: cgGlyph, for: `for`, baseString: baseString)
  }


  /**
    - Selector: glyphInfoWithCharacterIdentifier:collection:baseString:
  */
  @objc public static func createWithCharacterIdentifierWithCollectionWithBaseString(_ characterIdentifier: Int, _ collection: NSCharacterCollection, _ baseString: String) -> NSGlyphInfo? {
    return self.init(characterIdentifier: characterIdentifier, collection: collection, baseString: baseString)
  }


  /**
    - Selector: glyphInfoWithGlyph:forFont:baseString:
  */
  @objc public static func createWithGlyphWithForFontWithBaseString(_ glyph: NSGlyph, _ `for`: NSFont, _ baseString: String) -> NSGlyphInfo? {
    return self.init(glyph: glyph, for: `for`, baseString: baseString)
  }


  /**
    - Selector: glyphInfoWithGlyphName:forFont:baseString:
  */
  @objc public static func createWithGlyphNameWithForFontWithBaseString(_ glyphName: String, _ `for`: NSFont, _ baseString: String) -> NSGlyphInfo? {
    return self.init(glyphName: glyphName, for: `for`, baseString: baseString)
  }

}
