// list in dart
// a collection of multiple data

//similar type , different type of data
//dart list is similar to an array , which is the ordered collection of the objects
//The array is the most popular and commonly used collection is any other programming language.
//The syntax of declaring the list is given below
//var list = [10,20,30,40,50]
//The Dart list is defined by storing all elements inside bracket ([]) and separated by commas (,)

//run time operation on apply list with help of inseration , addation , update , remove with them

//Two type of list
//fix size of list
// when create a list then we fix his size
//growable size of list
//mean in that list not fix them , who mush required them  items in list , time to time add item in list

main(){
  var listNames = [10,20,30,40];
  //add in last of list
  listNames.add(50);
  print("Hello World1 $listNames");


  //blank list in add them item
  var names = [];
  names.add("raman");
  names.add("ramanujan");
  names.add("ramiz");
  names.add("ross");
  names.addAll(listNames);
  print("hello ram $names");

//  item add list percular index no.
//  list insert use with list index
//  insert(index, element)
names.insert(2,true);
print("hello arsh $names");

//insert all use in list
names.insert(3, listNames);
print("hello prience $names");

// update the list
names[4]= "Rameeez";
print("hello free $names");

//replace in list
// replaceRange(start, end, replacements)
listNames.replaceRange(0,3,[1,2,3,4]);
print("hello World $listNames");

//remove element in list
listNames.removeLast();
print("Hello World $listNames");

//remove perticular item
listNames.remove(40);
print('hello world $listNames');

//removeAt index
listNames.removeAt(1);
print("hello world $listNames");


//removeRange(start, end) index
listNames.removeRange(0, 2);
print("hello world $listNames");



//operation list ki length
  var listNames2 = [10,20,30,40];
print("helo world2 $listNames2");
print("length check hello world2 ${listNames2.length}");
print("reversed hello world2 ${listNames2.reversed}");
print("print first element hello world2 ${listNames2.first}");
print("print last element hello world2 ${listNames2.last}");
print(" check isEmapty ${listNames2.isEmpty}");
print("index from item ${listNames2.elementAt(2)}");




}