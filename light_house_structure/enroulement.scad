// Parameters

radius = 20;
axisRadius = 2;
length = 60;
holeRadius =1;
epaisseur = 1;

//Code

difference()
{
    union()
    {
        linear_extrude(epaisseur){circle(radius, $fn = 200);};
        linear_extrude(epaisseur + length){circle(axisRadius, $fn = 200);};
    };
    
    rotate([0,90,0])
    {
        translate([-epaisseur - length/2,0,-10])
        {
            linear_extrude(20){circle(holeRadius, $fn =200);};
        };
    };
}