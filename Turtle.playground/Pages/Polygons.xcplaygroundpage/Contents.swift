t.scene.animatedDrawing = true

func polygon(sides: Int, size: Int) {
    for _ in 1...sides {
        forward(Double(size))
        right(360.0 / Double(sides))
    }
}

func polygons(maxSides: Int) {
    for sides in 3...maxSides {
        polygon(sides: sides, size: 50)
    }
}

// move to the starting point
penUp()
back(120)
left()
back(25)

// draw the polygons
penDown()
polygons(maxSides: 20)

// move inside the polygon home
penUp()
home()
back(106)

//: [Previous](@previous) — [Next](@next)
