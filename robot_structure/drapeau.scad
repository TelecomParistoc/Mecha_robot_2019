// Dimensions de la pièces

rayonTige = 4.5;
epaisseur = 3;
epaisseurSup = 5;
longeur = 20;
rayonVis = 1.5;
rayonEcrou = 4.5;

// Module pave

module pave(longeurPave,largeurPave,hauteurPave)
{
    linear_extrude(hauteurPave)
    {
        polygon(points = [[0,0],[longeurPave,0],[longeurPave,largeurPave],[0,largeurPave]]);
    }
}


// Module de la pince
module pince()
{
difference()
{
    pave(longeur+2*epaisseur,2*(rayonTige+epaisseur),2*rayonTige+epaisseur+epaisseurSup);
    translate([-epaisseur,epaisseur,epaisseurSup])
    {
        pave(longeur+4*epaisseur,2*rayonTige,2*rayonTige+epaisseur+epaisseurSup);
    };
    
    translate([longeur/2 + epaisseur, rayonTige+epaisseur, -epaisseur])
    {
        linear_extrude(50)
        {
            circle(rayonVis, $fn = 200);
        };
    };
    
    translate([longeur/2 + epaisseur, rayonTige+epaisseur, epaisseur])
    {
        linear_extrude(50)
        {
            circle(rayonEcrou, $fn = 6);
        };
    };
}
}

// Pièce finale

union()
{
    pince();
    translate([longeur/2 + epaisseur, rayonTige+epaisseur,epaisseurSup+2*rayonTige])
    {
        linear_extrude(epaisseur)
        {
            circle(20,$fn = 200);
        }
    }
}