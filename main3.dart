//variables and datatypes

//varialbe and objects


//input lena hai or out put show krna hai
import 'dart:io';

void main(){
  print('welcome to dart!');
  stdout.write('enter your name');
  var name = stdin.readLineSync();
  print("welcome, $name");

  Human();  //creating an class object

  //declarvation of variable
// int? a; direct not call them , but that ? sign with you use them null value
int a;
a = 5;  //initialization
  print(a);
  a = 7;
  print(a);

//  inline decolaration
String name2 = "Raman";
name2 = "Ramanjuan";
print(name2);//Reassign

  int b = 1234567891011112131;
// variable in not big int store them
BigInt longValue;
longValue = BigInt.parse('12345678910111121314');

//point in value
double percentage = 99.65;
num  pr1 = 99.44;
//int me point value store them
//num in point value and whole value store value them
bool isLogin = false;
isLogin = true;


//next we learn  var and dynamic datatype





}
class Human {
  Human();
}