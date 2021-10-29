import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGlyphGenerator
    - name: NSGlyphGenerator
    - argLabels: 
  */

@objc(NSGlyphGenerator) protocol NSGlyphGeneratorExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedGlyphGenerator
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSGlyphGenerator { @objc (sharedGlyphGenerator) get }

  // Instance Methods

  /**
    - jsName: generateGlyphs
    - name: generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:
    - argLabels: for, desiredNumberOfCharacters, glyphIndex, characterIndex
    - constructorTokens: 
    - obsoleted: 3
    - renamed: generateGlyphs(for:desiredNumberOfCharacters:glyphIndex:characterIndex:)
  */
  @objc (generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:) func generateGlyphs(`for`: NSGlyphStorage, desiredNumberOfCharacters: Int, glyphIndex: UnsafeMutablePointer<Int>?, characterIndex: UnsafeMutablePointer<Int>?)
}

extension NSGlyphGenerator: NSGlyphGeneratorExports {
}
