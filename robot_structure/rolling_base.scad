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
}


