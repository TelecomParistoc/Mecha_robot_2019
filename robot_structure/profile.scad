module profile(thickness = 25, height = 300) {
    color("grey")
        linear_extrude(height, true) square(thickness, true);
}
