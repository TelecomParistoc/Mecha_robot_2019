// Relevant parameters

rayonRoulement = 15;
hauteurPoulie = 15; 
largeurPoulie = 20;
epaisseur = 2.5;

//

module couronne(largeur,rayonBas,rayonHaut)
{
    linear_extrude(largeur)
    {
        difference()
        {
            circle(rayonHaut,$fn = 200);
            circle(rayonBas, $fn = 200);
        };
    }
}


//

difference()
{
    couronne(largeurPoulie + 2 * epaisseur,rayonRoulement,rayonRoulement + epaisseur+hauteurPoulie);
    translate([0,0,epaisseur]){
    couronne(largeurPoulie, rayonRoulement + epaisseur, rayonRoulement + epaisseur+hauteurPoulie+1);};
}