import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSegmentedCell
    - name: NSSegmentedCell
    - argLabels: 
  */

@objc(NSSegmentedCell) protocol NSSegmentedCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: drawSegment
    - name: drawSegment:inFrame:withView:
    - argLabels: _, inFrame, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawSegment(_:inFrame:with:)
  */
  @objc (drawSegment:inFrame:withView:) func drawSegment(_: Int, inFrame: CGRect, with: NSView)

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
    - jsName: interiorBackgroundStyle
    - name: interiorBackgroundStyleForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: interiorBackgroundStyle(forSegment:)
    - Introduced: 10.5
  */
  @objc (interiorBackgroundStyleForSegment:) @available(OSX 10.5, *) func interiorBackgroundStyle(forSegment: Int) -> NSView.BackgroundStyle

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
    - jsName: makeNextSegmentKey
    - name: makeNextSegmentKey
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makeNextSegmentKey()

  /**
    - jsName: makePreviousSegmentKey
    - name: makePreviousSegmentKey
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makePreviousSegmentKey()

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
    - jsName: setTag
    - name: setTag:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setTag(_: Int, forSegment: Int)

  /**
    - jsName: setToolTip
    - name: setToolTip:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setToolTip(_: String?, forSegment: Int)

  /**
    - jsName: setWidth
    - name: setWidth:forSegment:
    - argLabels: forSegment
    - constructorTokens: 
  */
  @objc func setWidth(_: CGFloat, forSegment: Int)

  /**
    - jsName: tag
    - name: tagForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tag(forSegment:)
  */
  @objc (tagForSegment:) func tag(forSegment: Int) -> Int

  /**
    - jsName: toolTip
    - name: toolTipForSegment:
    - argLabels: forSegment
    - constructorTokens: 
    - obsoleted: 3
    - renamed: toolTip(forSegment:)
  */
  @objc (toolTipForSegment:) func toolTip(forSegment: Int) -> String?

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
    - jsName: segmentCount
    - name: segmentCount
    - argLabels: 
  */
  @objc var segmentCount: Int { @objc get @objc (setSegmentCount:) set }

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
    - jsName: trackingMode
    - name: trackingMode
    - argLabels: 
  */
  @objc var trackingMode: NSSegmentedControl.SwitchTracking { @objc get @objc (setTrackingMode:) set }
}

extension NSSegmentedCell: NSSegmentedCellExports {
}
