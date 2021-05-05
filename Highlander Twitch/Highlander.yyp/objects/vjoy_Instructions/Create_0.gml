/// @description 1. Setup
/*

    Simply create an object name it whatever you want to call your joystick
        obj_JoystickLeft
        obj_JoystickRight
        obj_JStick
    
    Parent the joystick to obj_Analogue_Stick located under
        Objects > Virtual Joy > Analogue Stick
    
    Set the sprite to whichever theme you want to use located under
        Sprites > Virtual Joy > Analogue Stick

*/

/* */
///2. Usage
/*

    Your virtual joystick outputs 3 variables for use in your games
        normalx
        normaly
        normaldir
        
    normalx is the normalized value of the users x input between -1 and 1.
    normaly is the normalized value of the users y input between -1 and 1.
    normaldir is a value between 0 and 359 that determines the direction of the pointer.
    
    
    To move your player simply multiply normalx and y  by how fast you want the player 
    to move.
    
    For Instance:
    obj_Player.x += obj_Joystickleft.normalx * 10
    obj_Player.y += obj_Joystickleft.normaly * 10
    
    Where 10 is an arbitrary number i have defined is a 'good' speed for my player to
    move.
    

*/

/* */
/*  */
