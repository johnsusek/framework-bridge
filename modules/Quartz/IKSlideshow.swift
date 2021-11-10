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
    - Selector: IKSlideshow
  */

@objc(IKSlideshow) protocol IKSlideshowExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canExportToApplication:
  */
  @objc (canExportToApplication:) static func canExport(toApplication: String) -> Bool

  /**
    - Selector: exportSlideshowItem:toApplication:
  */
  @objc (exportSlideshowItem:toApplication:) static func exportItem(_: Any, toApplication: String)

  /**
    - Selector: sharedSlideshow
  */
  @objc (sharedSlideshow) static func shared() -> IKSlideshow

  // Instance Methods

  /**
    - Selector: indexOfCurrentSlideshowItem
  */
  @objc func indexOfCurrentSlideshowItem() -> Int

  /**
    - Selector: reloadData
  */
  @objc func reloadData()

  /**
    - Selector: reloadSlideshowItemAtIndex:
  */
  @objc (reloadSlideshowItemAtIndex:) func reloadItem(at: Int)

  /**
    - Selector: runSlideshowWithDataSource:inMode:options:
  */
  @objc (runSlideshowWithDataSource:inMode:options:) func run(with: IKSlideshowDataSource, inMode: String, options: [AnyHashable: Any])

  /**
    - Selector: stopSlideshow:
  */
  @objc (stopSlideshow:) func stop(_: Any)

  // Own Instance Properties

  /**
    - Selector: autoPlayDelay
  */
  @objc var autoPlayDelay: TimeInterval { @objc get @objc (setAutoPlayDelay:) set }
}

extension IKSlideshow: IKSlideshowExports {
}
