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
    - Selector: QuartzFilterManager
  */

@objc(QuartzFilterManager) protocol QuartzFilterManagerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: filtersInDomains:
  */
  @objc (filtersInDomains:) static func filters(inDomains: [Any]) -> [Any]

  // Instance Methods

  /**
    - Selector: delegate
  */
  @objc func delegate() -> Any!

  /**
    - Selector: filterPanel
  */
  @objc func filterPanel() -> NSPanel

  /**
    - Selector: filterView
  */
  @objc func filterView() -> QuartzFilterView

  /**
    - Selector: importFilter:
  */
  @objc func importFilter(_ p0: [AnyHashable: Any]) -> QuartzFilter

  /**
    - Selector: selectFilter:
  */
  @objc (selectFilter:) func select(_ p0: QuartzFilter) -> Bool

  /**
    - Selector: selectedFilter
  */
  @objc func selectedFilter() -> QuartzFilter

  /**
    - Selector: setDelegate:
  */
  @objc func setDelegate(_ p0: Any)
}

extension QuartzFilterManager: QuartzFilterManagerExports {
}
