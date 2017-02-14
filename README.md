# A suite of iOS Applications created for fun 

###first app ever
This application is as simple as it can be:
- empty view with one "lame" button
- a second "great" view with a message and an image
- when the button from first view is pressed, the second view §magically§ appears 

![alt text](./Previews/firstApp_1.png "initial view")
![alt text](./Previews/firstApp_2.png "second view")



###Red and Blue
This is another simple and basic iphone app which starts with 2 images and 2 buttons.

Whenever a click on each button happens, the corresponding image disapears and the button's name will be changed.


![alt text](./Previews/redAndBlue_1.png "Game starts")
![alt text](./Previews/redAndBlue_2.png "Red is hidden view")
![alt text](./Previews/redAndBlue_3.png "Both bombs are hidden")
![alt text](./Previews/redAndBlue_4.png "Blue is hidden")



### <a name="constraints"></a>auto layout with <b>constraints</b>
As I soon found out, it is very important how one designs an app.

While it might look perfect on a specific device(e.g. iphone6), the same app on other devices might be a mess.

Here are the results of a very basic app which works great no matter the device:



![alt text](./Previews/auto_layout_4.7inch.png "iphone 6")
![alt text](./Previews/auto_layout_4inch.png "iphone 5")
![alt text](./Previews/auto_layout_ipad_air.png "ipad air")



And here is another exercise I made that illustrated again those concepts:


![alt text](./Previews/auto_layout_ip6.png "iphone 6")
![alt text](./Previews/auto_layout_ipad_retina.png "ipad_retina ")


###Tap Tap
Tap Tap is a game in which a user has to... YES - TAP! 

The initial view starts with:
- the logo of the game (Tap Tap)
- a text field to introduce the number of taps a user wants to do
- a play button

When clicking the "play" button, the second view starts. It contains:
- the tap button
- a label that displays the taps number

If the taps number has reached the number inputed by the user, the game restarts.


![alt text](./Previews/tap_tap_1.png "Welcome view")
![alt text](./Previews/tap_tap_2.png "User inputs tap number")
![alt text](./Previews/tap_tap_3.png "Game starts")
![alt text](./Previews/tap_tap_4.png "Taps are counted")
![alt text](./Previews/tap_tap_6.png "Last tap that can be seen before restarting")
![alt text](./Previews/tap_tap_1.png "Game restarts")


###Multiples
Multiplication by addition. Simplest form of multiplication. Designed for children who wish to practice.
The game itself takes an integer from user input and multiplies it a number of time (for the moment is hardcoded, and it's 10).
When the max number of multiplication is reached, the game restarts. User can input new number after restarting.
Game works on any display.


The initial view starts with:
- the logo of the game (Multiples)
- a text field to introduce the number to be multiplies with itself
- a play button

When clicking the "play" button, the second view starts. It contains:
- a label with instructions
- the "Add" button
- the label will show the results 

If the max number of multiplication has been reached(10), the game restarts.


![alt text](./Previews/Multiples1.png "Welcome view")
![alt text](./Previews/Multiples2.png "User inputs tap number")
![alt text](./Previews/Multiples3.png "Game starts")
![alt text](./Previews/Multiples4.png "First multiplication for 7")
![alt text](./Previews/Multiples6.png "Last result that can be seen before restarting")
![alt text](./Previews/Multiples1.png "Game restarts")


###<a name="stackView"></a>Intro to Stack View
>"Powerful tool Stack View is, careful you must be."

Learning a new way than simple [constraints](#constraints) to design an app in a responsive manner.
Stack Views are a great, great way to organize your app. I recommend using them as a habbit, and use constraints only when necessary.

So the design is a simple Shoe App without any backend functionality.

![alt text](./Previews/Intro_Stack_View1.png "Portrait")
![alt text](./Previews/Intro_Stack_View2.png "Landscape")


###<a name="calculator"></a>Robo Calculator
>"R2, you miss-calculated the coordinates. Let me do them by myself... Uh, what a rusty robot"

Today I have built a... CALCULATOR. Is is an old style retro calculator with basic functionality.
Key operations that it supports are
- Addition
- Substraction
- Multiplication
- Division
- It also has a special feature to ERASE or CLEAR.

####To CLEAR just double tap on the RESULT LABEL

The design is build using [stack view](#stackView) and [constraints](#constraints).
It also has an incorporated Audio Player, and when any button is tapped a sound will be played.
Audio Played is built using AVFoundation framework.

It has a launch screen which looks like : 

![alt text](./Previews/Robo_calc1.png "Launch Screen")

An the app itself is this one: 

![alt text](./Previews/Robo_calc2.png "Initial view")
![alt text](./Previews/Robo_calc3.png "App in-play")
![alt text](./Previews/Robo_calc4.png "Portrait")


###<a name="soldier"></a>Soldier vs Enemies
>"Enemies shall you defeat"

Soldier vs Emenies is my first game in which I revised OOP concepts in swift. 
It was a great way to revise 
- Inheritance  
- Polymorphism
- Initializers (init, convenience init)
- Data encapsulation

Key storyline : The soldier has to fight enemies. 
The more enemies he defeats, the more loot he gains from the treasure chests.

For the moment there is an inventory (in the code), but no UI to access it, YET.

When the game starts, a soldier appears (with name, hp, and attack power set from code - for NOW!!) and he has to fight with dark enemies.

There are 2 kinds of enemies:
- Sacalul: Has a special power: immunity i.e. if he receives an attack bellow a certain threshold, his HP increases
- Invoker

After an enemy has died, a Chest appears and the player can collect the goods from it.
Goods are random, as well as enemies. Another emeny spawns after 2 seconds from the death of first one.

Here are some previews of the game:

![alt text](./Previews/soldier-enemy1.png "Initial view")
![alt text](./Previews/soldier-enemy2.png "Enemy loses HP")
![alt text](./Previews/soldier-enemy3.png "Enemy was killed")
![alt text](./Previews/soldier-enemy4.png "Player can collect the goods")
![alt text](./Previews/soldier-enemy1.png "A new enemy re-spawns after 2 seconds")


