// maps

//in dart programming, maps are dictionary-like data types
// that exit in key-value form(know as lock-key)
//There is no restriction on the type of data that goes
// in a map data type .
//Maps are very flexible and can mutate their size based
// on the requirements
//it is important to note that all locks (kays) need to be
// unique  side a map data type

//var map_name = {key1 : value1, key2 : value2, key3 : value3}

void main(){
  print("hello world");

  var map_name = {
    'key1':'value1',
    'key2': 2,
    'key3': 3.0,
    'key':true
  };
  print(map_name['key2']);
  print(map_name['key5']);
  print(map_name['KEY2']);

  //value override
  map_name['key1'] = 12;
  print(map_name['key1']);

  print(map_name);

  //map ka object create any time value add
  //map in value add them
  var mapName = Map();
  mapName['Name'] = "raman";
  mapName['yEarOfExperience'] = "Raman";
  mapName['Avg.Rating'] = "Raman";
  mapName['CanLocateToOffice'] = "Raman";
  print(mapName);

  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Name'));
  print(mapName.containsValue(false));
  print(mapName.remove('CanLocateToOffice'));
  print(mapName);

}