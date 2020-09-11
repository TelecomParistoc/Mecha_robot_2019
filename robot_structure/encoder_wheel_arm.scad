module encoder_wheel_arm() {
    $fn = 200;
    color ("red")
        difference() {
        linear_extrude(3,true)
            union() {
                circle(d=20, true);
                translate([30,0,0])square([60, 20], true);
                translate ([60, 5, 0])circle(d=30, true);
            }
            translate ([0,2,-1]) linear_extrude (5, true)circle(d=5, true);
            translate ([60,5,-1]) {
            linear_extrude (5, true)circle(d=18, true);
            translate ([0,12,0]) linear_extrude (5, true)circle(d=3, true);
            translate ([-12*sqrt(3)/2,-6,0]) linear_extrude (5, true)circle(d=3, true);
            translate ([12*sqrt(3)/2,-6,0]) linear_extrude (5, true)circle(d=3, true);
            }
        }
}

//encoder_wheel_arm();
