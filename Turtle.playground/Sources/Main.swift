import UIKit
import SpriteKit
import PlaygroundSupport

public let world = TurtleWorldScene(size: CGSize(width: 700, height: 700))
public let character = TurtleSprite(image: createImage(fromText: "🐙", withFontSize: 18), intrinsicHeading: 90)
public let t = Turtle(withCharacter:character, scene: world)

public func home() {
    t.home()
}

public func setHeading(_ degrees: Double) {
    t.heading = degrees
}

public func penDown() {
    t.penDown()
}

public func penUp() {
    t.penUp()
}

public func show() {
    t.show()
}

public func hide() {
    t.hide()
}

public func isOutside() -> Bool {
    return t.isOutside
}

public func left(_ degrees: Double = 90) {
    t.turn(degrees: degrees)
}

public func right(_ degrees: Double = 90) {
    t.turn(degrees: -degrees)
}

public func forward(_ distance: Double) {
    t.forward(distance: distance)
}

public func back(_ distance: Double) {
    t.forward(distance: -distance)
}

public func moveTo(_ x: Double, _ y: Double) {
    t.moveTo(x: x, y: y)
}

public func setColor(_ color: UIColor) {
    t.color = color
}

public func setBackgroundColor(_ color: UIColor) {
    t.backgroundColor = color
}

public func sign() {
    penUp()
    moveTo(t.maxX - 20, t.minY + 18)
    setHeading(character.imageIntrinsicHeading)
}
