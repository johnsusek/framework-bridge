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
    - Selector: NSCollectionLayoutAnchor
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutAnchor) protocol NSCollectionLayoutAnchorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: layoutAnchorWithEdges:
  */
  @objc static func createWithEdges(_ edges: NSDirectionalRectEdge) -> Self

  /**
    - Selector: layoutAnchorWithEdges:absoluteOffset:
  */
  @objc static func createWithEdges_AbsoluteOffset(_ edges: NSDirectionalRectEdge, _ absoluteOffset: CGPoint) -> Self

  /**
    - Selector: layoutAnchorWithEdges:fractionalOffset:
  */
  @objc static func createWithEdges_FractionalOffset(_ edges: NSDirectionalRectEdge, _ fractionalOffset: CGPoint) -> Self

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

  /**
    - Selector: layoutAnchorWithEdges:
  */
  @objc public static func createWithEdges(_ edges: NSDirectionalRectEdge) -> Self {
    return self.init(edges: edges)
  }


  /**
    - Selector: layoutAnchorWithEdges:absoluteOffset:
  */
  @objc public static func createWithEdges_AbsoluteOffset(_ edges: NSDirectionalRectEdge, _ absoluteOffset: CGPoint) -> Self {
    return self.init(edges: edges, absoluteOffset: absoluteOffset)
  }


  /**
    - Selector: layoutAnchorWithEdges:fractionalOffset:
  */
  @objc public static func createWithEdges_FractionalOffset(_ edges: NSDirectionalRectEdge, _ fractionalOffset: CGPoint) -> Self {
    return self.init(edges: edges, fractionalOffset: fractionalOffset)
  }

}
