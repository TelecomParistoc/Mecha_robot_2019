difference (){
    union () {
        difference() {
        linear_extrude(30, true) circle(d=30, true, $fn=200);

        translate([25,0, 10]) linear_extrude(15, true) square(size =  50    , center = true);;
        }
        linear_extrude(3, true) square(size =  50    , center = true);;

    }
    translate([0, 0, -5]) linear_extrude(30, true) circle(d=27, true, $fn=200);
    translate([20, 20, -5]) linear_extrude(30, true) circle(d=2, true, $fn=200);
    translate([-20, 20, -5]) linear_extrude(30, true) circle(d=2, true, $fn=200);
    translate([20, -20, -5]) linear_extrude(30, true) circle(d=2, true, $fn=200);
    translate([-20, -20, -5]) linear_extrude(30, true) circle(d=2, true, $fn=200);
}
