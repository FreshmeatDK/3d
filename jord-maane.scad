$fn = 20;
rotate([23.4,0,0])
    sphere(d=30);
translate([0,0,-30])
    cylinder(h=30, r=5);
translate([0,0,-50])
    cylinder(h=20, r1=50, r2=5);
rotate([23.4,0,0])
    translate([0,0,-20])
        cylinder(h=40, r=1.5);
cube([180,180,1], center = true);
        
rotate([0,7,10]){
    rotate_extrude(convexity = 10, $fn = 50)
    translate([80, 0, 0])
    circle(r = 1.5, $fn = 20);
    rotate([0,0,43])
    translate([0,80,0])
        sphere(d=10);
    
}

