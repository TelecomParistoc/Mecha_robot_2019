include <roof.scad>
include <rolling_base.scad>
include <profile.scad>
include <marble_mount.scad>
include <beacon_mount.scad>

// warning : hauteur des roues  à prendre en compte ~= 5mm
base_thickness = 6; // to review
roof_thickness = 3; // to review
profile_height = 300; // to review
beacon_mount_thickness = 3; // to review
beacon_mount_height = 430 - beacon_mount_thickness;
X4_shift = 69.75;

translate ([0,105,base_thickness]) rotate(90) marble_mount();
translate ([0,-105,base_thickness]) rotate(-90) marble_mount();
rolling_base(base_thickness);
translate([0,0,base_thickness]) {
    translate([105,105,0]) profile(thickness = 25, height = profile_height);
    translate([-105,105,0]) profile(thickness = 25, height = profile_height);
    translate([-105,-105,0]) profile(thickness = 25, height = profile_height);
    translate([105,-105,0]) profile(thickness = 25, height = profile_height);
}

roof_height = base_thickness + profile_height;
translate([0,0,roof_height]) roof(roof_thickness);
X4_height = X4_shift + roof_height + roof_thickness;
color("blue") translate([0, 0, X4_height]) rotate(-90) import("./X4.stl", convexity=3);

translate([0,0, beacon_mount_height]) beacon_mount(beacon_mount_thickness);

/*translate([0,0,310]) union() {

  color("blue") translate([0, 0, 70]) rotate(-90) import("./X4.stl", convexity=3);

  translate([0, 0, 103]) include <beacon_mount.scad>
  translate([0, 0, 3])rotate(90) include <beacon_mount_side.scad>
  }
 */
