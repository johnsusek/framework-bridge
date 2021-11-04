import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextStorage
    - Introduced: 10.0
  */

@objc(NSTextStorage) protocol NSTextStorageExports: JSExport, NSMutableAttributedStringExports {
  // Static Methods

  /**
    - Selector: readableTypesForPasteboard:
  */
  @objc (readableTypesForPasteboard:) static func readableTypes(`for`: NSPasteboard) -> [NSPasteboard.PasteboardType]

  /**
    - Selector: readingOptionsForType:pasteboard:
  */
  @objc (readingOptionsForType:pasteboard:) static func readingOptions(forType: NSPasteboard.PasteboardType, pasteboard: NSPasteboard) -> NSPasteboard.ReadingOptions

  // Instance Methods

  /**
    - Selector: addLayoutManager:
  */
  @objc func addLayoutManager(_: NSLayoutManager)

  /**
    - Selector: edited:range:changeInLength:
  */
  @objc func edited(_: NSTextStorageEditActions, range: NSRange, changeInLength: Int)

  /**
    - Selector: ensureAttributesAreFixedInRange:
  */
  @objc (ensureAttributesAreFixedInRange:) func ensureAttributesAreFixed(in: NSRange)

  /**
    - Selector: invalidateAttributesInRange:
  */
  @objc (invalidateAttributesInRange:) func invalidateAttributes(in: NSRange)

  /**
    - Selector: processEditing
  */
  @objc func processEditing()

  /**
    - Selector: removeLayoutManager:
  */
  @objc func removeLayoutManager(_: NSLayoutManager)

  // Own Instance Properties

  /**
    - Selector: attributeRuns
  */
  @objc var attributeRuns: [NSTextStorage] { @objc get @objc (setAttributeRuns:) set }

  /**
    - Selector: changeInLength
  */
  @objc var changeInLength: Int { @objc get }

  /**
    - Selector: characters
  */
  @objc var characters: [NSTextStorage] { @objc get @objc (setCharacters:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTextStorageDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: editedMask
  */
  @objc var editedMask: NSTextStorageEditActions { @objc get }

  /**
    - Selector: editedRange
  */
  @objc var editedRange: NSRange { @objc get }

  /**
    - Selector: fixesAttributesLazily
  */
  @objc var fixesAttributesLazily: Bool { @objc get }

  /**
    - Selector: font
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - Selector: foregroundColor
  */
  @objc var foregroundColor: NSColor? { @objc get @objc (setForegroundColor:) set }

  /**
    - Selector: layoutManagers
  */
  @objc var layoutManagers: [NSLayoutManager] { @objc get }

  /**
    - Selector: paragraphs
  */
  @objc var paragraphs: [NSTextStorage] { @objc get @objc (setParagraphs:) set }

  /**
    - Selector: words
  */
  @objc var words: [NSTextStorage] { @objc get @objc (setWords:) set }
}

extension NSTextStorage: NSTextStorageExports {
}
