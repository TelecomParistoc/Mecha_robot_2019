module beacon_mount(thickness = 3) {
    $fn = 200;
    color("#dfc076")
    difference() {
    linear_extrude(thickness, true) square([100,80], true);
    translate([-45 , 20, -6]) linear_extrude(10, true) circle(d=2.7, true);
    translate([-45 , -20, -6]) linear_extrude(10, true) circle(d=2.7, true);
    translate([45 , 20, -6]) linear_extrude(10, true) circle(d=2.7, true);
    translate([45 , -20, -6]) linear_extrude(10, true) circle(d=2.7, true);
    }
}

//projection(cut = true)
//beacon_mount();
