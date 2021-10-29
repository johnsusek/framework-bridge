import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewTransitionLayout
    - name: NSCollectionViewTransitionLayout
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSCollectionViewTransitionLayout) protocol NSCollectionViewTransitionLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithCurrentLayout
    - name: initWithCurrentLayout:nextLayout:
    - argLabels: nextLayout
    - constructorTokens: currentLayout, nextLayout
  */
  @objc static func createWithCurrentLayout(_: NSCollectionViewLayout, nextLayout: NSCollectionViewLayout) -> Self

  /**
    - jsName: updateValue
    - name: updateValue:forAnimatedKey:
    - argLabels: forAnimatedKey
    - constructorTokens: 
  */
  @objc func updateValue(_: CGFloat, forAnimatedKey: NSCollectionViewTransitionLayout.AnimatedKey)

  /**
    - jsName: value
    - name: valueForAnimatedKey:
    - argLabels: forAnimatedKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: value(forAnimatedKey:)
  */
  @objc (valueForAnimatedKey:) func value(forAnimatedKey: NSCollectionViewTransitionLayout.AnimatedKey) -> CGFloat

  // Own Instance Properties

  /**
    - jsName: currentLayout
    - name: currentLayout
    - argLabels: 
  */
  @objc var currentLayout: NSCollectionViewLayout { @objc get }

  /**
    - jsName: nextLayout
    - name: nextLayout
    - argLabels: 
  */
  @objc var nextLayout: NSCollectionViewLayout { @objc get }

  /**
    - jsName: transitionProgress
    - name: transitionProgress
    - argLabels: 
  */
  @objc var transitionProgress: CGFloat { @objc get @objc (setTransitionProgress:) set }
}

extension NSCollectionViewTransitionLayout: NSCollectionViewTransitionLayoutExports {
  @objc public static func createWithCurrentLayout(_ currentLayout: NSCollectionViewLayout, nextLayout: NSCollectionViewLayout) -> Self {
    return self.init(currentLayout: currentLayout, nextLayout: nextLayout)
  }

}
