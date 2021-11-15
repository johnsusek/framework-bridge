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
    - Selector: IKScannerDeviceView
    - Introduced: 10.6
  */

@objc(IKScannerDeviceView) protocol IKScannerDeviceViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: IKScannerDeviceViewDelegate { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displaysDownloadsDirectoryControl
  */
  @objc var displaysDownloadsDirectoryControl: Bool { @objc get @objc (setDisplaysDownloadsDirectoryControl:) set }

  /**
    - Selector: displaysPostProcessApplicationControl
  */
  @objc var displaysPostProcessApplicationControl: Bool { @objc get @objc (setDisplaysPostProcessApplicationControl:) set }

  /**
    - Selector: documentName
  */
  @objc var documentName: String { @objc get @objc (setDocumentName:) set }

  /**
    - Selector: downloadsDirectory
  */
  @objc var downloadsDirectory: URL { @objc get @objc (setDownloadsDirectory:) set }

  /**
    - Selector: hasDisplayModeAdvanced
  */
  @objc var hasDisplayModeAdvanced: Bool { @objc get @objc (setHasDisplayModeAdvanced:) set }

  /**
    - Selector: hasDisplayModeSimple
  */
  @objc var hasDisplayModeSimple: Bool { @objc get @objc (setHasDisplayModeSimple:) set }

  /**
    - Selector: mode
  */
  @objc var mode: IKScannerDeviceViewDisplayMode { @objc get @objc (setMode:) set }

  /**
    - Selector: overviewControlLabel
  */
  @objc var overviewControlLabel: String { @objc get @objc (setOverviewControlLabel:) set }

  /**
    - Selector: postProcessApplication
  */
  @objc var postProcessApplication: URL { @objc get @objc (setPostProcessApplication:) set }

  /**
    - Selector: scanControlLabel
  */
  @objc var scanControlLabel: String { @objc get @objc (setScanControlLabel:) set }

  /**
    - Selector: scannerDevice
  */
  @objc var scannerDevice: ICScannerDevice { @objc get @objc (setScannerDevice:) set }

  /**
    - Selector: transferMode
  */
  @objc var transferMode: IKScannerDeviceViewTransferMode { @objc get @objc (setTransferMode:) set }
}

extension IKScannerDeviceView: IKScannerDeviceViewExports {
}
