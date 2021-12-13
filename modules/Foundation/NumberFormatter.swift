import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSNumberFormatter
  */

@objc(NumberFormatter) protocol NumberFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: defaultFormatterBehavior
  */
  @objc static func defaultFormatterBehavior() -> NumberFormatter.Behavior

  /**
    - Selector: localizedStringFromNumber:numberStyle:
    - Introduced: 10.6
  */
  @objc (localizedStringFromNumber:numberStyle:) @available(OSX 10.6, *) static func localizedString(from: NSNumber, number: NumberFormatter.Style) -> String

  /**
    - Selector: setDefaultFormatterBehavior:
  */
  @objc static func setDefaultFormatterBehavior(_ p0: NumberFormatter.Behavior)

  // Instance Methods

  /**
    - Selector: getObjectValue:forString:range:error:
  */
  // throws - @objc func getObjectValue(obj: UnsafeMutablePointer<AnyClass?>?, forString: String, range: UnsafeMutablePointer<NSRange>?) -> Bool

  /**
    - Selector: numberFromString:
  */
  @objc (numberFromString:) func number(from: String) -> NSNumber?

  /**
    - Selector: stringFromNumber:
  */
  @objc (stringFromNumber:) func string(from: NSNumber) -> String?

  // Own Instance Properties

  /**
    - Selector: allowsFloats
  */
  @objc var allowsFloats: Bool { @objc get @objc (setAllowsFloats:) set }

  /**
    - Selector: alwaysShowsDecimalSeparator
  */
  @objc var alwaysShowsDecimalSeparator: Bool { @objc get @objc (setAlwaysShowsDecimalSeparator:) set }

  /**
    - Selector: attributedStringForNil
  */
  @objc var attributedStringForNil: NSAttributedString { @objc get @objc (setAttributedStringForNil:) set }

  /**
    - Selector: attributedStringForNotANumber
  */
  @objc var attributedStringForNotANumber: NSAttributedString { @objc get @objc (setAttributedStringForNotANumber:) set }

  /**
    - Selector: attributedStringForZero
  */
  @objc var attributedStringForZero: NSAttributedString { @objc get @objc (setAttributedStringForZero:) set }

  /**
    - Selector: currencyCode
  */
  @objc var currencyCode: String! { @objc get @objc (setCurrencyCode:) set }

  /**
    - Selector: currencyDecimalSeparator
  */
  @objc var currencyDecimalSeparator: String! { @objc get @objc (setCurrencyDecimalSeparator:) set }

  /**
    - Selector: currencyGroupingSeparator
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var currencyGroupingSeparator: String! { @objc get @objc (setCurrencyGroupingSeparator:) set }

  /**
    - Selector: currencySymbol
  */
  @objc var currencySymbol: String! { @objc get @objc (setCurrencySymbol:) set }

  /**
    - Selector: decimalSeparator
  */
  @objc var decimalSeparator: String! { @objc get @objc (setDecimalSeparator:) set }

  /**
    - Selector: exponentSymbol
  */
  @objc var exponentSymbol: String! { @objc get @objc (setExponentSymbol:) set }

  /**
    - Selector: format
  */
  @objc var format: String { @objc get @objc (setFormat:) set }

  /**
    - Selector: formatWidth
  */
  @objc var formatWidth: Int { @objc get @objc (setFormatWidth:) set }

  /**
    - Selector: formatterBehavior
  */
  @objc var formatterBehavior: NumberFormatter.Behavior { @objc get @objc (setFormatterBehavior:) set }

  /**
    - Selector: formattingContext
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var formattingContext: Formatter.Context { @objc get @objc (setFormattingContext:) set }

  /**
    - Selector: generatesDecimalNumbers
  */
  @objc var generatesDecimalNumbers: Bool { @objc get @objc (setGeneratesDecimalNumbers:) set }

  /**
    - Selector: groupingSeparator
  */
  @objc var groupingSeparator: String! { @objc get @objc (setGroupingSeparator:) set }

  /**
    - Selector: groupingSize
  */
  @objc var groupingSize: Int { @objc get @objc (setGroupingSize:) set }

  /**
    - Selector: hasThousandSeparators
  */
  @objc var hasThousandSeparators: Bool { @objc get @objc (setHasThousandSeparators:) set }

  /**
    - Selector: internationalCurrencySymbol
  */
  @objc var internationalCurrencySymbol: String! { @objc get @objc (setInternationalCurrencySymbol:) set }

  /**
    - Selector: lenient
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isLenient: Bool { @objc get @objc (setLenient:) set }

  /**
    - Selector: locale
  */
  @objc var locale: Locale! { @objc get @objc (setLocale:) set }

  /**
    - Selector: localizesFormat
  */
  @objc var localizesFormat: Bool { @objc get @objc (setLocalizesFormat:) set }

  /**
    - Selector: maximum
  */
  @objc var maximum: NSNumber? { @objc get @objc (setMaximum:) set }

  /**
    - Selector: maximumFractionDigits
  */
  @objc var maximumFractionDigits: Int { @objc get @objc (setMaximumFractionDigits:) set }

  /**
    - Selector: maximumIntegerDigits
  */
  @objc var maximumIntegerDigits: Int { @objc get @objc (setMaximumIntegerDigits:) set }

  /**
    - Selector: maximumSignificantDigits
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var maximumSignificantDigits: Int { @objc get @objc (setMaximumSignificantDigits:) set }

  /**
    - Selector: minimum
  */
  @objc var minimum: NSNumber? { @objc get @objc (setMinimum:) set }

  /**
    - Selector: minimumFractionDigits
  */
  @objc var minimumFractionDigits: Int { @objc get @objc (setMinimumFractionDigits:) set }

  /**
    - Selector: minimumIntegerDigits
  */
  @objc var minimumIntegerDigits: Int { @objc get @objc (setMinimumIntegerDigits:) set }

  /**
    - Selector: minimumSignificantDigits
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var minimumSignificantDigits: Int { @objc get @objc (setMinimumSignificantDigits:) set }

  /**
    - Selector: minusSign
  */
  @objc var minusSign: String! { @objc get @objc (setMinusSign:) set }

  /**
    - Selector: multiplier
  */
  @objc var multiplier: NSNumber? { @objc get @objc (setMultiplier:) set }

  /**
    - Selector: negativeFormat
  */
  @objc var negativeFormat: String! { @objc get @objc (setNegativeFormat:) set }

  /**
    - Selector: negativeInfinitySymbol
  */
  @objc var negativeInfinitySymbol: String { @objc get @objc (setNegativeInfinitySymbol:) set }

  /**
    - Selector: negativePrefix
  */
  @objc var negativePrefix: String! { @objc get @objc (setNegativePrefix:) set }

  /**
    - Selector: negativeSuffix
  */
  @objc var negativeSuffix: String! { @objc get @objc (setNegativeSuffix:) set }

  /**
    - Selector: nilSymbol
  */
  @objc var nilSymbol: String { @objc get @objc (setNilSymbol:) set }

  /**
    - Selector: notANumberSymbol
  */
  @objc var notANumberSymbol: String! { @objc get @objc (setNotANumberSymbol:) set }

  /**
    - Selector: numberStyle
  */
  @objc var numberStyle: NumberFormatter.Style { @objc get @objc (setNumberStyle:) set }

  /**
    - Selector: paddingCharacter
  */
  @objc var paddingCharacter: String! { @objc get @objc (setPaddingCharacter:) set }

  /**
    - Selector: paddingPosition
  */
  @objc var paddingPosition: NumberFormatter.PadPosition { @objc get @objc (setPaddingPosition:) set }

  /**
    - Selector: partialStringValidationEnabled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isPartialStringValidationEnabled: Bool { @objc get @objc (setPartialStringValidationEnabled:) set }

  /**
    - Selector: perMillSymbol
  */
  @objc var perMillSymbol: String! { @objc get @objc (setPerMillSymbol:) set }

  /**
    - Selector: percentSymbol
  */
  @objc var percentSymbol: String! { @objc get @objc (setPercentSymbol:) set }

  /**
    - Selector: plusSign
  */
  @objc var plusSign: String! { @objc get @objc (setPlusSign:) set }

  /**
    - Selector: positiveFormat
  */
  @objc var positiveFormat: String! { @objc get @objc (setPositiveFormat:) set }

  /**
    - Selector: positiveInfinitySymbol
  */
  @objc var positiveInfinitySymbol: String { @objc get @objc (setPositiveInfinitySymbol:) set }

  /**
    - Selector: positivePrefix
  */
  @objc var positivePrefix: String! { @objc get @objc (setPositivePrefix:) set }

  /**
    - Selector: positiveSuffix
  */
  @objc var positiveSuffix: String! { @objc get @objc (setPositiveSuffix:) set }

  /**
    - Selector: roundingBehavior
  */
  @objc var roundingBehavior: NSDecimalNumberHandler { @objc get @objc (setRoundingBehavior:) set }

  /**
    - Selector: roundingIncrement
  */
  @objc var roundingIncrement: NSNumber! { @objc get @objc (setRoundingIncrement:) set }

  /**
    - Selector: roundingMode
  */
  @objc var roundingMode: NumberFormatter.RoundingMode { @objc get @objc (setRoundingMode:) set }

  /**
    - Selector: secondaryGroupingSize
  */
  @objc var secondaryGroupingSize: Int { @objc get @objc (setSecondaryGroupingSize:) set }

  /**
    - Selector: textAttributesForNegativeInfinity
  */
  @objc var textAttributesForNegativeInfinity: [String: Any]? { @objc get @objc (setTextAttributesForNegativeInfinity:) set }

  /**
    - Selector: textAttributesForNegativeValues
  */
  @objc var textAttributesForNegativeValues: [String: Any]? { @objc get @objc (setTextAttributesForNegativeValues:) set }

  /**
    - Selector: textAttributesForNil
  */
  @objc var textAttributesForNil: [String: Any]? { @objc get @objc (setTextAttributesForNil:) set }

  /**
    - Selector: textAttributesForNotANumber
  */
  @objc var textAttributesForNotANumber: [String: Any]? { @objc get @objc (setTextAttributesForNotANumber:) set }

  /**
    - Selector: textAttributesForPositiveInfinity
  */
  @objc var textAttributesForPositiveInfinity: [String: Any]? { @objc get @objc (setTextAttributesForPositiveInfinity:) set }

  /**
    - Selector: textAttributesForPositiveValues
  */
  @objc var textAttributesForPositiveValues: [String: Any]? { @objc get @objc (setTextAttributesForPositiveValues:) set }

  /**
    - Selector: textAttributesForZero
  */
  @objc var textAttributesForZero: [String: Any]? { @objc get @objc (setTextAttributesForZero:) set }

  /**
    - Selector: thousandSeparator
  */
  @objc var thousandSeparator: String! { @objc get @objc (setThousandSeparator:) set }

  /**
    - Selector: usesGroupingSeparator
  */
  @objc var usesGroupingSeparator: Bool { @objc get @objc (setUsesGroupingSeparator:) set }

  /**
    - Selector: usesSignificantDigits
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var usesSignificantDigits: Bool { @objc get @objc (setUsesSignificantDigits:) set }

  /**
    - Selector: zeroSymbol
  */
  @objc var zeroSymbol: String? { @objc get @objc (setZeroSymbol:) set }
}

extension NumberFormatter: NumberFormatterExports {
}
