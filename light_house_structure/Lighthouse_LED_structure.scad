
translate([0,0,-9])
difference()
{
 cylinder($fn = 200,h = 2, r1 = 49, r2 = 49, center = true);
 cylinder($fn = 200,h = 3, r1 = 3, r2 = 3, center = true);
}

difference()
{
difference()
{
    cylinder($fn = 200,h = 20, r1 = 49, r2 = 49, center = true);
    cylinder($fn = 200,h = 21, r1 = 45, r2 = 45, center = true);
}
difference()
{
    cylinder($fn = 200,h = 14, r1 = 49.1, r2 = 49.1, center = true);
    cylinder($fn = 200,h = 15, r1 = 47.3, r2 = 47.3, center = true);
}
}