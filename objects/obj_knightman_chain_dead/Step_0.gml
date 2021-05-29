
//gravedad

  if  place_free(x,y+1)
  {
  gravity = 0.7
  gravity_direction =270
  }
  else
  {
  gravity = 0
  gravity_direction =270
  }

  if vspeed > 8
  { vspeed = 8}
  
  //visibilidad
  
  visible_timer +=1
  if visible_timer >5 {visible_timer =0}
  
if visible_timer ==1 {visible = false}
if visible_timer ==2 {visible = true}
if visible_timer ==3 {visible = false}
if visible_timer ==4 {visible = true}
if visible_timer ==5 {visible = false}

