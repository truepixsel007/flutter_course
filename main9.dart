// conditional programming

void main(){

  // if(condition){
  // true
  // }else{
  //  false
  // }

  var a = 100;

  //if, else if, else
  if(a>200){
    print("condition one true");
  }else if(a<50){
    print("condition two true");
  }else if(a<80){
    print("condition three true");
  }else{
    print("all condition are false");
  }


//  nested if else
var b = 10;

  //if, else if, else
  if(b>5 && b<15){
    print("condition one true");
    if(a>3){
      print("true true");
    }
  }else if(b<50){
    print("condition two true");
  }else if(b<80){
    print("condition three true");
  }else{
    print("all condition are false");
  }




}