int limit = 500;
public void setup()
{
  size(500,500);
 
}
public void draw()
{
  background(0);
  stroke(255);
  dragonCurve(1);
}
public String dragonCurve(int dragNum) {
  
  if(dragNum == 1)
  {
    line(5,5,10,10);
    line(10,10,20,20);  
  }

  
  else{
    return dragonCurve(dragNum-1) + "1" + reverse(onesComplement(dragonCurve(dragNum-1))) ;
  }
}

public String reverse(String sWord){
  String rev = "";
  for (int i = 0; i < sWord.length(); i++){
    String let = sWord.substring(i,i+1);
    rev = let+rev;
}
return rev;
}

public String onesComplement(String s){
  String flip = "";
  for (int i = 0; i < s.length(); i++){
   if(s.substring(i,i+1).equals("0") )
    flip = flip + 1;
   else
    flip = flip + 0;
  }
  return flip;
}