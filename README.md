#Tech Test Challenge, Mars Rover
##Caitlin Gulliford, 23/12/16

###Solution to the Mars Rover Challenge.

####*How to Use:*
Run the file
~~~~
[ruby] mission_control.rb
~~~~
from the command line. When prompted, input the directions for roverA:

~~~~
LMLMLMLMM
~~~~

and then for roverB:

~~~~
MMRMMRMRRM
~~~~


####*Design Logic*

The programme is designed with the main 'object' being the Rover. Logic for moving the rover and turning the rover is located in the Rover class.

To run the programme and see the expected output, the mission_control.rb operates as a basic interface.


The challenge instructions were interpreted to create a rover that operates in real time, with the rovers initialised using the input information under the understanding if they are actual rovers they would be on the plateau with a location whether or not it is defined. mission_control.rb then prompts the user to enter the movement instructions(input) to move the rover appropriately. The advantage of this is that the rover moves in a more real time fashion, and can be given further commands after this.

*potential improvements*

Given more time and resources, I would prefer to move the read_instructions logic into a controller class instead of having it within the rover class. Additionally, while the challenge never asks for the plateau to act with restrictions on the rover (i.e. not letting it move beyond the 5, 5 grid), I would create a plateau class that is initialised with a fixed grid value, and should the rover attempt to move beyond the grid it would return an error. This was attempted but not finalised with successful testing, so has been omitted for sake of cleanliness.

#####Challenge Instructions

*Problem : Mars Rover*

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

*Input:*
+ The first line of input is the upper-right coordinates of the plateau, the lower- left coordinates are assumed to be 0,0.
+ The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover’s position, and the second line is a series of instructions telling the rover how to explore the plateau.
+ The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover’s orientation.
+ Each rover will be finished sequentially, which means that the second rover won’t start to move until the first one has finished moving.

*Output:* The output for each rover should be its final co-ordinates and heading.

Input and Output
~~~~
Test Input:
Plateau: 55
12N
LMLMLMLMM
33E
MMRMMRMRRM

Expected Output:
13N
51E
~~~~
