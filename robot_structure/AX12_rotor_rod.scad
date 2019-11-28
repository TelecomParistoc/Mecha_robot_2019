union() {
    rotate(45,[0,0,1])
        union() {
            difference() {
                union() {
                    difference() {
                        linear_extrude(5,true) circle(d=22,$fn=500);
                        translate ([0,8,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                        translate ([0,-8,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                        translate ([8,0,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                        translate ([-8,0,-2]) linear_extrude(8,true) circle(d=2.7,$fn=90);
                    }
                    translate ([0 ,0, 3]) linear_extrude(8,true) circle(d=13,$fn=90);
                }
                //Diametre ecrou : 9mm
                translate ([0 ,0, -4]) linear_extrude(20,true) circle(d=9,$fn=6);
            }
            difference(){
                translate ([0 ,0, 9]) linear_extrude(2,true) circle(d=9,$fn=90);
                translate ([0 ,0, 8]) linear_extrude(4,true) circle(d=5,$fn=90);
            }
        }
}
