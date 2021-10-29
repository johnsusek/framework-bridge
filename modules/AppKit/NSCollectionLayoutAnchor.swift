import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutAnchor
    - name: NSCollectionLayoutAnchor
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutAnchor) protocol NSCollectionLayoutAnchorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: layoutAnchorWithEdges:
    - argLabels: edges
    - constructorTokens: 
    - unavailable: true
    - renamed: init(edges:)
    - message: Not available in Swift
  */
  @objc static func create(edges: NSDirectionalRectEdge) -> Self

  /**
    - jsName: create
    - name: layoutAnchorWithEdges:absoluteOffset:
    - argLabels: edges, absoluteOffset
    - constructorTokens: 
    - unavailable: true
    - renamed: init(edges:absoluteOffset:)
    - message: Not available in Swift
  */
  @objc static func create(edges: NSDirectionalRectEdge, absoluteOffset: CGPoint) -> Self

  /**
    - jsName: create
    - name: layoutAnchorWithEdges:fractionalOffset:
    - argLabels: edges, fractionalOffset
    - constructorTokens: 
    - unavailable: true
    - renamed: init(edges:fractionalOffset:)
    - message: Not available in Swift
  */
  @objc static func create(edges: NSDirectionalRectEdge, fractionalOffset: CGPoint) -> Self

  // Own Instance Properties

  /**
    - jsName: edges
    - name: edges
    - argLabels: 
  */
  @objc var edges: NSDirectionalRectEdge { @objc get }

  /**
    - jsName: isAbsoluteOffset
    - name: isAbsoluteOffset
    - argLabels: 
  */
  @objc var isAbsoluteOffset: Bool { @objc get }

  /**
    - jsName: isFractionalOffset
    - name: isFractionalOffset
    - argLabels: 
  */
  @objc var isFractionalOffset: Bool { @objc get }

  /**
    - jsName: offset
    - name: offset
    - argLabels: 
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
