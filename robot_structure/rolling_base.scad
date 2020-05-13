module rolling_base(thickness = 6) {
    color("#dfc076") difference() {
        linear_extrude(thickness, true)
            minkowski() {
                square(size =  200    , center = true);
                circle(d=50,$fn=200);
            }
        translate([65, 0, -1]) linear_extrude(8,true) square(size = [10, 70], center = true);
        translate([-65, 0, -1]) linear_extrude(8,true) square(size = [10, 70], center = true);
        translate([77.5, 0, -1]) linear_extrude(8,true) square(size = [5, 70], center = true);
        translate([-77.5, 0, -1]) linear_extrude(8,true) square(size = [5, 70], center = true);

        //spring holes
        translate([77.5, -50, -1]) linear_extrude(8,true) polygon([[-2.5, -10],[-10,-10],[-10,10],[10,10],[10, -10],[2.5,-10], [2.5, 0],[5, 0], [5,5], [-5,5], [-5, 0], [-2.5,0] ]);
        translate([-77.5, -50, -1]) linear_extrude(8,true) polygon([[-2.5, -10],[-10,-10],[-10,10],[10,10],[10, -10],[2.5,-10], [2.5, 0],[5, 0], [5,5], [-5,5], [-5, 0], [-2.5,0] ]);

        translate([87.5, 50, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([67.5, 50, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([87.5, 70, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([67.5, 70, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);

        translate([-87.5, 50, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([-67.5, 50, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([-87.5, 70, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([-67.5, 70, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);

        //mount holes
        translate([105, 105, -1]) linear_extrude(8, true) circle(d=5, true, $fn=200);
        translate([-105, 105, -1]) linear_extrude(8, true) circle(d=5, true, $fn=200);
        translate([105, -105, -1]) linear_extrude(8, true) circle(d=5, true, $fn=200);
        translate([-105, -105, -1]) linear_extrude(8, true) circle(d=5, true, $fn=200);

        //marbles holes

        translate([0, -105, -1]) linear_extrude(8, true) circle(d=20, true, $fn=200);
        translate([0, 105, -1]) linear_extrude(8, true) circle(d=20, true, $fn=200);

        translate([15, 120, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
        translate([15, 90, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
        translate([-15, 120, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
        translate([-15, 90, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);

        translate([15, -120, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
        translate([15, -90, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
        translate([-15, -120, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
        translate([-15, -90, -1]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);

        // motor holes
        translate([45, 10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([25, 10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([35, -10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);

        translate([-45, 10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([-25, 10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);
        translate([-35, -10, -1]) linear_extrude(8, true) circle(d=3, true, $fn=200);

    }
}
//projection(cut = true)
//rolling_base();
