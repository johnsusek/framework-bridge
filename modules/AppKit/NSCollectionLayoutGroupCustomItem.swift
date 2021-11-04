import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutGroupCustomItem
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutGroupCustomItem) protocol NSCollectionLayoutGroupCustomItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: customItemWithFrame:
  */
  @objc static func create(frame: CGRect) -> Self

  /**
    - Selector: customItemWithFrame:zIndex:
  */
  @objc static func create(frame: CGRect, zIndex: Int) -> Self

  // Own Instance Properties

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get }

  /**
    - Selector: zIndex
  */
  @objc var zIndex: Int { @objc get }
}

extension NSCollectionLayoutGroupCustomItem: NSCollectionLayoutGroupCustomItemExports {
  @objc public static func create(frame: CGRect) -> Self {
    return self.init(frame: frame)
  }

  @objc public static func create(frame: CGRect, zIndex: Int) -> Self {
    return self.init(frame: frame, zIndex: zIndex)
  }

}
