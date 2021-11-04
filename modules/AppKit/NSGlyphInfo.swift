import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc @available(OSX 10.13, *) static func create(cgGlyph: CGGlyph, `for`: NSFont, baseString: String) -> NSGlyphInfo?

  /**
    - Selector: glyphInfoWithCharacterIdentifier:collection:baseString:
  */
  @objc static func create(characterIdentifier: Int, collection: NSCharacterCollection, baseString: String) -> NSGlyphInfo?

  /**
    - Selector: glyphInfoWithGlyph:forFont:baseString:
  */
  @objc static func create(glyph: NSGlyph, `for`: NSFont, baseString: String) -> NSGlyphInfo?

  /**
    - Selector: glyphInfoWithGlyphName:forFont:baseString:
  */
  @objc static func create(glyphName: String, `for`: NSFont, baseString: String) -> NSGlyphInfo?

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
  @objc public static func create(cgGlyph: CGGlyph, for: NSFont, baseString: String) -> NSGlyphInfo? {
    return self.init(cgGlyph: cgGlyph, for: `for`, baseString: baseString)
  }

  @objc public static func create(characterIdentifier: Int, collection: NSCharacterCollection, baseString: String) -> NSGlyphInfo? {
    return self.init(characterIdentifier: characterIdentifier, collection: collection, baseString: baseString)
  }

  @objc public static func create(glyph: NSGlyph, for: NSFont, baseString: String) -> NSGlyphInfo? {
    return self.init(glyph: glyph, for: `for`, baseString: baseString)
  }

  @objc public static func create(glyphName: String, for: NSFont, baseString: String) -> NSGlyphInfo? {
    return self.init(glyphName: glyphName, for: `for`, baseString: baseString)
  }

}
