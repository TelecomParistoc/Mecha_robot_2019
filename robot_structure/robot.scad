include <roof.scad>
include <rolling_base.scad>
include <profile.scad>
include <marble_mount.scad>
include <beacon_mount.scad>
include <beacon_mount_side.scad>
include <encoder_wheel_support.scad>
include <encoder_wheel_arm.scad>

// warning : hauteur des roues  à prendre en compte ~= 5mm
base_thickness = 6; // to review
roof_thickness = 3; // to review
profile_height = 300; // to review
beacon_mount_thickness = 3; // to review
beacon_mount_height = 430 - beacon_mount_thickness;
X4_shift = 69.75;

rolling_base(base_thickness);
translate([0,0,base_thickness]) {
    translate ([0,105,0]) rotate(90) marble_mount();
    translate ([0,-105,0]) rotate(-90) marble_mount();
    translate([105,105,0]) profile(thickness = 25, height = profile_height);
    translate([-105,105,0]) profile(thickness = 25, height = profile_height);
    translate([-105,-105,0]) profile(thickness = 25, height = profile_height);
    translate([105,-105,0]) profile(thickness = 25, height = profile_height);
    translate([77.5,60,0]) encoder_wheel_support_right();
    translate([-77.5,60,0]) rotate(180) encoder_wheel_support_left();
    translate([87,60,17.5]) rotate(-10, [1, 0, 0]) rotate(-90) rotate (-90, [1,0,0]) encoder_wheel_arm();
    translate([-90,60,17.5]) rotate(-10, [1, 0, 0]) rotate(-90) rotate (-90, [1,0,0]) encoder_wheel_arm();
}


roof_height = base_thickness + profile_height;

translate([0,0,roof_height]) roof(roof_thickness);
X4_height = X4_shift + roof_height + roof_thickness;
color("blue") translate([0, 0, X4_height]) rotate(-90) import("./X4.stl", convexity=3);

beacon_mount_side_height = beacon_mount_height - roof_height - roof_thickness;

translate([-40, 0, roof_height + roof_thickness]) rotate(90) beacon_mount_side(beacon_mount_side_height);
translate([40, 0, roof_height + roof_thickness]) rotate(-90) beacon_mount_side(beacon_mount_side_height);

translate([0,0, beacon_mount_height]) beacon_mount(beacon_mount_thickness);
