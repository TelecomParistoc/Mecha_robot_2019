difference (){
   color("red") union () {
        linear_extrude(30, true) circle(d=25, true, $fn=200);
        linear_extrude(3, true) square(size =  40    , center = true);;

    }
    translate([0, 0, -5]) linear_extrude(30, true) circle(d=22, true, $fn=200);
    translate([15, 15, -5]) linear_extrude(30, true) circle(d=2.5, true, $fn=200);
    translate([-15, 15, -5]) linear_extrude(30, true) circle(d=2.5, true, $fn=200);
    translate([15, -15, -5]) linear_extrude(30, true) circle(d=2.5, true, $fn=200);
    translate([-15, -15, -5]) linear_extrude(30, true) circle(d=2.5, true, $fn=200);
    linear_extrude(40, true) circle(d=7, true, $fn=200);
    translate([25,0, 10]) linear_extrude(15, true) square(size =  50    , center = true);
}
