import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutGroupCustomItem
    - name: NSCollectionLayoutGroupCustomItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutGroupCustomItem) protocol NSCollectionLayoutGroupCustomItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: customItemWithFrame:
    - argLabels: frame
    - constructorTokens: 
    - unavailable: true
    - renamed: init(frame:)
    - message: Not available in Swift
  */
  @objc static func create(frame: CGRect) -> Self

  /**
    - jsName: create
    - name: customItemWithFrame:zIndex:
    - argLabels: frame, zIndex
    - constructorTokens: 
    - unavailable: true
    - renamed: init(frame:zIndex:)
    - message: Not available in Swift
  */
  @objc static func create(frame: CGRect, zIndex: Int) -> Self

  // Own Instance Properties

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get }

  /**
    - jsName: zIndex
    - name: zIndex
    - argLabels: 
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
