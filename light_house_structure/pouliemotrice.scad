// Relevant parameters

rayonRoulement =2.15;
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
    translate([0,7,-1]){linear_extrude(epaisseur + 2){circle(1, $fn = 200);}}; 
    translate([0,-7,-1]){linear_extrude(epaisseur + 2){circle(1, $fn = 200);}}; 
    translate([7,0,-1]){linear_extrude(epaisseur + 2){circle(1, $fn = 200);}}; 
    translate([-7,0,-1]){linear_extrude(epaisseur + 2){circle(1, $fn = 200);}}; 
}