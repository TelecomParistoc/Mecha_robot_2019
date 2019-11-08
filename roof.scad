font="Roboto Mono";
difference() {
    color("white") linear_extrude(5,true) //épaisseur à revoir
        minkowski() {
            square(size =  200    , center = true);
            circle(d=50,$fn=200);
        }
    translate([0, -100, 3]) linear_extrude(5,true) text("Telecom Robotics", $fn=200, halign="center");
}

