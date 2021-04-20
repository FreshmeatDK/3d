$fn=64;
difference(){
    cylinder(d=130, h=23);
    translate([0,0,4])
        cylinder(d=117, h=20);
    translate([117/2-1,-6,4])
        cube([3.5,12,40]);
    translate([0,0,-1])
        cylinder(d=105, h= 6);
}