import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSText
    - name: NSText
    - argLabels: 
  */

@objc(NSText) protocol NSTextExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: rtfd
    - name: RTFDFromRange:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rtfd(from:)
  */
  @objc (RTFDFromRange:) func rtfd(from: NSRange) -> Data?

  /**
    - jsName: rtf
    - name: RTFFromRange:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rtf(from:)
  */
  @objc (RTFFromRange:) func rtf(from: NSRange) -> Data?

  /**
    - jsName: alignCenter
    - name: alignCenter:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func alignCenter(_: Any?)

  /**
    - jsName: alignLeft
    - name: alignLeft:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func alignLeft(_: Any?)

  /**
    - jsName: alignRight
    - name: alignRight:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func alignRight(_: Any?)

  /**
    - jsName: checkSpelling
    - name: checkSpelling:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func checkSpelling(_: Any?)

  /**
    - jsName: copyFont
    - name: copyFont:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func copyFont(_: Any?)

  /**
    - jsName: copyRuler
    - name: copyRuler:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func copyRuler(_: Any?)

  /**
    - jsName: cut
    - name: cut:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cut(_: Any?)

  /**
    - jsName: delete
    - name: delete:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func delete(_: Any?)

  /**
    - jsName: paste
    - name: paste:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func paste(_: Any?)

  /**
    - jsName: pasteFont
    - name: pasteFont:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pasteFont(_: Any?)

  /**
    - jsName: pasteRuler
    - name: pasteRuler:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pasteRuler(_: Any?)

  /**
    - jsName: readRTFD
    - name: readRTFDFromFile:
    - argLabels: fromFile
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readRTFD(fromFile:)
  */
  @objc (readRTFDFromFile:) func readRTFD(fromFile: String) -> Bool

  /**
    - jsName: replaceCharacters
    - name: replaceCharactersInRange:withRTF:
    - argLabels: in, withRTF
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceCharacters(in:withRTF:)
  */
  @objc (replaceCharactersInRange:withRTF:) func replaceCharacters(in: NSRange, withRTF: Data)

  /**
    - jsName: replaceCharacters
    - name: replaceCharactersInRange:withRTFD:
    - argLabels: in, withRTFD
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceCharacters(in:withRTFD:)
  */
  @objc (replaceCharactersInRange:withRTFD:) func replaceCharacters(in: NSRange, withRTFD: Data)

  /**
    - jsName: replaceCharacters
    - name: replaceCharactersInRange:withString:
    - argLabels: in, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceCharacters(in:with:)
  */
  @objc (replaceCharactersInRange:withString:) func replaceCharacters(in: NSRange, with: String)

  /**
    - jsName: scrollRangeToVisible
    - name: scrollRangeToVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func scrollRangeToVisible(_: NSRange)

  /**
    - jsName: showGuessPanel
    - name: showGuessPanel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func showGuessPanel(_: Any?)

  /**
    - jsName: sizeToFit
    - name: sizeToFit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeToFit()

  /**
    - jsName: superscript
    - name: superscript:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func superscript(_: Any?)

  /**
    - jsName: toggleRuler
    - name: toggleRuler:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func toggleRuler(_: Any?)

  /**
    - jsName: underline
    - name: underline:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func underline(_: Any?)

  /**
    - jsName: unscript
    - name: unscript:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unscript(_: Any?)

  /**
    - jsName: writeRTFD
    - name: writeRTFDToFile:atomically:
    - argLabels: toFile, atomically
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writeRTFD(toFile:atomically:)
  */
  @objc (writeRTFDToFile:atomically:) func writeRTFD(toFile: String, atomically: Bool) -> Bool

  // Own Instance Properties

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: baseWritingDirection
    - name: baseWritingDirection
    - argLabels: 
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTextDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: isFieldEditor
    - name: fieldEditor
    - argLabels: 
    - obsoleted: 3
    - renamed: isFieldEditor
  */
  @objc var isFieldEditor: Bool { @objc get @objc (setFieldEditor:) set }

  /**
    - jsName: font
    - name: font
    - argLabels: 
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - jsName: isHorizontallyResizable
    - name: horizontallyResizable
    - argLabels: 
    - obsoleted: 3
    - renamed: isHorizontallyResizable
  */
  @objc var isHorizontallyResizable: Bool { @objc get @objc (setHorizontallyResizable:) set }

  /**
    - jsName: importsGraphics
    - name: importsGraphics
    - argLabels: 
  */
  @objc var importsGraphics: Bool { @objc get @objc (setImportsGraphics:) set }

  /**
    - jsName: maxSize
    - name: maxSize
    - argLabels: 
  */
  @objc var maxSize: CGSize { @objc get @objc (setMaxSize:) set }

  /**
    - jsName: minSize
    - name: minSize
    - argLabels: 
  */
  @objc var minSize: CGSize { @objc get @objc (setMinSize:) set }

  /**
    - jsName: isRichText
    - name: richText
    - argLabels: 
    - obsoleted: 3
    - renamed: isRichText
  */
  @objc var isRichText: Bool { @objc get @objc (setRichText:) set }

  /**
    - jsName: isRulerVisible
    - name: rulerVisible
    - argLabels: 
    - obsoleted: 3
    - renamed: isRulerVisible
  */
  @objc var isRulerVisible: Bool { @objc get }

  /**
    - jsName: isSelectable
    - name: selectable
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - jsName: selectedRange
    - name: selectedRange
    - argLabels: 
  */
  @objc var selectedRange: NSRange { @objc get @objc (setSelectedRange:) set }

  /**
    - jsName: string
    - name: string
    - argLabels: 
  */
  @objc var string: String { @objc get @objc (setString:) set }

  /**
    - jsName: textColor
    - name: textColor
    - argLabels: 
  */
  @objc var textColor: NSColor? { @objc get @objc (setTextColor:) set }

  /**
    - jsName: usesFontPanel
    - name: usesFontPanel
    - argLabels: 
  */
  @objc var usesFontPanel: Bool { @objc get @objc (setUsesFontPanel:) set }

  /**
    - jsName: isVerticallyResizable
    - name: verticallyResizable
    - argLabels: 
    - obsoleted: 3
    - renamed: isVerticallyResizable
  */
  @objc var isVerticallyResizable: Bool { @objc get @objc (setVerticallyResizable:) set }
}

@objc protocol TextExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(Text) public class Text: NSText, TextExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSText: NSTextExports {
}
