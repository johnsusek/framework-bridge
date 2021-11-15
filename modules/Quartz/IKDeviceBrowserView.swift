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
    - Selector: IKDeviceBrowserView
    - Introduced: 10.6
  */

@objc(IKDeviceBrowserView) protocol IKDeviceBrowserViewExports: JSExport, NSViewExports {
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
  @objc var delegate: IKDeviceBrowserViewDelegate { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displaysLocalCameras
  */
  @objc var displaysLocalCameras: Bool { @objc get @objc (setDisplaysLocalCameras:) set }

  /**
    - Selector: displaysLocalScanners
  */
  @objc var displaysLocalScanners: Bool { @objc get @objc (setDisplaysLocalScanners:) set }

  /**
    - Selector: displaysNetworkCameras
  */
  @objc var displaysNetworkCameras: Bool { @objc get @objc (setDisplaysNetworkCameras:) set }

  /**
    - Selector: displaysNetworkScanners
  */
  @objc var displaysNetworkScanners: Bool { @objc get @objc (setDisplaysNetworkScanners:) set }

  /**
    - Selector: mode
  */
  @objc var mode: IKDeviceBrowserViewDisplayMode { @objc get @objc (setMode:) set }

  /**
    - Selector: selectedDevice
  */
  @objc var selectedDevice: ICDevice { @objc get }
}

extension IKDeviceBrowserView: IKDeviceBrowserViewExports {
}
