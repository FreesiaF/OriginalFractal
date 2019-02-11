

int orientation = 90;
public void setup()
{
  size(600,500);
  background(0);
  stroke(255);
  dragonCurve(makeCurve(10), 150,270);
 
}
public void draw(){}

public void dragonCurve(String nums, int x, int y){
  line(x,y, x, y-10);
  y=y-10;

  for(int i= 0; i < nums.length(); i++){
    String sNums = nums.substring(i,i+1);

    if(sNums.equals("1")){
      if(orientation == 90)
      {
        line(x,y, x+10,y);
    
        x = x+10;
        orientation = 0;
      }
      else if(orientation == 0)
      {
        line(x,y, x,y+10);
    
        y=y+10;
        orientation = 270;
      }
    else if(orientation == 270)
      {
      line(x,y, x-10,y);
    
        x = x-10;
        orientation = 180;
      }
      else if(orientation == 180)
      {
        line(x,y, x,y-10);
    
        y=y-10;
        orientation = 90;
      }
    }

  if (sNums.equals("0"))
  {    
    if(orientation == 90)
      {
        line(x,y, x-10,y);
    
        x = x-10;
        orientation = 180;
      }
    else if(orientation == 0)
      {
        line(x,y, x,y-10);
    
        y=y-10;
        orientation = 90;
      }
    else if(orientation == 270)
      {
      line(x,y, x+10,y);
    
        x = x+10;
        orientation = 0;
      }
     else if(orientation == 180)
      {
        line(x,y, x,y+10);
    
        y=y+10;
        orientation = 270;
      }
    }
  }
 }



public String makeCurve(int dragNum) {
  
  if(dragNum == 1)
  {
    return "1";
  }

  
  else{
    return makeCurve(dragNum-1) + "1" + reverse(onesComplement(makeCurve(dragNum-1))) ;

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