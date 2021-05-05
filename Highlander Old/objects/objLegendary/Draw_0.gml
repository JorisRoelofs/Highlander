/// @description: Center Sprite For Floating

x -= 19;
y += 5*sin(0.75*pi*t);
draw_self();
x += 19;
y -= 5*sin(0.75*pi*t);