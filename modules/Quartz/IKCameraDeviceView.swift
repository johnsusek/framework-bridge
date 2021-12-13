import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Quartz

// Interface 

  /**
    - Selector: IKCameraDeviceView
    - Introduced: 10.6
  */

@objc(IKCameraDeviceView) protocol IKCameraDeviceViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: deleteSelectedItems:
  */
  @objc func deleteSelectedItems(_ p0: Any)

  /**
    - Selector: downloadAllItems:
  */
  @objc func downloadAllItems(_ p0: Any)

  /**
    - Selector: downloadSelectedItems:
  */
  @objc func downloadSelectedItems(_ p0: Any)

  /**
    - Selector: rotateLeft:
  */
  @objc func rotateLeft(_ p0: Any)

  /**
    - Selector: rotateRight:
  */
  @objc func rotateRight(_ p0: Any)

  /**
    - Selector: selectIndexes:byExtendingSelection:
  */
  @objc (selectIndexes:byExtendingSelection:) func select(_ p0: IndexSet, byExtendingSelection: Bool)

  /**
    - Selector: selectedIndexes
  */
  @objc func selectedIndexes() -> IndexSet

  // Own Instance Properties

  /**
    - Selector: cameraDevice
  */
  @objc var cameraDevice: ICCameraDevice { @objc get @objc (setCameraDevice:) set }

  /**
    - Selector: canDeleteSelectedItems
  */
  @objc var canDeleteSelectedItems: Bool { @objc get }

  /**
    - Selector: canDownloadSelectedItems
  */
  @objc var canDownloadSelectedItems: Bool { @objc get }

  /**
    - Selector: canRotateSelectedItemsLeft
  */
  @objc var canRotateSelectedItemsLeft: Bool { @objc get }

  /**
    - Selector: canRotateSelectedItemsRight
  */
  @objc var canRotateSelectedItemsRight: Bool { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: IKCameraDeviceViewDelegate { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displaysDownloadsDirectoryControl
  */
  @objc var displaysDownloadsDirectoryControl: Bool { @objc get @objc (setDisplaysDownloadsDirectoryControl:) set }

  /**
    - Selector: displaysPostProcessApplicationControl
  */
  @objc var displaysPostProcessApplicationControl: Bool { @objc get @objc (setDisplaysPostProcessApplicationControl:) set }

  /**
    - Selector: downloadAllControlLabel
  */
  @objc var downloadAllControlLabel: String { @objc get @objc (setDownloadAllControlLabel:) set }

  /**
    - Selector: downloadSelectedControlLabel
  */
  @objc var downloadSelectedControlLabel: String { @objc get @objc (setDownloadSelectedControlLabel:) set }

  /**
    - Selector: downloadsDirectory
  */
  @objc var downloadsDirectory: URL { @objc get @objc (setDownloadsDirectory:) set }

  /**
    - Selector: hasDisplayModeIcon
  */
  @objc var hasDisplayModeIcon: Bool { @objc get @objc (setHasDisplayModeIcon:) set }

  /**
    - Selector: hasDisplayModeTable
  */
  @objc var hasDisplayModeTable: Bool { @objc get @objc (setHasDisplayModeTable:) set }

  /**
    - Selector: iconSize
  */
  @objc var iconSize: Int { @objc get @objc (setIconSize:) set }

  /**
    - Selector: mode
  */
  @objc var mode: IKCameraDeviceViewDisplayMode { @objc get @objc (setMode:) set }

  /**
    - Selector: postProcessApplication
  */
  @objc var postProcessApplication: URL { @objc get @objc (setPostProcessApplication:) set }

  /**
    - Selector: transferMode
  */
  @objc var transferMode: IKCameraDeviceViewTransferMode { @objc get @objc (setTransferMode:) set }
}

extension IKCameraDeviceView: IKCameraDeviceViewExports {
}
