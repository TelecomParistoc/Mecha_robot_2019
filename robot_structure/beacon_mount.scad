module beacon_mount(thickness = 3) {
    $fn = 200;
    color("#dfc076") linear_extrude(thickness, true) circle(d=90, true);
}
//projection(cut = true)
//beacon_mount();
