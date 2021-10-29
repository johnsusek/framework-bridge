import SwiftSyntax

class TokenVisitor: SyntaxRewriter {
  var tree = [Node]()
  var current: Node!
  
  override func visitPre(_ node: Syntax) {
    var syntax = "\(node.syntaxNodeType)"
    if syntax.hasSuffix("Syntax") {
      syntax = String(syntax.dropLast(6))
    }
    let n = Node(text: syntax)
    
    if current == nil {
      tree.append(n)
    }
    else {
      current.add(node: n)
    }
    current = n
  }
  
  override func visit(_ token: TokenSyntax) -> Syntax {
    current.text = token.text
    return token._syntaxNode
  }
  
  override func visitPost(_ node: Syntax) {
    current = current.parent
  }
}

class Node: Encodable {
  var text: String
  var children = [Node]()
  weak var parent: Node?
  
  enum CodingKeys: CodingKey {
    case text
    case children
  }
  
  init(text: String) {
    self.text = text
  }
  
  func add(node: Node) {
    node.parent = self
    children.append(node)
  }
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    
    try container.encode(text, forKey: .text)
    
    if (!children.isEmpty) {
      try container.encode(children, forKey: .children)
    }
  }
}
