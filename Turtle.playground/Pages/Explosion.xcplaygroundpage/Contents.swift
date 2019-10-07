t.scene.animatedDrawing = true

func polygon(sides: Int, size: Double) {
    for _ in 1...sides {
        forward(size)
        right(360.0 / Double(sides))
    }
}

let maxSize = 200.0
let minSize = 20.0
let sides = 5
let count = 120

for _ in 1...80 {
    setColor(Color.black.withAlphaComponent(Double.random(in: 0.2...0.7)))
    
    let angle = Double.random(in: 0...360)
    left(angle)
    
    let size = Double.random(in: minSize...maxSize)
    polygon(sides: sides, size: size)
}

sign()

//: [Previous](@previous) — [Next](@next)
