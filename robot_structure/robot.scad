translate([0,0,310]) union() {
    include <roof.scad>;

    color("blue") translate([0, 0, 70]) rotate(-90) import("./X4.stl", convexity=3);

    translate([0, 0, 103]) include <beacon_mount.scad>
    translate([0, 0, 3])rotate(90) include <beacon_mount_side.scad>
}


include <rolling_base.scad>;
translate([0,105,3]) include <marble_mount.scad>
