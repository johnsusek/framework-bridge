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
    - Selector: NSText
  */

@objc(NSText) protocol NSTextExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: RTFDFromRange:
  */
  @objc (RTFDFromRange:) func rtfd(from: NSRange) -> Data?

  /**
    - Selector: RTFFromRange:
  */
  @objc (RTFFromRange:) func rtf(from: NSRange) -> Data?

  /**
    - Selector: alignCenter:
  */
  @objc func alignCenter(_ p0: Any?)

  /**
    - Selector: alignLeft:
  */
  @objc func alignLeft(_ p0: Any?)

  /**
    - Selector: alignRight:
  */
  @objc func alignRight(_ p0: Any?)

  /**
    - Selector: checkSpelling:
  */
  @objc func checkSpelling(_ p0: Any?)

  /**
    - Selector: copyFont:
  */
  @objc func copyFont(_ p0: Any?)

  /**
    - Selector: copyRuler:
  */
  @objc func copyRuler(_ p0: Any?)

  /**
    - Selector: cut:
  */
  @objc func cut(_ p0: Any?)

  /**
    - Selector: delete:
  */
  @objc func delete(_ p0: Any?)

  /**
    - Selector: paste:
  */
  @objc func paste(_ p0: Any?)

  /**
    - Selector: pasteFont:
  */
  @objc func pasteFont(_ p0: Any?)

  /**
    - Selector: pasteRuler:
  */
  @objc func pasteRuler(_ p0: Any?)

  /**
    - Selector: readRTFDFromFile:
  */
  @objc (readRTFDFromFile:) func readRTFD(fromFile: String) -> Bool

  /**
    - Selector: replaceCharactersInRange:withRTF:
  */
  @objc (replaceCharactersInRange:withRTF:) func replaceCharacters(in: NSRange, withRTF: Data)

  /**
    - Selector: replaceCharactersInRange:withRTFD:
  */
  @objc (replaceCharactersInRange:withRTFD:) func replaceCharacters(in: NSRange, withRTFD: Data)

  /**
    - Selector: replaceCharactersInRange:withString:
  */
  @objc (replaceCharactersInRange:withString:) func replaceCharacters(in: NSRange, with: String)

  /**
    - Selector: scrollRangeToVisible:
  */
  @objc func scrollRangeToVisible(_ p0: NSRange)

  /**
    - Selector: showGuessPanel:
  */
  @objc func showGuessPanel(_ p0: Any?)

  /**
    - Selector: sizeToFit
  */
  @objc func sizeToFit()

  /**
    - Selector: superscript:
  */
  @objc func superscript(_ p0: Any?)

  /**
    - Selector: toggleRuler:
  */
  @objc func toggleRuler(_ p0: Any?)

  /**
    - Selector: underline:
  */
  @objc func underline(_ p0: Any?)

  /**
    - Selector: unscript:
  */
  @objc func unscript(_ p0: Any?)

  /**
    - Selector: writeRTFDToFile:atomically:
  */
  @objc (writeRTFDToFile:atomically:) func writeRTFD(toFile: String, atomically: Bool) -> Bool

  // Own Instance Properties

  /**
    - Selector: alignment
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: baseWritingDirection
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTextDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: fieldEditor
  */
  @objc var isFieldEditor: Bool { @objc get @objc (setFieldEditor:) set }

  /**
    - Selector: font
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - Selector: horizontallyResizable
  */
  @objc var isHorizontallyResizable: Bool { @objc get @objc (setHorizontallyResizable:) set }

  /**
    - Selector: importsGraphics
  */
  @objc var importsGraphics: Bool { @objc get @objc (setImportsGraphics:) set }

  /**
    - Selector: maxSize
  */
  @objc var maxSize: CGSize { @objc get @objc (setMaxSize:) set }

  /**
    - Selector: minSize
  */
  @objc var minSize: CGSize { @objc get @objc (setMinSize:) set }

  /**
    - Selector: richText
  */
  @objc var isRichText: Bool { @objc get @objc (setRichText:) set }

  /**
    - Selector: rulerVisible
  */
  @objc var isRulerVisible: Bool { @objc get }

  /**
    - Selector: selectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - Selector: selectedRange
  */
  @objc var selectedRange: NSRange { @objc get @objc (setSelectedRange:) set }

  /**
    - Selector: string
  */
  @objc var string: String { @objc get @objc (setString:) set }

  /**
    - Selector: textColor
  */
  @objc var textColor: NSColor? { @objc get @objc (setTextColor:) set }

  /**
    - Selector: usesFontPanel
  */
  @objc var usesFontPanel: Bool { @objc get @objc (setUsesFontPanel:) set }

  /**
    - Selector: verticallyResizable
  */
  @objc var isVerticallyResizable: Bool { @objc get @objc (setVerticallyResizable:) set }
}

extension NSText: NSTextExports {
}
