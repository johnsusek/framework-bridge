import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutAnchor
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutAnchor) protocol NSCollectionLayoutAnchorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: layoutAnchorWithEdges:
  */
  @objc static func create(edges: NSDirectionalRectEdge) -> Self

  /**
    - Selector: layoutAnchorWithEdges:absoluteOffset:
  */
  @objc static func create(edges: NSDirectionalRectEdge, absoluteOffset: CGPoint) -> Self

  /**
    - Selector: layoutAnchorWithEdges:fractionalOffset:
  */
  @objc static func create(edges: NSDirectionalRectEdge, fractionalOffset: CGPoint) -> Self

  // Own Instance Properties

  /**
    - Selector: edges
  */
  @objc var edges: NSDirectionalRectEdge { @objc get }

  /**
    - Selector: isAbsoluteOffset
  */
  @objc var isAbsoluteOffset: Bool { @objc get }

  /**
    - Selector: isFractionalOffset
  */
  @objc var isFractionalOffset: Bool { @objc get }

  /**
    - Selector: offset
  */
  @objc var offset: CGPoint { @objc get }
}

extension NSCollectionLayoutAnchor: NSCollectionLayoutAnchorExports {
  @objc public static func create(edges: NSDirectionalRectEdge) -> Self {
    return self.init(edges: edges)
  }

  @objc public static func create(edges: NSDirectionalRectEdge, absoluteOffset: CGPoint) -> Self {
    return self.init(edges: edges, absoluteOffset: absoluteOffset)
  }

  @objc public static func create(edges: NSDirectionalRectEdge, fractionalOffset: CGPoint) -> Self {
    return self.init(edges: edges, fractionalOffset: fractionalOffset)
  }

}
