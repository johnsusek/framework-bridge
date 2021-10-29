import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGlyphInfo
    - name: NSGlyphInfo
    - argLabels: 
  */

@objc(NSGlyphInfo) protocol NSGlyphInfoExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: glyphInfoWithCGGlyph:forFont:baseString:
    - argLabels: cgGlyph, for, baseString
    - constructorTokens: 
    - available: 10.13
    - unavailable: true
    - renamed: init(cgGlyph:for:baseString:)
    - message: Not available in Swift
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func create(cgGlyph: CGGlyph, `for`: NSFont, baseString: String) -> NSGlyphInfo?

  /**
    - jsName: create
    - name: glyphInfoWithCharacterIdentifier:collection:baseString:
    - argLabels: characterIdentifier, collection, baseString
    - constructorTokens: 
    - unavailable: true
    - renamed: init(characterIdentifier:collection:baseString:)
    - message: Not available in Swift
  */
  @objc static func create(characterIdentifier: Int, collection: NSCharacterCollection, baseString: String) -> NSGlyphInfo?

  /**
    - jsName: create
    - name: glyphInfoWithGlyph:forFont:baseString:
    - argLabels: glyph, for, baseString
    - constructorTokens: 
    - unavailable: true
    - renamed: init(glyph:for:baseString:)
    - message: Not available in Swift
  */
  @objc static func create(glyph: NSGlyph, `for`: NSFont, baseString: String) -> NSGlyphInfo?

  /**
    - jsName: create
    - name: glyphInfoWithGlyphName:forFont:baseString:
    - argLabels: glyphName, for, baseString
    - constructorTokens: 
    - unavailable: true
    - renamed: init(glyphName:for:baseString:)
    - message: Not available in Swift
  */
  @objc static func create(glyphName: String, `for`: NSFont, baseString: String) -> NSGlyphInfo?

  // Own Instance Properties

  /**
    - jsName: baseString
    - name: baseString
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var baseString: String { @objc get }

  /**
    - jsName: characterCollection
    - name: characterCollection
    - argLabels: 
  */
  @objc var characterCollection: NSCharacterCollection { @objc get }

  /**
    - jsName: characterIdentifier
    - name: characterIdentifier
    - argLabels: 
  */
  @objc var characterIdentifier: Int { @objc get }

  /**
    - jsName: glyphID
    - name: glyphID
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var glyphID: CGGlyph { @objc get }

  /**
    - jsName: glyphName
    - name: glyphName
    - argLabels: 
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
