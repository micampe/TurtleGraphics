/*:
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
 * `setColor(color)`: change the color of the pen. A few predefined colors are provided by the system: `Color.black`, `Color.white`, `Color.blue`, `Color.green`, `Color.red`, `Color.yellow`. Custom colors can be created using the function `Color(fromHex:)`.

 The turtle can be show or hidden without affecting its drawing (if the turtle is hidden and the pen is down it will still draw):
 * `hide()`
 * `show()`
 
 Show the Xcode _assistant editor_ with the _live view_ if they are not visible and execute these commands to make the turtle draw its first shape:
 */

home()
forward(60)
left(120)
forward(60)
left(120)
forward(60)
left(120)

/*:
 Can you describe why those instructions resulted in this shape? Why is the turning angle 120 degrees?
 
 How can you change the instructions to make the triangle point up?
 
 Can you make the turtle draw a square? or an hexagon?

 Go to the [Practice](Practice) page to experiment with the turtle.
*/
