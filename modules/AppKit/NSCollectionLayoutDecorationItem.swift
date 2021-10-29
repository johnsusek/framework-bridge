import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutDecorationItem
    - name: NSCollectionLayoutDecorationItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutDecorationItem) protocol NSCollectionLayoutDecorationItemExports: JSExport, NSCollectionLayoutItemExports {
  // Static Methods

  /**
    - jsName: background
    - name: backgroundDecorationItemWithElementKind:
    - argLabels: elementKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: background(elementKind:)
  */
  @objc static func background(elementKind: String) -> Self

  // Own Instance Properties

  /**
    - jsName: elementKind
    - name: elementKind
    - argLabels: 
  */
  @objc var elementKind: String { @objc get }

  /**
    - jsName: zIndex
    - name: zIndex
    - argLabels: 
  */
  @objc var zIndex: Int { @objc get @objc (setZIndex:) set }
}

extension NSCollectionLayoutDecorationItem: NSCollectionLayoutDecorationItemExports {
  @objc public static func background(elementKind: String) -> Self {
    return self.background(elementKind: elementKind)
  }

}
