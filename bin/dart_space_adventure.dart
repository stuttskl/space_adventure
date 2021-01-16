import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';

// get data from JSON file and save as string
Future<dynamic> decodeJsonFromFile(String filePath) async {
  final inputFile = File(filePath);
  final input = await inputFile.readAsString();
  return input;
}

// get the system name from the from the decoded json
Future<String> getPlanetarySystemName(String input) async {
  Map<String, dynamic> decodedJson = json.decode(input);
  return decodedJson['name'];
}

// create a list of planet objects to return to main
Future<List<Planet>> getPlanetsFromFile(String input) async {
  Map<String, dynamic> decodedJson = json.decode(input);
  List<dynamic> p = decodedJson['planets'];

  var pList = <Planet>[];
  for (var i = 0; i < p.length; i++) {
    pList.add(Planet(name: p[i]['name'], description: p[i]['description']));
  }
  return pList;
}

void main(List<String> arguments) async {
  // initial decoding of JSON data from CLI args
  var data = await decodeJsonFromFile(arguments[0]);

  // start up a new Space Adventure w/ data from JSON file
  SpaceAdventure(
    planetarySystem: 
      PlanetarySystem(
        name: await getPlanetarySystemName(data),
        planets: await getPlanetsFromFile(data)
      )
    )
    .start();
}
