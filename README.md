# iOS

All my iOS apps developed by me so far. I just started this journey :)

In this repo you can find the complete XCode projects for each of those apps (and exercises).

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


###Intro to Stack View
>"Powerful tool Stack View is, careful you must be."

Learning a new way than simple [constraints](#constraints) to design an app in a responsive manner.
Stack Views are a great, great way to organize your app. I recommend using them as a habbit, and use constraints only when necessary.

So the design is a simple Shoe App without any backend functionality.

![alt text](./Previews/Intro_Stack_View1.png "Portrait")
![alt text](./Previews/Intro_Stack_View2.png "Landscape")
