import UIKit
import SpriteKit
import PlaygroundSupport

public class Turtle {
    var isDrawing = false
    public var heading = 90.0 {
        didSet {
            sprite.heading = heading
        }
    }
    public var position = CGPoint.zero {
        didSet {
            scene.move(to: worldPosition)
            sprite.position = worldPosition
        }
    }
    public var isOutside: Bool {
        get {
            return !scene.frame.contains(worldPosition)
        }
    }
    public var worldSize: CGSize {
        get {
            return scene.size
        }
    }
    public var maxX: Double {
        get {
            return Double(worldSize.width / 2.0)
        }
    }
    public var minX: Double {
        get {
            return -Double(worldSize.width / 2.0)
        }
    }
    public var maxY: Double {
        get {
            return Double(worldSize.height / 2.0)
        }
    }
    public var minY: Double {
        get {
            return -Double(worldSize.height / 2.0)
        }
    }
    public var worldPosition: CGPoint {
        get {
            return CGPoint(x: position.x + worldSize.width / 2.0,
                           y: position.y + worldSize.height / 2.0)
        }
    }

    public let sprite: TurtleSprite
    public let scene: TurtleWorldScene
    public let view: SKView
    public var backgroundColor: UIColor = Color.white.uiColor {
        didSet {
            scene.backgroundColor = backgroundColor
        }
    }
    public var color: UIColor = Color.defaultInk.uiColor {
        didSet {
            scene.color = color
        }
    }
    
    public var debug: Bool {
        set(value) {
            if let sceneView = scene.view {
                sceneView.showsFPS = value
                sceneView.showsNodeCount = value
                sceneView.showsDrawCount = value
            }
        }
        get {
            if let sceneView = scene.view {
                return sceneView.showsFPS || sceneView.showsNodeCount || sceneView.showsDrawCount
            } else {
                return false
            }
        }
    }
    
    public init(withCharacter character: TurtleSprite, scene: TurtleWorldScene) {
        self.scene = scene
        view = SKView(frame: CGRect(origin: CGPoint.zero, size: scene.size))
        view.presentScene(scene)
        
        PlaygroundPage.current.liveView = view
        
        sprite = character
        sprite.zPosition = CGFloat.greatestFiniteMagnitude
        scene.addChild(sprite)
        
        scene.backgroundColor = backgroundColor
        
        penUp()
        home()
        penDown()
    }
    
    public func penDown() {
        scene.beginDrawing(startingPosition: worldPosition)
        isDrawing = true
    }

    public func penUp() {
        isDrawing = false
        scene.endDrawing()
    }
    
    public func show() {
        sprite.isHidden = false
    }
    
    public func hide() {
        sprite.isHidden = true
    }

    public func moveTo(x: Double, y: Double) {
        position = CGPoint(x: x, y: y)
    }

    public func home() {
        position = CGPoint.zero
        heading = 90.0
    }

    public func turn(degrees: Double) {
        heading = (heading + degrees).truncatingRemainder(dividingBy: 360.0)
    }

    public func left(degrees: Double = 90) {
        turn(degrees: degrees)
    }

    public func right(degrees: Double = 90) {
        turn(degrees: -degrees)
    }

    public func move(deltaX: Double, deltaY: Double) {
        moveTo(x: Double(position.x) + deltaX,
               y: Double(position.y) + deltaY)
    }

    public func forward(distance: Double) {
        let deltaX = Double(distance) * cos(heading.toRadians)
        let deltaY = Double(distance) * sin(heading.toRadians)
        move(deltaX: deltaX, deltaY: deltaY)
    }

    public func back(distance: Double) {
        forward(distance: -distance)
    }
}
