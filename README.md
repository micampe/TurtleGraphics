# Turtle Graphics

 [Turtle graphics](https://en.wikipedia.org/wiki/Turtle_graphics) is a vector graphics system using a relative cursor (the turtle) on a cartesian plane.

 The turtle has three properties: a position, a heading (direction), and a pen.

 The turtle can be moved using commands that are relative to its current state (position and heading).

 The turtle carries a pen that can ben set down on the paper, lifted up, and change color.

 Each time the turtle moves and the pen is down on the paper it will draw a line on its path.

 Turtle graphics was popularized by the [Logo](https://en.wikipedia.org/wiki/Logo_(programming_language)) programming language. This Xcode playground provides a Swift implementation of a similar system. We use an octopus to represent the turtle because it is cuter and also because it can actually spray ink.

 Turtle movement commands:
 * `forward(distance)`: move _forward_ in the current direction by the indicated distance
 * `back(distance)`: move _backwards_ in the current direction by the indicated distance
 * `left(degrees)`: turn _left_ by the indicated angle
 * `right(degrees)`: turn _right_ by the indicated angle
 * `home()`: move the turtle to the starting position and initial heading (at center of the paper, pointing up)

 Pen commands:
 * `penUp()`: lift the pen up from the paper
 * `penDown()`: set the pen down on the paper
 * `setColor(color)`: change the color of the pen. Colors can be created using the function `TurtleColor.from(hex:)`, a few predefined colors are provided by the system: `TurtleColor.black`, `TurtleColor.white`, `TurtleColor.blue`, `TurtleColor.green`, `TurtleColor.red`, `TurtleColor.yellow`

 The turtle can be show or hidden without affecting its drawing (if the turtle is hidden and the pen is down it will still draw):
 * `hide()`
 * `show()`
