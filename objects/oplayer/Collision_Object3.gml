  //when I collide with a oCoin, destroy coim and boost points and coin count
instance_destroy(other);
 global.coins +=1;
 global.points +=100;
