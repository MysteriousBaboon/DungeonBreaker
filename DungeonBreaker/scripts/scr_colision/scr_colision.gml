
if (place_meeting(x + HorizontalSpeed,y,obj_Wall))
{
while(!place_meeting(x+sign(HorizontalSpeed),y,obj_Wall))
{
x += sign(HorizontalSpeed);
}
HorizontalSpeed = 0;
}


if (place_meeting(x - HorizontalSpeed,y,obj_Wall))
{
while(!place_meeting(x-sign(HorizontalSpeed),y,obj_Wall))
{
x -= sign(HorizontalSpeed);
}
HorizontalSpeed = 0;
}

