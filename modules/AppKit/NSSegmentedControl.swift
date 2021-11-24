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
    - Selector: NSSegmentedControl
  */

@objc(NSSegmentedControl) protocol NSSegmentedControlExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: segmentedControlWithImages:trackingMode:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithImages_TrackingMode(_ images: [NSImage], _ trackingMode: NSSegmentedControl.SwitchTracking) -> Self

  /**
    - Selector: segmentedControlWithLabels:trackingMode:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithLabels_TrackingMode(_ labels: [String], _ trackingMode: NSSegmentedControl.SwitchTracking) -> Self

  // Instance Methods

  /**
    - Selector: alignmentForSegment:
    - Introduced: 10.13
  */
  @objc (alignmentForSegment:) @available(OSX 10.13, *) func alignment(forSegment: Int) -> NSTextAlignment

  /**
    - Selector: imageForSegment:
  */
  @objc (imageForSegment:) func image(forSegment: Int) -> NSImage?

  /**
    - Selector: imageScalingForSegment:
    - Introduced: 10.5
  */
  @objc (imageScalingForSegment:) @available(OSX 10.5, *) func imageScaling(forSegment: Int) -> NSImageScaling

  /**
    - Selector: isEnabledForSegment:
  */
  @objc (isEnabledForSegment:) func isEnabled(forSegment: Int) -> Bool

  /**
    - Selector: isSelectedForSegment:
  */
  @objc (isSelectedForSegment:) func isSelected(forSegment: Int) -> Bool

  /**
    - Selector: labelForSegment:
  */
  @objc (labelForSegment:) func label(forSegment: Int) -> String?

  /**
    - Selector: menuForSegment:
  */
  @objc (menuForSegment:) func menu(forSegment: Int) -> NSMenu?

  /**
    - Selector: selectSegmentWithTag:
  */
  @objc (selectSegmentWithTag:) func selectSegment(withTag: Int) -> Bool

  /**
    - Selector: setAlignment:forSegment:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setAlignment(_: NSTextAlignment, forSegment: Int)

  /**
    - Selector: setEnabled:forSegment:
  */
  @objc func setEnabled(_: Bool, forSegment: Int)

  /**
    - Selector: setImage:forSegment:
  */
  @objc func setImage(_: NSImage?, forSegment: Int)

  /**
    - Selector: setImageScaling:forSegment:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setImageScaling(_: NSImageScaling, forSegment: Int)

  /**
    - Selector: setLabel:forSegment:
  */
  @objc func setLabel(_: String, forSegment: Int)

  /**
    - Selector: setMenu:forSegment:
  */
  @objc func setMenu(_: NSMenu?, forSegment: Int)

  /**
    - Selector: setSelected:forSegment:
  */
  @objc func setSelected(_: Bool, forSegment: Int)

  /**
    - Selector: setShowsMenuIndicator:forSegment:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setShowsMenuIndicator(_: Bool, forSegment: Int)

  /**
    - Selector: setTag:forSegment:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setTag(_: Int, forSegment: Int)

  /**
    - Selector: setToolTip:forSegment:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setToolTip(_: String?, forSegment: Int)

  /**
    - Selector: setWidth:forSegment:
  */
  @objc func setWidth(_: CGFloat, forSegment: Int)

  /**
    - Selector: showsMenuIndicatorForSegment:
    - Introduced: 10.13
  */
  @objc (showsMenuIndicatorForSegment:) @available(OSX 10.13, *) func showsMenuIndicator(forSegment: Int) -> Bool

  /**
    - Selector: tagForSegment:
    - Introduced: 10.13
  */
  @objc (tagForSegment:) @available(OSX 10.13, *) func tag(forSegment: Int) -> Int

  /**
    - Selector: toolTipForSegment:
    - Introduced: 10.13
  */
  @objc (toolTipForSegment:) @available(OSX 10.13, *) func toolTip(forSegment: Int) -> String?

  /**
    - Selector: widthForSegment:
  */
  @objc (widthForSegment:) func width(forSegment: Int) -> CGFloat

  // Own Instance Properties

  /**
    - Selector: doubleValueForSelectedSegment
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var doubleValueForSelectedSegment: Double { @objc get }

  /**
    - Selector: indexOfSelectedItem
    - Introduced: 10.4
  */
  @objc @available(OSX 10.4, *) var indexOfSelectedItem: Int { @objc get }

  /**
    - Selector: segmentCount
  */
  @objc var segmentCount: Int { @objc get @objc (setSegmentCount:) set }

  /**
    - Selector: segmentDistribution
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var segmentDistribution: NSSegmentedControl.Distribution { @objc get @objc (setSegmentDistribution:) set }

  /**
    - Selector: segmentStyle
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var segmentStyle: NSSegmentedControl.Style { @objc get @objc (setSegmentStyle:) set }

  /**
    - Selector: selectedSegment
  */
  @objc var selectedSegment: Int { @objc get @objc (setSelectedSegment:) set }

  /**
    - Selector: selectedSegmentBezelColor
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var selectedSegmentBezelColor: NSColor? { @objc get @objc (setSelectedSegmentBezelColor:) set }

  /**
    - Selector: springLoaded
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var isSpringLoaded: Bool { @objc get @objc (setSpringLoaded:) set }

  /**
    - Selector: trackingMode
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var trackingMode: NSSegmentedControl.SwitchTracking { @objc get @objc (setTrackingMode:) set }
}

extension NSSegmentedControl: NSSegmentedControlExports {

  /**
    - Selector: segmentedControlWithImages:trackingMode:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithImages_TrackingMode(_ images: [NSImage], _ trackingMode: NSSegmentedControl.SwitchTracking) -> Self {
    return self.init(images: images, trackingMode: trackingMode, target: nil, action: nil)
  }


  /**
    - Selector: segmentedControlWithLabels:trackingMode:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithLabels_TrackingMode(_ labels: [String], _ trackingMode: NSSegmentedControl.SwitchTracking) -> Self {
    return self.init(labels: labels, trackingMode: trackingMode, target: nil, action: nil)
  }

}
