import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionViewTransitionLayout
    - Introduced: 10.11
  */

@objc(NSCollectionViewTransitionLayout) protocol NSCollectionViewTransitionLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithCurrentLayout:nextLayout:
  */
  @objc static func createWithCurrentLayout(_: NSCollectionViewLayout, nextLayout: NSCollectionViewLayout) -> Self

  /**
    - Selector: updateValue:forAnimatedKey:
  */
  @objc func updateValue(_: CGFloat, forAnimatedKey: NSCollectionViewTransitionLayout.AnimatedKey)

  /**
    - Selector: valueForAnimatedKey:
  */
  @objc (valueForAnimatedKey:) func value(forAnimatedKey: NSCollectionViewTransitionLayout.AnimatedKey) -> CGFloat

  // Own Instance Properties

  /**
    - Selector: currentLayout
  */
  @objc var currentLayout: NSCollectionViewLayout { @objc get }

  /**
    - Selector: nextLayout
  */
  @objc var nextLayout: NSCollectionViewLayout { @objc get }

  /**
    - Selector: transitionProgress
  */
  @objc var transitionProgress: CGFloat { @objc get @objc (setTransitionProgress:) set }
}

extension NSCollectionViewTransitionLayout: NSCollectionViewTransitionLayoutExports {
  @objc public static func createWithCurrentLayout(_ currentLayout: NSCollectionViewLayout, nextLayout: NSCollectionViewLayout) -> Self {
    return self.init(currentLayout: currentLayout, nextLayout: nextLayout)
  }

}
