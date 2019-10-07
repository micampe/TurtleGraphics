t.scene.animatedDrawing = true
t.scene.animationSpeed = 200

for _ in 1...400 {
    right(Double.random(in: 0...360))
    penDown()
    while !isOutside() {
        forward(5)
        right(Double.random(in: -10...10))
    }
    penUp()
    home()
}

sign()

//: [Previous](@previous) — [Next](@next)
