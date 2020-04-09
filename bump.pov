#include "colors.inc"
#include "textures.inc"

// Loacalización de la camara, a partir de la versión 3.5 hay que agragar ;
#declare camLoc = <0,0,-1.8>;

//Agregamos la camara
camera {
     location camLoc
     //Define la relación de aspecto de la imagen
     /*
     up y
     right x*/
     direction z  // La camara mira en +z
}


//Declaramos una esfera
#declare plainBall = sphere { <0,0,0>, 0.5 };

//Realizamos un objeto
object { 
	//Le decimos que tome la esfera antes declarada
	plainBall
	//Hacemos la textura del objeto
	texture {
		//Color	
		pigment { Blue }
		//Para modificar la textura con una imagen
		normal { bump_map { gif "eyelet.gif"
				interpolate 2
				map_type 0 once
				bump_size 5  }
			//Modificadores para ajustar al objeto
			translate <-0.5, -0.5, 1>
			scale <0.5,0.5,1> }
   	}	

} 
 
//Plano que hace como el piso
plane { y, -0.51
   pigment {DarkGreen}
   finish {ambient 0.1 diffuse 0.5}
}


//Color de todo lo demás
background { color Gray }

//Iluminación
light_source { <-30,40, -40> color White }
