module encoder_wheel_support_right() {
    $fn = 200;
    color("red")
        difference() {
            union() {
                linear_extrude(3, true) square(30, true);
                translate([14, 0, 0]) linear_extrude(30, true) square([3, 30], true);
                translate([12.5, 13, 3]) rotate(-90, [1,0,0]) linear_extrude(2, true) polygon([[0, 0], [-27.5, 0], [0, -27]]);
            }
            translate([10, 10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([-10, 10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([-10, -10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([10, -10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([9, 0, 16]) rotate(90, [0, 1,0])linear_extrude(8, true) circle(d=5, true);
        }
}

module encoder_wheel_support_left() {
    $fn = 200;
    color("red")
        difference() {
            union() {
                linear_extrude(3, true) square(30, true);
                translate([14, 0, 0]) linear_extrude(30, true) square([3, 30], true);
                translate([12.5, -15, 3]) rotate(-90, [1,0,0]) linear_extrude(2, true) polygon([[0, 0], [-27.5, 0], [0, -27]]);
            }
            translate([10, 10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([-10, 10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([-10, -10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([10, -10, -1]) linear_extrude(8, true) circle(d=3, true);
            translate([9, 0, 16]) rotate(90, [0, 1,0])linear_extrude(8, true) circle(d=5, true);
        }
}

//encoder_wheel_support_right();
//encoder_wheel_support_left();
