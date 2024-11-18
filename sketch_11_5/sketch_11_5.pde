String naam = "Jan";
boolean gevonden = false;
String[] namen = {"Monika", "Jan", "Henk", "Mari", "Kanyewest", "Henk", "Pieter"};

void setup(){
  for(int i = 0; i < namen.length; i++){
    if(naam == namen[i]){
      gevonden = true;
    }
  }
  
  if(gevonden){
    println(naam + " is hier" );
  }
}
