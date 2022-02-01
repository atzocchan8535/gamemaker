// code that runs every frame

// keyboard check inputs
 right = keyboard_check(vk_right);
 left = keyboard_check (vk_left);
 jump = keyboard_check_pressed(vk_space);

// Horizontal Movement
xDirection = right - left
 xVector = xSpeed * xDirection;


// check to see if there is a wall, and if there is, stop movement, if there isn’t continue movement 
 if (place_meeting(x, y, owall))
	{
	   //check one pixel in the direction of xDirection
	// ! means “not”
	while(! place_meeting(x, y, owall))
	{
 // only move 1 pixel at a time until you hit a oWall
	x = x + xDirection
	}
	xVector = 0;
    }
// otherwise move normal
 x = x + xVector

// Vertical Movement
 yVector = yVector + grv;

 if (place_meeting(x, y + yVector, owall))
	{
	   //check one pixel in the direction of xDirection
	// ! means “not”
	// “sign” is going to return the positive or negative sign for a value (-1, +1)
	// sign(yVector) if yVector is positive it will return a positive 1, and if our yVector is negative it will return a -1
	while(! place_meeting(x, y + sign(yVector), owall))
	{
 // only move 1 pixel at a time until you hit a oWall
	y = y + sign(yVector);
	}	
	yVector = 0;
    }
// otherwise move normal
 y = y + yVector;

// if we are touching oWall and we press the jump key, fly like an eagle
 if (place_meeting(x, y + 1, owall) and (jump))
{
	yVector = jumpForce;
 }

// die in a pit and restart level
 if (y>= room_height)

	{
		room_restart();
	}





