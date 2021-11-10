import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVFoundation

// Interface 

  /**
    - Selector: AVTextStyleRule
    - Introduced: 10.9
  */

@objc(AVTextStyleRule) protocol AVTextStyleRuleExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: propertyListForTextStyleRules:
  */
  @objc (propertyListForTextStyleRules:) static func propertyList(`for`: [AVTextStyleRule]) -> Any

  /**
    - Selector: textStyleRuleWithTextMarkupAttributes:
  */
  @objc static func createWithTextStyleRuleWithTextMarkupAttributes(_ textMarkupAttributes: [String: Any]) -> AVTextStyleRule?

  /**
    - Selector: textStyleRuleWithTextMarkupAttributes:textSelector:
  */
  @objc static func createWithTextStyleRuleWithTextMarkupAttributesWithTextSelector(_ textMarkupAttributes: [String: Any], _ textSelector: String?) -> AVTextStyleRule?

  /**
    - Selector: textStyleRulesFromPropertyList:
  */
  @objc (textStyleRulesFromPropertyList:) static func textStyleRules(fromPropertyList: Any) -> [AVTextStyleRule]?

  // Own Instance Properties

  /**
    - Selector: textMarkupAttributes
  */
  @objc var textMarkupAttributes: [String: Any] { @objc get }

  /**
    - Selector: textSelector
  */
  @objc var textSelector: String? { @objc get }
}

extension AVTextStyleRule: AVTextStyleRuleExports {

  /**
    - Selector: textStyleRuleWithTextMarkupAttributes:
  */
  @objc public static func createWithTextStyleRuleWithTextMarkupAttributes(_ textMarkupAttributes: [String: Any]) -> AVTextStyleRule? {
    return self.init(textMarkupAttributes: textMarkupAttributes)
  }


  /**
    - Selector: textStyleRuleWithTextMarkupAttributes:textSelector:
  */
  @objc public static func createWithTextStyleRuleWithTextMarkupAttributesWithTextSelector(_ textMarkupAttributes: [String: Any], _ textSelector: String?) -> AVTextStyleRule? {
    return self.init(textMarkupAttributes: textMarkupAttributes, textSelector: textSelector)
  }

}
