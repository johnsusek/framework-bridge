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
    - Selector: IKImageBrowserCell
  */

@objc(IKImageBrowserCell) protocol IKImageBrowserCellExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cellState
  */
  @objc func cellState() -> IKImageBrowserCellState

  /**
    - Selector: frame
  */
  @objc func frame() -> CGRect

  /**
    - Selector: imageAlignment
  */
  @objc func imageAlignment() -> NSImageAlignment

  /**
    - Selector: imageContainerFrame
  */
  @objc func imageContainerFrame() -> CGRect

  /**
    - Selector: imageFrame
  */
  @objc func imageFrame() -> CGRect

  /**
    - Selector: indexOfRepresentedItem
  */
  @objc func indexOfRepresentedItem() -> Int

  /**
    - Selector: isSelected
  */
  @objc func isSelected() -> Bool

  /**
    - Selector: layerForType:
  */
  @objc (layerForType:) func layer(forType: String) -> CALayer

  /**
    - Selector: opacity
  */
  @objc func opacity() -> CGFloat

  /**
    - Selector: representedItem
  */
  @objc func representedItem() -> Any!

  /**
    - Selector: selectionFrame
  */
  @objc func selectionFrame() -> CGRect

  /**
    - Selector: subtitleFrame
  */
  @objc func subtitleFrame() -> CGRect

  /**
    - Selector: titleFrame
  */
  @objc func titleFrame() -> CGRect
}

extension IKImageBrowserCell: IKImageBrowserCellExports {
}
