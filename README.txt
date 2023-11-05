Made by Camden
11/5/2023


This project is a demonstration of Shell Shading.
Shell Shading is a technique used by technical artists as an illusion to make objects seem like they have more depth than they do by layering "Shells" on top of each other and not drawing parts of certain shells.

This means large areas can be covered by 32 plane meshs, and still look a good grass texture. Modern hardware can afford nicer grass, but Shell Shading is still used in many games for fur, moss, or straw as a cheap way to make a depth effect.

In modern day Shell Shading is mostly used to mimic fur, to great effect, and it is also used to make certain objects look more fluffy, like the thick wool inside of a coat or helmet.

The demonstrations in this project are not as refined do to time constraints, but have the same concepts. The minecraft block is the most simple, with the entire model only having 9 rectangular prism. The extruded prisms that make up the grass have their color changed based on how far they are from the original.

The straw roof is uses a noise map to pull color as a demonstation that patterns can put onto the stack of shells. It uses 24 triangular prisms.

The final demo is a torus that is made to look fuzzy. There are only 4 toruses, but the effect is completed by the wool texture overlayed on all the layers and each layer getting progressively brighter from the bottom.

Code for generating the shells themself is almost identical between all 3, certain variables are changed for different effects.

Resources about Shell Shaders Used for this Project
https://www.youtube.com/watch?v=9dr-tRQzij4
https://polycount.com/discussion/130038/ryse-moss-tutorial
