
translate([40,-40,0]){
    difference(){
        cylinder(r1 = 60, r2 = 0, h = 60);
        
        //hyperbel
        translate([-65,-25,-1])
                cube([130,130,130]);
        
        
    }
    translate([-2.5,-25,10])
        cube([5,5,5]);
}

translate([40,-20,0]){
    difference(){
        cylinder(r1 = 60, r2 = 0, h = 60);
        
        //parabel
        translate([-65,15,-1])
            rotate([45,0,0])
                translate([0,0,-35])
                cube([130,130,130]);
        translate([-65,-25-130,-1])
                cube([130,130,130]);
        translate([-2.5,-26,10])
            cube([5,6,5]);
        
        
    }
    translate([-2.5,0,5])
        cube([5,5,12]);
}
translate([40,30,0]){
    difference(){
        cylinder(r1 = 60, r2 = 0, h = 60);
        
        //ellipse
        translate([-65,65,-1])
            rotate([65,0,0])
                translate([0,0,0])
                cube([130,130,130]);
        
        translate([-65,15,-1])
            rotate([45,0,0])
                translate([0,-130,0])
                cube([130,130,130]);
        translate([-2.5,0,5])
            cube([5,5,12]);
        
    
    }
    translate([-2.5,15,15])
        cube([5,5,10]);
}
translate([-60,-60,0]){
    difference(){
        cylinder(r1 = 60, r2 = 0, h = 60);
        //cirkel
        translate([-65,-65,43])
            rotate([0,0,0])
                translate([0,0,0])
                cube([130,130,130]);
        translate([-65,65,-1])
            rotate([65,0,0])
                translate([0,-130,0])
                    cube([130,130,130]);
        translate([-2.5,15,15])
            cube([5,5,10]);

    }
    translate([-2.5,-2.5,43])
        cube([5,5,5]);
}

translate([-55,30,-43]){
    difference(){
        cylinder(r1 = 60, r2 = 0, h = 60);
        //cirkel
        *translate([0,15,15])
            cube([5,5,10]);
        
        translate([-65,-65,43])
            rotate([0,0,0])
                translate([0,0,-130])
                cube([130,130,130]);
        translate([-2.5,-2.5,42])
            cube([5,5,6]);
}
}