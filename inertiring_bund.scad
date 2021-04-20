r_ydre = 82;
r_indre = r_ydre-2;
r_kugle = 6;
d = 3;

module ring(r,d,h){
    difference(){
        cylinder(r = r, h=h);
        translate([0,0,-1])
            cylinder(r=r-d, h=h+1);
        }
    }
    
translate([0,0,-20]){
    difference(){
        cylinder(r = r_ydre, h = 20, $fn = 64);
        translate([0,0,-1])
            cylinder(r=2, h=22, $fn = 24);
        }
    }
ring(r_indre,d,r_kugle-1);
translate([0,0,r_kugle-1]){
    ring(r_indre-d/2,1,d/2);
    }

for (i =[0:5]){
    for (j=[1:5]){
        rotate([0,0,60*i])
            translate([j*(2*r_kugle+2),0,0])
                ring(r_kugle+2,2,r_kugle);
        }
    }