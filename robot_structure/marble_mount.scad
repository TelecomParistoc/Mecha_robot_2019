module marble_mount() {
    $fn = 200;
    difference (){
        color("red") union () {
            linear_extrude(25, true) circle(d=28, true);
            linear_extrude(3, true) square(size =  40    , center = true);

        }
        translate([0, 0, -10]) linear_extrude(30, true) circle(d=22, true);
        translate([15, 15, -5]) linear_extrude(30, true) circle(d=2.5, true);
        translate([-15, 15, -5]) linear_extrude(30, true) circle(d=2.5, true);
        translate([15, -15, -5]) linear_extrude(30, true) circle(d=2.5, true);
        translate([-15, -15, -5]) linear_extrude(30, true) circle(d=2.5, true);
        linear_extrude(40, true) circle(d=7, true);
        translate([25,0, 5]) linear_extrude(15, true) square(size =  50    , center = true);
    }
}
