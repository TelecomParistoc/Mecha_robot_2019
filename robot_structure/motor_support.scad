projection(cut = true)
difference() {
    linear_extrude(3, true) square(30, true);
    translate([10, 10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
    translate([0, -10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
    translate([-10, 10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
}
