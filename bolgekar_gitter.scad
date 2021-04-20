b=230;
h=20;
d=1.2;
bund=5;
tandh=h-bund;
tandb=30;
hulb=5;
tandbb=tandb+hulb;
ntand=round(b/tandbb-1.5);
kant=(b-ntand*tandbb)/2;

cube([b,h,d]);
difference(){
cube([b,d,h]);
for (i =[0:ntand]){
    translate([i*(tandbb)+kant-hulb/2,-0.5,bund])
        cube([hulb,d+1,tandh+1]);
    }
}