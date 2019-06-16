class Cube
{
  var i ,j,k;
  List<String> colours = ["White","Red","Green","Orange","Blue","Yellow"];
   var  cube= List.generate(6,(_) => List.generate(3, (_)=> List.filled(3, "Black"),growable: false),
   growable: false);
   Cube()
   {
     var i,j,k ;
     for(i=0;i<6;i++)
       {
        for( j =0;j<3;j++)
          for( k=0;k<3;k++) {
            cube[i][j][k] = colours[i];
          }
       }

   }
   Cube moveR()
   {
     // TODO FIX KARNA HAI
          var tempcube =temp();
          for(k=0;k<3;k++)
            cube[2][0][k]=tempcube[2][k][2];
          for(k=0;k<3;k++)
            cube[2][1][k]=tempcube[2][k][1];
          cube[2][2][0]=tempcube[2][0][0];
          cube[2][2][1]=tempcube[2][1][1];
          cube[2][2][2]=tempcube[2][2][0];
         for(k=0;k<3;k++)
           {
             cube[0][k][2]=tempcube[3][k][0];
             cube[3][k][0]=tempcube[5][2][k];
             cube[5][k][2]=tempcube[1][k][2];
             cube[1][k][2]=tempcube[0][k][2];
           }
          tempcube=null;

   }
   Cube moveL()
   {
     var tempcube = temp();
     for(k=0;k<3;k++)
       {
         cube[0][k][0]=tempcube[3][k][0];

         cube[1][k][0]=tempcube[0][k][0];
         cube[5][k][0]=tempcube[1][k][0];
         cube[3][k][0]=tempcube[5][k][0];       }
     tempcube=null;

   }
   //TODO pass constant index
   Cube moveU() // bug shayad
   {

     var tempcube=temp();
     int constantindex = 0;
     for(k=0;k<3;k++)
    cube[1][0][k]=tempcube[1][k][2];
     for(k=0;k<3;k++)
     cube[1][1][k]=tempcube[1][k][1];
     cube[1][2][0]=tempcube[1][0][0];
     cube[1][2][1]=tempcube[1][1][1];
     cube[1][2][2]=tempcube[1][2][0];
      for(k=0;k<3;k++)
        {
          cube[0][0][k]=tempcube[2][0][k];
          cube[2][k][0]=tempcube[5][2][k];
          cube[5][2][k]=tempcube[4][k][2];
          cube[4][k][2]=tempcube[0][0][k];
        }
      tempcube=null;
   }
   printCube()
   {
     for(i=0;i<6;i++)
     {
       for( j =0;j<3;j++)
         for( k=0;k<3;k++) {
           print("${cube[i][j][k]} index $k");
         }
     }
   }
    temp()
   {
     var tempCube =  List.generate(6,(_) => List.generate(3, (_)=> List.filled(3, "Black"),growable: false),
         growable: false);
     for(i=0;i<6;i++)
       for(j=0;j<3;j++)
         for(k=0;k<3;k++)
           tempCube[i][j][k]=cube[i][j][k];
        return tempCube;
   }

}

