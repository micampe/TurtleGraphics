import UIKit

t.scene.animatedDrawing = true
t.scene.animationSpeed = 20

for length in 1...1200 {
    setColor(UIColor.black.withAlphaComponent(CGFloat.random(in: 0.2...0.7)))
    forward(Double(length) * 0.5)
    left(60.0 + Double.random(in: -0.2...0.5))
}

sign()

//: [Previous](@previous) — [Next](@next)
