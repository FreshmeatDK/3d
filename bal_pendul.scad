$fn=20;
module oje(x,y,z){
    translate([x,y,z]){
        rotate([90,0,0])
            cylinder(d = 8, h= 2);
    }
}
module hul(x,y,z){
    translate([x,y,z]){
        rotate([90,0,0])
            cylinder(d = 4, h= 4);
    }

}
difference(){
    union(){
        cube([100,40,30]);
        oje(10,2,30);
        oje(90,2,30);
        oje(10,40,30);
        oje(90,40,30);
    }
    translate([-2,2,2]) 
        cube([100,36,30]);
    hul(10,1,30);
    hul(90,1,30);
    hul(10,41,30);
    hul(90,41,30);
}
module trekantl(){
    difference(){
        cube([2,2,2]);
        translate([0,0,0])
            rotate([45,0,0])
                cube([3.5,3,3]);
    }
}

module trekantr(){
    difference(){
        cube([2,2,2]);
        translate([0,2,0])
            rotate([45,0,0])
                cube([3.5,3,3]);
    }
}

module trekantb(){
    difference(){
        cube([2,36,2]);
        translate([0,0,0])
            rotate([0,-45,0])
                cube([3.5,38,3]);
    }
}


translate([0,2,2]) 
    trekantr();
translate([0,36,2]) 
    trekantl();
translate([50,2,2]) 
    trekantr();
translate([50,36,2]) 
    trekantl();
translate([96,2,2])
    trekantb();