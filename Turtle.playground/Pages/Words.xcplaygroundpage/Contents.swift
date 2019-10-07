let phi = 1.618
let size = 60.0

func capHeight(forSize size: Double) -> Double {
    return size
}

func xHeight(forSize size: Double) -> Double {
    return size / phi
}

func space(size: Double = 60) -> Double {
    let width = (size / phi) / 4.0
    penUp()
    forward(width)
    penDown()
    return width
}

func letter_T(size: Double = 60) -> Double {
    let height = capHeight(forSize: size)
    let width = size / phi
    penUp()
    forward(width / 2.0)
    left()
    penDown()
    forward(height)
    right()
    penUp()
    back(width / 2.0)
    penDown()
    forward(width)
    penUp()
    right()
    forward(height)
    left()
    penDown()
    return width
}

func letter_u(size: Double = 60) -> Double {
    let height = xHeight(forSize: size)
    let width = size / phi * 0.75
    right()
    penUp()
    back(height)
    penDown()
    forward(height)
    left()
    forward(width)
    left()
    forward(height)
    penUp()
    back(height)
    right()
    penDown()
    return width
}

func letter_r(size: Double = 60) -> Double {
    let height = xHeight(forSize: size)
    let width = size / phi * 0.5
    left()
    forward(height)
    penUp()
    let c = height / 3.0
    back(c)
    penDown()
    let angle = arctangent(width / c)
    right(angle)
    forward(hypotenuse(c, width))
    right(90 + (90 - angle))
    penUp()
    forward(height)
    left()
    penDown()
    return width
}

func letter_t(size: Double = 60) -> Double {
    let height = capHeight(forSize: size)
    let width = size / phi * 0.5
    penUp()
    forward(width)
    penDown()
    let tailLenght = width * 0.75
    back(tailLenght)
    left()
    forward(height)
    penUp()
    let crossLineHeight = height * 0.75
    let crossLineWidth = width * 0.75
    back(height - crossLineHeight)
    right()
    back(crossLineWidth / 3.0)
    penDown()
    forward(crossLineWidth)
    penUp()
    forward(width - crossLineWidth)
    right()
    forward(crossLineHeight)
    left()
    penDown()
    return width
}

func letter_l(size: Double = 60) -> Double {
    let height = capHeight(forSize: size)
    let width = size / phi * 0.25
    left()
    forward(height)
    penUp()
    back(height)
    right()
    penDown()
    forward(width)
    return width
}

func letter_e(size: Double = 60) -> Double {
    let height = xHeight(forSize: size)
    let width = size / phi * 0.75
    penUp()
    forward(width)
    penDown()
    back(width)
    left()
    forward(height)
    right()
    forward(width)
    right()
    let holeSize = height * 0.75
    forward(holeSize)
    right()
    forward(width)
    penUp()
    back(width)
    left()
    forward(height - holeSize)
    left()
    penDown()
    return width
}

func writeTurtle(wordSize: Double) -> Double {
    var width = 0.0
    width += letter_T(size: wordSize)
    width += space(size: wordSize)
    width += letter_u(size: wordSize)
    width += space(size: wordSize)
    width += letter_r(size: wordSize)
    width += space(size: wordSize)
    width += letter_t(size: wordSize)
    width += space(size: wordSize)
    width += letter_l(size: wordSize)
    width += space(size: wordSize)
    width += letter_e(size: wordSize)
    return width
}


penUp()
forward(100)
right()
back(100)
penDown()

let lineSpacing = 20.0
for _ in 1...5 {
    let width = writeTurtle(wordSize: size)
    penUp()
    back(width)
    right()
    forward(size + lineSpacing)
    left()
}

sign()
