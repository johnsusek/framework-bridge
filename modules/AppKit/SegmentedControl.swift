import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSegmentedControl
    - name: NSSegmentedControl
    - argLabels: 
  */

@objc(NSSegmentedControl) protocol NSSegmentedControlExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: segmentedControlWithImages:trackingMode:target:action:
    - argLabels: images, trackingMode, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(images:trackingMode:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(images: [NSImage], trackingMode: NSSegmentedControl.SwitchTracking) -> Self

  /**
    - jsName: create
    - name: segmentedControlWithLabels:trackingMode:target:action:
    - argLabels: labels, trackingMode, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(labels:trackingMode:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(labels: [String], trackingMode: NSSegmentedControl.SwitchTracking) -> Self

  // Instance Methods

  /**
    - jsName: alignment
    - name: alignmentForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: alignment(forSegment:)
    - Introduced: 10.13
  */
  @objc (alignmentForSegment:) @available(OSX 10.13, *) func alignment(forSegment: Int) -> NSTextAlignment

  /**
    - jsName: image
    - name: imageForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: image(forSegment:)
  */
  @objc (imageForSegment:) func image(forSegment: Int) -> NSImage?

  /**
    - jsName: imageScaling
    - name: imageScalingForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: imageScaling(forSegment:)
    - Introduced: 10.5
  */
  @objc (imageScalingForSegment:) @available(OSX 10.5, *) func imageScaling(forSegment: Int) -> NSImageScaling

  /**
    - jsName: isEnabled
    - name: isEnabledForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isEnabled(forSegment:)
  */
  @objc (isEnabledForSegment:) func isEnabled(forSegment: Int) -> Bool

  /**
    - jsName: isSelected
    - name: isSelectedForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isSelected(forSegment:)
  */
  @objc (isSelectedForSegment:) func isSelected(forSegment: Int) -> Bool

  /**
    - jsName: label
    - name: labelForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: label(forSegment:)
  */
  @objc (labelForSegment:) func label(forSegment: Int) -> String?

  /**
    - jsName: menu
    - name: menuForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: menu(forSegment:)
  */
  @objc (menuForSegment:) func menu(forSegment: Int) -> NSMenu?

  /**
    - jsName: selectSegment
    - name: selectSegmentWithTag:
    - argLabels: withTag
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectSegment(withTag:)
  */
  @objc (selectSegmentWithTag:) func selectSegment(withTag: Int) -> Bool

  /**
    - jsName: setAlignment
    - name: setAlignment:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setAlignment(_: NSTextAlignment, forSegment: Int)

  /**
    - jsName: setEnabled
    - name: setEnabled:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setEnabled(_: Bool, forSegment: Int)

  /**
    - jsName: setImage
    - name: setImage:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setImage(_: NSImage?, forSegment: Int)

  /**
    - jsName: setImageScaling
    - name: setImageScaling:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setImageScaling(_: NSImageScaling, forSegment: Int)

  /**
    - jsName: setLabel
    - name: setLabel:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setLabel(_: String, forSegment: Int)

  /**
    - jsName: setMenu
    - name: setMenu:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setMenu(_: NSMenu?, forSegment: Int)

  /**
    - jsName: setSelected
    - name: setSelected:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setSelected(_: Bool, forSegment: Int)

  /**
    - jsName: setShowsMenuIndicator
    - name: setShowsMenuIndicator:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setShowsMenuIndicator(_: Bool, forSegment: Int)

  /**
    - jsName: setTag
    - name: setTag:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setTag(_: Int, forSegment: Int)

  /**
    - jsName: setToolTip
    - name: setToolTip:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func setToolTip(_: String?, forSegment: Int)

  /**
    - jsName: setWidth
    - name: setWidth:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setWidth(_: CGFloat, forSegment: Int)

  /**
    - jsName: showsMenuIndicator
    - name: showsMenuIndicatorForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: showsMenuIndicator(forSegment:)
    - Introduced: 10.13
  */
  @objc (showsMenuIndicatorForSegment:) @available(OSX 10.13, *) func showsMenuIndicator(forSegment: Int) -> Bool

  /**
    - jsName: tag
    - name: tagForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: tag(forSegment:)
    - Introduced: 10.13
  */
  @objc (tagForSegment:) @available(OSX 10.13, *) func tag(forSegment: Int) -> Int

  /**
    - jsName: toolTip
    - name: toolTipForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: toolTip(forSegment:)
    - Introduced: 10.13
  */
  @objc (toolTipForSegment:) @available(OSX 10.13, *) func toolTip(forSegment: Int) -> String?

  /**
    - jsName: width
    - name: widthForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: width(forSegment:)
  */
  @objc (widthForSegment:) func width(forSegment: Int) -> CGFloat

  // Own Instance Properties

  /**
    - jsName: doubleValueForSelectedSegment
    - name: doubleValueForSelectedSegment
    - argLabels: 
    - available: 10.10.3
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var doubleValueForSelectedSegment: Double { @objc get }

  /**
    - jsName: indexOfSelectedItem
    - name: indexOfSelectedItem
    - argLabels: 
    - available: 10.4
    - Introduced: 10.4
  */
  @objc @available(OSX 10.4, *) var indexOfSelectedItem: Int { @objc get }

  /**
    - jsName: segmentCount
    - name: segmentCount
    - argLabels: 
  */
  @objc var segmentCount: Int { @objc get @objc (setSegmentCount:) set }

  /**
    - jsName: segmentDistribution
    - name: segmentDistribution
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var segmentDistribution: NSSegmentedControl.Distribution { @objc get @objc (setSegmentDistribution:) set }

  /**
    - jsName: segmentStyle
    - name: segmentStyle
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var segmentStyle: NSSegmentedControl.Style { @objc get @objc (setSegmentStyle:) set }

  /**
    - jsName: selectedSegment
    - name: selectedSegment
    - argLabels: 
  */
  @objc var selectedSegment: Int { @objc get @objc (setSelectedSegment:) set }

  /**
    - jsName: selectedSegmentBezelColor
    - name: selectedSegmentBezelColor
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var selectedSegmentBezelColor: NSColor? { @objc get @objc (setSelectedSegmentBezelColor:) set }

  /**
    - jsName: isSpringLoaded
    - name: springLoaded
    - argLabels: 
    - available: 10.10.3
    - obsoleted: 3
    - renamed: isSpringLoaded
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var isSpringLoaded: Bool { @objc get @objc (setSpringLoaded:) set }

  /**
    - jsName: trackingMode
    - name: trackingMode
    - argLabels: 
    - available: 10.10.3
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var trackingMode: NSSegmentedControl.SwitchTracking { @objc get @objc (setTrackingMode:) set }
}

@objc protocol SegmentedControlExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: segmentedControlWithImages:trackingMode:target:action:
    - argLabels: images, trackingMode, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(images:trackingMode:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(images: [NSImage], trackingMode: NSSegmentedControl.SwitchTracking) -> Self

  /**
    - jsName: create
    - name: segmentedControlWithLabels:trackingMode:target:action:
    - argLabels: labels, trackingMode, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(labels:trackingMode:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(labels: [String], trackingMode: NSSegmentedControl.SwitchTracking) -> Self
}

@objc(SegmentedControl) public class SegmentedControl: NSSegmentedControl, SegmentedControlExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSSegmentedControl: NSSegmentedControlExports {
  @objc public static func create(images: [NSImage], trackingMode: NSSegmentedControl.SwitchTracking) -> Self {
    return self.init(images: images, trackingMode: trackingMode, target: nil, action: nil)
  }

  @objc public static func create(labels: [String], trackingMode: NSSegmentedControl.SwitchTracking) -> Self {
    return self.init(labels: labels, trackingMode: trackingMode, target: nil, action: nil)
  }

}
