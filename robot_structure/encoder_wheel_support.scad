module encoder_wheel_support() {
    $fn = 200;
    color("red")
    difference() {
        linear_extrude(3, true) square(30, true);
        translate([10, 10, -1]) linear_extrude(8, true) circle(d=3, true);
        translate([-10, 10, -1]) linear_extrude(8, true) circle(d=3, true);
        translate([-10, -10, -1]) linear_extrude(8, true) circle(d=3, true);
        translate([10, -10, -1]) linear_extrude(8, true) circle(d=3, true);
    }
}

encoder_wheel_support();
