font="Roboto Mono";

difference() {
    color("white") linear_extrude(5,true)
        minkowski() {
            square(size =  200    , center = true);
            circle(d=50,$fn=200);
        }
        
//Texte Telecom
    translate([-50, -100, 3]) linear_extrude(5,true) text("Telecom Robotics", $fn=200, halign="center");

//Afficheurs
    //TODO: à modifier
    translate([55, -50, 3]) linear_extrude(5,true) rotate(90) text("Logic", $fn=200, size=5, halign="center");
    translate([79, -50, -2]) linear_extrude(8, true) square([32, 70], true);
        
    translate([55, 50, 3]) linear_extrude(5,true) rotate(90) text("Power", $fn=200, size=5, halign="center");
    translate([79, 50, -2]) linear_extrude(8, true) square([32, 70], true);
        
//Bouton d'arret d'urgence
    translate([-90, -60, -2]) linear_extrude(8, true) circle(d=15, true);
        
//Bouton toggle
    translate([-80, 80, -2]) linear_extrude(8, true) square([21, 12], true);
        
//Bouton reset stm32
    translate([-80, 40, -2]) linear_extrude(8, true) circle(d=8, true); 
        
//Leds
    translate([55, 50, 3]) linear_extrude(5,true) rotate(90) text("Power", $fn=200, size=5, halign="center");
    translate([0, 80, -2]) linear_extrude(8, true) circle(d=3, true);
    
    translate([55, 50, 3]) linear_extrude(5,true) rotate(90) text("Power", $fn=200, size=5, halign="center");
    translate([30, 80, -2]) linear_extrude(8, true) circle(d=3, true);
    
    translate([55, 50, 3]) linear_extrude(5,true) rotate(90) text("Power", $fn=200, size=5, halign="center");
    translate([-30, 80, -2]) linear_extrude(8, true) circle(d=3, true);
        
        
}

translate([0, 0, 70]) rotate(-90)
import("/Users/nima/Downloads/abc/X4.stl", convexity=3);


