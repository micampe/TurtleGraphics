t.scene.animatedDrawing = true
t.scene.animationSpeed = 50

func fern(_ size: Double, _ sign: Double) {
    if size >= 1 {
        forward(size)
        
        right(70 * sign)
        fern(size / 2.0, -sign)
        left(70 * sign)
        
        forward(size)
        
        left(70 * sign)
        fern(size / 2.0, sign)
        right(70 * sign)
        
        right(7 * sign)
        fern(size - 1, sign)
        left(7 * sign)
        
        penUp()
        back(size * 2.0)
        penDown()
    }
}

// move to the starting point
penUp()
left()
forward(140)
right()
back(200)

// draw the leaf
penDown()
fern(25, 1)

sign()
//: [Previous](@previous) — [Next](@next)
