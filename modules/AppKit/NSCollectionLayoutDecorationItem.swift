import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutDecorationItem
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutDecorationItem) protocol NSCollectionLayoutDecorationItemExports: JSExport, NSCollectionLayoutItemExports {
  // Static Methods

  /**
    - Selector: backgroundDecorationItemWithElementKind:
  */
  @objc static func background(elementKind: String) -> Self

  // Own Instance Properties

  /**
    - Selector: elementKind
  */
  @objc var elementKind: String { @objc get }

  /**
    - Selector: zIndex
  */
  @objc var zIndex: Int { @objc get @objc (setZIndex:) set }
}

extension NSCollectionLayoutDecorationItem: NSCollectionLayoutDecorationItemExports {
  @objc public static func background(elementKind: String) -> Self {
    return self.background(elementKind: elementKind)
  }

}
