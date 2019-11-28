difference() {
    color("grey") linear_extrude(2,true) //épaisseur à revoir
        minkowski() {
            square(size =  200    , center = true);
            circle(d=50,$fn=200);
        }
    translate([65, 0, -1]) linear_extrude(4,true) square(size = [10, 70], center = true);
    translate([-65, 0, -1]) linear_extrude(4,true) square(size = [10, 70], center = true);
    translate([77.5, 0, -1]) linear_extrude(4,true) square(size = [5, 70], center = true);
    translate([-77.5, 0, -1]) linear_extrude(4,true) square(size = [5, 70], center = true);

//mount holes
    translate([105, 105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);
    translate([-105, 105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);
    translate([105, -105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);
    translate([-105, -105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);

//marbles holes

    translate([0, -105, -2]) linear_extrude(8, true) circle(d=20, true, $fn=200);
    translate([0, 105, -2]) linear_extrude(8, true) circle(d=20, true, $fn=200);
}
