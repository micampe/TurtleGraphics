import SpriteKit

public class TurtleSprite : SKSpriteNode {
    var imageIntrinsicHeading: Double = 90
    var imageOffset: CGPoint = CGPoint.zero
    var heading: Double = 90 {
        didSet {
            zRotation = CGFloat((heading - imageIntrinsicHeading).toRadians)
        }
    }
    override public var position: CGPoint {
        set(newPosition) {
            let offsetX = imageOffset.x * CGFloat(sin(heading.toRadians)) + imageOffset.y * CGFloat(cos(heading.toRadians))
            let offsetY = imageOffset.y * CGFloat(cos(heading.toRadians)) + imageOffset.y * CGFloat(sin(heading.toRadians))
            super.position = CGPoint(x: newPosition.x - offsetX,
                                     y: newPosition.y - offsetY)
        }
        get {
            let offsetX = imageOffset.x * CGFloat(cos(heading.toRadians)) + imageOffset.y * CGFloat(sin(heading.toRadians))
            let offsetY = imageOffset.y * CGFloat(sin(heading.toRadians)) + imageOffset.y * CGFloat(cos(heading.toRadians))
            return CGPoint(x: super.position.x + offsetX,
                           y: super.position.y + offsetY)
        }
    }
    
    public convenience init(image: UIImage, intrinsicHeading: Double = 90, offset: CGPoint = CGPoint.zero) {
        let texture = SKTexture(cgImage: image.cgImage!)
        self.init(texture: texture, color: UIColor.clear, size: image.size)
        self.imageIntrinsicHeading = intrinsicHeading
        self.imageOffset = offset
    }
    
    public convenience init() {
        let turtleImage = createImage(fromText: "🐢", withFontSize: 36)
        self.init(image: turtleImage, intrinsicHeading: 180)
    }
    
    public override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
