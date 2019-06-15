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
          var tempcube =temp();
         for(k=0;k<3;k++)
           {
             cube[0][k][2]=tempcube[3][k][2];

             cube[1][k][2]=tempcube[0][k][2];
             cube[5][k][2]=tempcube[1][k][2];
             cube[3][k][2]=tempcube[5][k][2];

           }

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
   }
   //TODO pass constant index
   Cube moveU() // bug shayad
   {

     var tempcube=temp();
     int constantindex = 0;
     for(j=0;j<3;j++)
         cube[0][constantindex][j]=tempcube[2][constantindex][j];
     for(j=0;j<3;j++)
       cube[2][j][constantindex]=tempcube[5][j][constantindex];
     for(j=0;j<3;j++)
       cube[4][j][2]=tempcube[0][j][constantindex];
     for(j=0;j<3;j++)
       cube[5][j][constantindex]=tempcube[4][0][j];
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
