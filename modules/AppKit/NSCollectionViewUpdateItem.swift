import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewUpdateItem
    - name: NSCollectionViewUpdateItem
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSCollectionViewUpdateItem) protocol NSCollectionViewUpdateItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: indexPathAfterUpdate
    - name: indexPathAfterUpdate
    - argLabels: 
  */
  @objc var indexPathAfterUpdate: IndexPath? { @objc get }

  /**
    - jsName: indexPathBeforeUpdate
    - name: indexPathBeforeUpdate
    - argLabels: 
  */
  @objc var indexPathBeforeUpdate: IndexPath? { @objc get }

  /**
    - jsName: updateAction
    - name: updateAction
    - argLabels: 
  */
  @objc var updateAction: NSCollectionView.UpdateAction { @objc get }
}

extension NSCollectionViewUpdateItem: NSCollectionViewUpdateItemExports {
}
