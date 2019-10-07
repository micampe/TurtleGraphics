let a = 100.0
let b = 60.0

setColor(.green)
right()
forward(a)
left()
forward(b)
left(90 + arctangent(b / a))
forward(hypotenuse(a, b))

sign()

//: Go back to the [Intro page](Intro) to look up available commands.
