include <roof.scad>
include <rolling_base.scad>

rolling_base(6); //thickness to review
translate([0,0,310]) roof(3); //thickness to review //hauteur à revoir
/*translate([0,0,310]) union() {

    color("blue") translate([0, 0, 70]) rotate(-90) import("./X4.stl", convexity=3);

    translate([0, 0, 103]) include <beacon_mount.scad>
    translate([0, 0, 3])rotate(90) include <beacon_mount_side.scad>
}


translate([0,105,3]) include <marble_mount.scad>
translate([0,-105,3]) include <marble_mount.scad>
*/
