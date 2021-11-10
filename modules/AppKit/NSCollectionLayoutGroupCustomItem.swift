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
    - Selector: NSCollectionLayoutGroupCustomItem
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutGroupCustomItem) protocol NSCollectionLayoutGroupCustomItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: customItemWithFrame:
  */
  @objc static func createWithCustomItemWithFrame(_ frame: CGRect) -> Self

  /**
    - Selector: customItemWithFrame:zIndex:
  */
  @objc static func createWithCustomItemWithFrameWithZIndex(_ frame: CGRect, _ zIndex: Int) -> Self

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

  /**
    - Selector: customItemWithFrame:
  */
  @objc public static func createWithCustomItemWithFrame(_ frame: CGRect) -> Self {
    return self.init(frame: frame)
  }


  /**
    - Selector: customItemWithFrame:zIndex:
  */
  @objc public static func createWithCustomItemWithFrameWithZIndex(_ frame: CGRect, _ zIndex: Int) -> Self {
    return self.init(frame: frame, zIndex: zIndex)
  }

}
