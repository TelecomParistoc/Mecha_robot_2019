 // Machoire phare 

// Conception zonne roulement 2D

//Mesure à ajuster 
rayonTige = 1.5 ;
rayonRoulement =  6;
rayonExtremiteMachoire = 10;
EpaisseurPiece = 6;
EpaisseurRoulement = 4;
resolution = 200;
longeurAttache = 40;
epaisseurAttache = 2;
rayonVisFixation = 1.5;
epaisseurPhare = 5 ;

// On définit l'extrémité de la machoire

translate([0,0,10])
{
difference()
{
union()
{
translate([longeurAttache,0,0])
                            {

    difference()    // La zone du roulement
        {
        linear_extrude(EpaisseurPiece){circle(rayonExtremiteMachoire, $fn = resolution);};
        
          
         translate([0,0,-1])
                {
                linear_extrude(EpaisseurRoulement + 1){circle(rayonRoulement, $fn = resolution);}
               ;};
        };
                                       }


translate([0,0,EpaisseurPiece - epaisseurAttache])
{
linear_extrude(epaisseurAttache) // L'attache
    {
    polygon(points=[[0,rayonExtremiteMachoire],[0,-rayonExtremiteMachoire],[longeurAttache,-rayonExtremiteMachoire],[longeurAttache,rayonExtremiteMachoire]]);
    }
};
};
translate([longeurAttache,0,0])
{
    linear_extrude(EpaisseurPiece+1){circle(rayonTige, $fn = resolution);};
};
            };
        };
// Plaque fixation parois
        
var = EpaisseurPiece + 10 ;    

difference()
{
    union()
    {
        rotate([0,-90,0])
        {        
            linear_extrude(epaisseurAttache)
            {
                polygon(points=[[0,rayonExtremiteMachoire],[0,-rayonExtremiteMachoire],[var,-rayonExtremiteMachoire],[var,rayonExtremiteMachoire]]);
            };
        };
        translate([epaisseurPhare,0,0])
        {   
            rotate([0,-90,0])
            {
                linear_extrude(epaisseurAttache)
                {
                    polygon(points=[[0,rayonExtremiteMachoire],[0,-rayonExtremiteMachoire],[var,-rayonExtremiteMachoire],[var,rayonExtremiteMachoire]]);
                };
            };
        };
    };
//Trou vis fixation paroi

    translate([-3,0,5])
    {
        rotate([0,90,0])
        {
            linear_extrude(10)
            {
                circle(rayonVisFixation, $fn = resolution);
            };
        };
    }
};
