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
    - Selector: NSCollectionViewUpdateItem
    - Introduced: 10.11
  */

@objc(NSCollectionViewUpdateItem) protocol NSCollectionViewUpdateItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: indexPathAfterUpdate
  */
  @objc var indexPathAfterUpdate: IndexPath? { @objc get }

  /**
    - Selector: indexPathBeforeUpdate
  */
  @objc var indexPathBeforeUpdate: IndexPath? { @objc get }

  /**
    - Selector: updateAction
  */
  @objc var updateAction: NSCollectionView.UpdateAction { @objc get }
}

extension NSCollectionViewUpdateItem: NSCollectionViewUpdateItemExports {
}
