color("red")

difference() {
    union() {
        linear_extrude(100, true) circle(d=90, true, $fn=200);
        linear_extrude(5, true) circle(d=120, true, $fn=200);
    }
    translate([0,0,-0.3]) linear_extrude(106, true)
        union(){
            polygon([[0,0], [100, 0], [100*cos(45), 100*sin(45)]]);
            polygon([[0,0], [-100, 0], [-100*cos(45), 100*sin(45)]]);
            translate([0,-45,0]) square([150,100], true);
        }
    translate([0,0,-3]) linear_extrude(98, true) circle(d=80, true, $fn=200);
    translate([0,0,-0.3]) linear_extrude(10, true) circle(d=2.7, true, $fn=200);
    translate([52.5*cos(67.5),52.5*sin(67.5),-3]) linear_extrude(10, true) circle(d=2.7, true, $fn=200);
    translate([52.5*cos(112.5),52.5*sin(67.5),-3]) linear_extrude(10, true) circle(d=2.7, true, $fn=200);
    translate([30*cos(67.5),30*sin(67.5),93]) linear_extrude(10, true) circle(d=2.7, true, $fn=200);
    translate([30*cos(112.5),30*sin(67.5),93]) linear_extrude(10, true) circle(d=2.7, true, $fn=200);
}
