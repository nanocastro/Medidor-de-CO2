pcb_x=26;
pcb_y=26;
oled_x=26;
oled_y=17;
esp=2;
borde=8;
tol=0.5;

difference(){
cube([pcb_x+borde+2*esp,pcb_y,esp],center=true);
cube([oled_x+tol,oled_y+tol,esp],center=true);
translate([0,-pcb_y/2+(pcb_y-oled_y)/4,0])
cube([oled_x-borde+2*esp,(pcb_y-oled_y)/2,2],center=true);
translate([0,pcb_y/2-(pcb_y-oled_y)/8,-0.5])#cube([borde+esp,(pcb_y-oled_y)/4,1],center=true);
}