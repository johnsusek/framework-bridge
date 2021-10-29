import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextStorage
    - name: NSTextStorage
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSTextStorage) protocol NSTextStorageExports: JSExport, NSMutableAttributedStringExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addLayoutManager
    - name: addLayoutManager:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addLayoutManager(_: NSLayoutManager)

  /**
    - jsName: edited
    - name: edited:range:changeInLength:
    - argLabels: range, changeInLength
    - constructorTokens: 
  */
  @objc func edited(_: NSTextStorageEditActions, range: NSRange, changeInLength: Int)

  /**
    - jsName: ensureAttributesAreFixed
    - name: ensureAttributesAreFixedInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ensureAttributesAreFixed(in:)
  */
  @objc (ensureAttributesAreFixedInRange:) func ensureAttributesAreFixed(in: NSRange)

  /**
    - jsName: invalidateAttributes
    - name: invalidateAttributesInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateAttributes(in:)
  */
  @objc (invalidateAttributesInRange:) func invalidateAttributes(in: NSRange)

  /**
    - jsName: processEditing
    - name: processEditing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func processEditing()

  /**
    - jsName: removeLayoutManager
    - name: removeLayoutManager:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeLayoutManager(_: NSLayoutManager)

  // Own Instance Properties

  /**
    - jsName: attributeRuns
    - name: attributeRuns
    - argLabels: 
  */
  @objc var attributeRuns: [NSTextStorage] { @objc get @objc (setAttributeRuns:) set }

  /**
    - jsName: changeInLength
    - name: changeInLength
    - argLabels: 
  */
  @objc var changeInLength: Int { @objc get }

  /**
    - jsName: characters
    - name: characters
    - argLabels: 
  */
  @objc var characters: [NSTextStorage] { @objc get @objc (setCharacters:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTextStorageDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: editedMask
    - name: editedMask
    - argLabels: 
  */
  @objc var editedMask: NSTextStorageEditActions { @objc get }

  /**
    - jsName: editedRange
    - name: editedRange
    - argLabels: 
  */
  @objc var editedRange: NSRange { @objc get }

  /**
    - jsName: fixesAttributesLazily
    - name: fixesAttributesLazily
    - argLabels: 
  */
  @objc var fixesAttributesLazily: Bool { @objc get }

  /**
    - jsName: font
    - name: font
    - argLabels: 
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - jsName: foregroundColor
    - name: foregroundColor
    - argLabels: 
  */
  @objc var foregroundColor: NSColor? { @objc get @objc (setForegroundColor:) set }

  /**
    - jsName: layoutManagers
    - name: layoutManagers
    - argLabels: 
  */
  @objc var layoutManagers: [NSLayoutManager] { @objc get }

  /**
    - jsName: paragraphs
    - name: paragraphs
    - argLabels: 
  */
  @objc var paragraphs: [NSTextStorage] { @objc get @objc (setParagraphs:) set }

  /**
    - jsName: words
    - name: words
    - argLabels: 
  */
  @objc var words: [NSTextStorage] { @objc get @objc (setWords:) set }
}

extension NSTextStorage: NSTextStorageExports {
}
