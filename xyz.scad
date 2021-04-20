module pil(char){
    cube([50,3,3]);
    translate([50,-2,0]){
        translate([0,0,3])
            linear_extrude(height= 3){
            text(char);
            }
        difference(){
            cube([7,7,3]);
            translate([7,3.5,-1]){
                rotate([0,0,65])
                cube([10,10,5]);
                rotate([0,0,-65-90])
                cube([10,10,5]);

                }
    
            }
        }
    }


pil("x");

translate([3,0,0])
    rotate([0,0,90]) 
        pil("y");

translate([3,0,0])
    rotate([0,-90,0]) 
        pil("z");