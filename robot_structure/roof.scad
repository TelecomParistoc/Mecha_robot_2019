// revoir épaisseur
color("white")
projection(cut = true)
difference() {
     linear_extrude(5,true)
        minkowski() {
            square(size =  200    , center = true);
            circle(d=50,$fn=200);
        }

//Texte Telecom
    translate([-50, -100, 3]) linear_extrude(5,true) text("Telecom Robotics", $fn=200, halign="center");

//Afficheurs
    translate([55, -50, 3]) linear_extrude(5,true) rotate(90) text("Logic", $fn=200, size=5, halign="center");
    translate([79, -50, -2]) linear_extrude(8, true) square([27, 46], true);

    translate([55, 50, 3]) linear_extrude(5,true) rotate(90) text("Power", $fn=200, size=5, halign="center");
    translate([79, 50, -2]) linear_extrude(8, true) square([27, 46], true);

//Bouton d'arret d'urgence
    translate([-90, -65, -2]) linear_extrude(8, true) circle(d=15, true, $fn=200);

//Bouton toggle team
    translate([-95, 80, 3]) linear_extrude(5,true) rotate(90) text("Yellow", $fn=200, size=5, halign="center");
    translate([-80, 80, -2]) linear_extrude(8, true) square([21, 12], true);
    translate([-60, 80, 3]) linear_extrude(5,true) rotate(90) text("Blue", $fn=200, size=5, halign="center");

//Bouton reset stm32
    translate([-90, 40, 3]) linear_extrude(5,true) rotate(90) text("Reset", $fn=200, size=5, halign="center");
    translate([-80, 40, -2]) linear_extrude(8, true) circle(d=8, true, $fn=200);

//Leds
    translate([0, 60, 3]) linear_extrude(5,true) rotate(90) text("Run", $fn=200, size=5, halign="center");
    translate([0, 80, -2]) linear_extrude(8, true) circle(d=3, true, $fn=200);

    translate([30, 60, 3]) linear_extrude(5,true) rotate(90) text("Error", $fn=200, size=5, halign="center");
    translate([30, 80, -2]) linear_extrude(8, true) circle(d=3, true, $fn=200);

    translate([-30, 60, 3]) linear_extrude(5,true) rotate(90) text("Ready", $fn=200, size=5, halign="center");
    translate([-30, 80, -2]) linear_extrude(8, true) circle(d=3, true, $fn=200);

//Clé
    translate([30, -95, -2]) linear_extrude(8, true) circle(d = 20, $fn=6);

//Score
    translate([-70, -10, 3]) linear_extrude(5,true) rotate(90) text("Score", $fn=200, size=5, halign="center");
    translate([-90, -10, -2]) linear_extrude(8, true) square([19, 50], true);

//Trous
    translate([105, 105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);
    translate([-105, 105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);
    translate([105, -105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);
    translate([-105, -105, -2]) linear_extrude(8, true) circle(d=5, true, $fn=200);

//hole lidar
    translate([25, -35, -2]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
    translate([-25, -35, -2]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
    translate([31, 22, -2]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);
    translate([-31, 22, -2]) linear_extrude(8, true) circle(d=2.5, true, $fn=200);

//hole flag
translate([0, 105, -2]) linear_extrude(8, true) square([130, 12], true);


//TODO: scratch page 23 règlement
}


font="Roboto Mono";
