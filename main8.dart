// final vs const keywords

//final me baad me assign kr sakte hai
//const me usi same assign krna hai

void main() {
//not reassign them
  final name = "Raman";
// name = " ramanujan";

  //not var use them , string and dynamic likh sakte hai
  final String name2;
  name2 = "ram";
  print(name2);


  //not re assign them
  const name3 = "raja";

  final names;
  names = [
    "raman",
    "aman",
    "ramanujan",
    "rajeev"
  ];
  names.add("peter");
  print(names);

//  run time final list in changes them
// run time const list in not changes them









}