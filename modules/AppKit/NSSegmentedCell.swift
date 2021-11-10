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
    - Selector: NSSegmentedCell
  */

@objc(NSSegmentedCell) protocol NSSegmentedCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: drawSegment:inFrame:withView:
  */
  @objc (drawSegment:inFrame:withView:) func drawSegment(_: Int, inFrame: CGRect, with: NSView)

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
    - Selector: interiorBackgroundStyleForSegment:
    - Introduced: 10.5
  */
  @objc (interiorBackgroundStyleForSegment:) @available(OSX 10.5, *) func interiorBackgroundStyle(forSegment: Int) -> NSView.BackgroundStyle

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
    - Selector: makeNextSegmentKey
  */
  @objc func makeNextSegmentKey()

  /**
    - Selector: makePreviousSegmentKey
  */
  @objc func makePreviousSegmentKey()

  /**
    - Selector: menuForSegment:
  */
  @objc (menuForSegment:) func menu(forSegment: Int) -> NSMenu?

  /**
    - Selector: selectSegmentWithTag:
  */
  @objc (selectSegmentWithTag:) func selectSegment(withTag: Int) -> Bool

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
    - Selector: setTag:forSegment:
  */
  @objc func setTag(_: Int, forSegment: Int)

  /**
    - Selector: setToolTip:forSegment:
  */
  @objc func setToolTip(_: String?, forSegment: Int)

  /**
    - Selector: setWidth:forSegment:
  */
  @objc func setWidth(_: CGFloat, forSegment: Int)

  /**
    - Selector: tagForSegment:
  */
  @objc (tagForSegment:) func tag(forSegment: Int) -> Int

  /**
    - Selector: toolTipForSegment:
  */
  @objc (toolTipForSegment:) func toolTip(forSegment: Int) -> String?

  /**
    - Selector: widthForSegment:
  */
  @objc (widthForSegment:) func width(forSegment: Int) -> CGFloat

  // Own Instance Properties

  /**
    - Selector: segmentCount
  */
  @objc var segmentCount: Int { @objc get @objc (setSegmentCount:) set }

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
    - Selector: trackingMode
  */
  @objc var trackingMode: NSSegmentedControl.SwitchTracking { @objc get @objc (setTrackingMode:) set }
}

extension NSSegmentedCell: NSSegmentedCellExports {
}
