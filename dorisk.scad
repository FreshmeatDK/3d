module dcolumn(hf,d){
    // d diameter
    // hf højdeforhold (6 eller 7)
    $fs = 0.4;
    h = d*hf;
    dtop=d*0.9;
    angle=atan((d-dtop)/(h)*0.8);
    //echo(angle = angle);
    difference(){
       cylinder(d1=d, d2=dtop, h=h*0.95);
        for (i = [1:20]){
            rotate([0,-angle,i*18])
            translate([d/2,0,0])
                {
                    cylinder(d=d/8,h=h*0.96);
                    translate([0,0,h*0.96])
                        sphere(d/16);
                }
                    
            }
    }
    translate([0,0,h*0.95])
        cylinder(d1=dtop, d2=d*1.1, h=h*0.025);
    translate([-d/2*1.1,-d/2*1.1,h*0.975])
        cube([d*1.1,d*1.1,h*0.025]);
    
}
//
e = 5; //grunddiameter for søjle
a = 2.25*e; // afstand mellem to søjlecentre
f = 6; // forhold højde/diameter for søjle

//fundament
translate([-e,-e,-e/2]){
    color("white"){
        cube([12*a+2*e,5*a+2*e,e/2]);
        translate([-e,-e,-e/2])
            cube([12*a+4*e,5*a+4*e,e/2]);
    }    
}
translate([2*a-e/2,a,0])
    cube([a*8+e,3*a,e/4]);

//søjlegang
for (i = [0:5]){
    translate([0,i*a,0]){
        dcolumn(f,e);
        translate([12*a,0,0])
            dcolumn(f,e);
    }
}

for (i=[1:11]){
    translate([i*a,0,0]){
        dcolumn(f,e);
        translate([0,5*a,0])
            dcolumn(f,e);
    }
}

//indgangssøjler
translate([2*a,2*a,0])
    dcolumn(f,e);
translate([2*a,3*a,0])
    dcolumn(f,e);
translate([10*a,2*a,0])
    dcolumn(f,e);
translate([10*a,3*a,0])
    dcolumn(f,e);

//entablatur
color("Ivory"){
    translate([-e/2,-e/2,e*f])
        cube([12*a+e,e,1.75*e]);
    translate([-e/2,5*a-e/2,e*f])
        cube([12*a+e,e,1.75*e]);
    translate([-e/2,e/2,e*f])
        cube([e,5*a-e,1.75*e]);
    translate([12*a-e/2,e/2,e*f])
        cube([e,5*a-e,1.75*e]);
}

//vægge
color("Whitesmoke")
{
    translate([2*a-e/2,a,e/4])
        cube([a*8+e,0.75*e,e*(f+1.5)]);
    translate([2*a-e/2,4*a-0.75*e,e/4])
        cube([a*8+e,0.75*e,e*(f+1.5)]);
    translate([a*9-e/2,a+0.75*e,e/4])
        cube([0.75*e,a*3-1.5*e,e*(f+1.5)]); 
    difference(){
        translate([a*4-e/2,a+e,e/4])
            cube([0.75*e,a*3-1.5*e,e*(f+1.5)]);
        translate([a*4-e,2.5*a-e,0.01+e/4])
            #cube([2*e,2*e,e*f/3*2]);
    }
    translate([2*a-e/2,a+0.75*e,e*f])
        cube([0.75*e,3*a-1.5*e,e*1.75]);    
    translate([10*a-0.25*e,a+0.75*e,e*f])
        cube([0.75*e,3*a-1.5*e,e*1.75]);


}

// indre søjler

i_e = 0.5*(f+1.5)/6*e;
i_et = 0.4*(f+1.5)/6*e;
i_a = 2.75*i_e;

color("Lightgray"){
    for (i = [1:5]){
        translate([4*a+i_a*i,2.5*a-2*e,e/4]){
            dcolumn(f,i_e);
            translate([0,0,(f+0.5)*i_e])
                dcolumn(f,i_et);
            translate([0,4*e,0]){
                dcolumn(f,i_e);
                translate([0,0,(f+0.5)*i_e])
                    dcolumn(f,i_et);
            }
                
            echo(i);
        }
            
    }
    translate([4*a+5*i_a,2.5*a,e/4]){
        dcolumn(f,i_e);
        translate([0,0,(f+0.5)*i_e])
            dcolumn(f,i_et);
    }
    translate([4*a+i_a-i_e/2,2.5*a-2*e-i_e/2,f*i_e+e/4]){
        cube([4*i_a+i_e,i_e,0.5*i_e]);
        translate([0,0,f*i_et+i_e/2])
           cube([4*i_a+i_e,i_e,0.7*i_e]); 
        translate([0,2*a-e/2,0]){
            cube([4*i_a+i_e,i_e,0.5*i_e]);
            translate([0,0,f*i_et+i_e/2])
                cube([4*i_a+i_e,i_e,0.7*i_e]);
        }
        translate([4*i_a,i_e,0]){
            cube([i_e,2*a-e/2-i_e,i_e/2]);
            translate([0,0,f*i_et+i_e/2])
                cube([i_e,2*a-e/2-i_e,0.7*i_e]);
        }
    }
        
}
