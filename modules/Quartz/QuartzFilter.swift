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
    - Selector: QuartzFilter
  */

@objc(QuartzFilter) protocol QuartzFilterExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: quartzFilterWithOutputIntents:
  */
  @objc static func createWithOutputIntents(_ outputIntents: [Any]) -> QuartzFilter

  /**
    - Selector: quartzFilterWithProperties:
  */
  @objc static func createWithProperties(_ properties: [AnyHashable: Any]) -> QuartzFilter

  /**
    - Selector: quartzFilterWithURL:
  */
  @objc static func createWithUrl(_ url: URL) -> QuartzFilter

  // Instance Methods

  /**
    - Selector: applyToContext:
  */
  @objc (applyToContext:) func apply(to: CGContext) -> Bool

  /**
    - Selector: localizedName
  */
  @objc func localizedName() -> String

  /**
    - Selector: properties
  */
  @objc func properties() -> [AnyHashable: Any]

  /**
    - Selector: removeFromContext:
  */
  @objc (removeFromContext:) func remove(from: CGContext)

  /**
    - Selector: url
  */
  @objc func url() -> URL
}

extension QuartzFilter: QuartzFilterExports {

  /**
    - Selector: quartzFilterWithOutputIntents:
  */
  @objc public static func createWithOutputIntents(_ outputIntents: [Any]) -> QuartzFilter {
    return self.init(outputIntents: outputIntents)
  }


  /**
    - Selector: quartzFilterWithProperties:
  */
  @objc public static func createWithProperties(_ properties: [AnyHashable: Any]) -> QuartzFilter {
    return self.init(properties: properties)
  }


  /**
    - Selector: quartzFilterWithURL:
  */
  @objc public static func createWithUrl(_ url: URL) -> QuartzFilter {
    return self.init(url: url)
  }

}
