font="Roboto Mono";
difference() {
    color("white") linear_extrude(5,true)
        minkowski() {
            square(size =  200    , center = true);
            circle(d=50,$fn=200);
        }
    translate([0, -100, 3]) linear_extrude(5,true) text("Telecom Robotics", $fn=200, halign="center");

    translate([79, -50, -2]) linear_extrude(8, true) square([32, 70], true);
    translate([79, 50, -2]) linear_extrude(8, true) square([32, 70], true);
}

