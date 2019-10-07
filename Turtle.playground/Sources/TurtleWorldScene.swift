import SpriteKit

public class TurtleWorldScene : SKScene {
    var isDrawing: Bool = true
    var currentPosition: CGPoint = CGPoint.zero
    public var color: UIColor = Color.defaultInk.uiColor
    public var lineWidth: CGFloat = 1.0
    var linesNodes: [ SKShapeNode ] = []
    public var animatedDrawing = false
    public var animationSpeed = 5
    
    public func beginDrawing(startingPosition: CGPoint) {
        currentPosition = startingPosition
        isDrawing = true
    }
    
    public func endDrawing() {
        isDrawing = false
    }
    
    public func move(to position: CGPoint) {
        if isDrawing {
            let path = CGMutablePath()
            path.move(to: currentPosition)
            path.addLine(to: position)
            
            let node = lineNode(withPath: path, color: color)
            if animatedDrawing {
                linesNodes.append(node)
            } else {
                addChild(node)
            }
        }
        currentPosition = position
    }
    
    private func lineNode(withPath path: CGPath, color: UIColor) -> SKShapeNode {
        let penNode = SKShapeNode()
        penNode.name = "line"
        penNode.strokeColor = color
        penNode.lineWidth = lineWidth
        penNode.path = path
        return penNode
    }
    
    public override func update(_ currentTime: TimeInterval) {
        for _ in 1...animationSpeed {
            if let node = linesNodes.first {
                addChild(node)
                linesNodes.removeFirst()
            } else {
                break
            }
        }
    }
    
    public override func didMove(to view: SKView) {
        let framePath = CGMutablePath()
        framePath.addLines(between: [
            CGPoint(x: 1, y: 1),
            CGPoint(x: view.bounds.size.width - 1, y: 1),
            CGPoint(x: view.bounds.size.width - 1, y: view.bounds.size.height - 1),
            CGPoint(x: 1, y: view.bounds.size.height - 1),
            CGPoint(x: 1, y: 1)
            ])
        let frameNode = SKShapeNode()
        frameNode.path = framePath
        frameNode.lineWidth = 4.0
        frameNode.strokeColor = .black
        addChild(frameNode)
    }
    
}
