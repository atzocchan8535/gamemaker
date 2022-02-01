 //code that runs once when oPlayer is created

// how many pixels per frame we want our player to move
 xSpeed = 4;


// what direction the player is facing. 1 = right, -1 = left, 0 = not moving
xDirection = 0;

// Directional movement variables
 xVector = xSpeed * xDirection;

 yVector = 0;

// settings gravity
grv = 0.4;

jumpForce = -12;

 //coins and points
 global.points = 0;
 global.coins = 0;