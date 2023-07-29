// function
// a sequence of  program instructions that performs a specific task , packaged as a unit
//funtion mean method
//class residency(length of time) usko kam krne ke liye,
//or reusebiliy bharhane ke liye hum function ka use krne hai

void main(){
  print('welcome to dart');

  var myC = myClass();
  myC.printName(); //  Func Calling

  var b = myClass();
  print(b.Add(3,4));


}

class myClass{

  myClass(){
    //Default Contrutor
    print("myClass Objectcreated!");
  }

  void printName(){//Declaration
    print('arshdeep');//  Definition
  }

  int Add(int no1 , int no2){
    int sum = no1 + no2;
    return sum ;
  }
}

