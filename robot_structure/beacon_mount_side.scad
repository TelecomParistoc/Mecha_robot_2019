module beacon_mount_side(height = 100) {
    $fn=200;
    color("red")
        difference() {
            union() {
                linear_extrude(height, true) square([80, 5], true);
                translate([0, 12.5, 0]) linear_extrude(5, true) square([80,20], true);
                translate([0, 6.25, height-5]) linear_extrude(5, true) square([80,7.5], true);
            }
            translate([20, 12.5, -1]) linear_extrude(10, true) circle(d=2.7, true);
            translate([-20, 12.5, -1]) linear_extrude(10, true) circle(d=2.7, true);
            translate([20, 6.25, height-6]) linear_extrude(10, true) circle(d=2.7, true);
            translate([-20, 6.25, height-6]) linear_extrude(10, true) circle(d=2.7, true);
        }
}


//beacon_mount_side(<Right height, check robot.scad>);
