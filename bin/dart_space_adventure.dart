import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';

Future<String> getJsonFromFileTitle(String filePath) async {
  final inputFile = File(filePath);
  final input = await inputFile.readAsString();
  Map<String, dynamic> decodedJson = json.decode(input);
  return decodedJson['name'];
}

Future<List<Planet>> getJsonFromFile(String filePath) async {
  final inputFile = File(filePath);
  final input = await inputFile.readAsString();
  Map<String, dynamic> decodedJson = json.decode(input);
  List<dynamic> p = decodedJson['planets'];

  var pList = <Planet>[];
  for (var i = 0; i < p.length; i++) {
    pList.add(Planet(name: p[i]['name'], description: p[i]['description']));
  }
  print(pList.runtimeType);
  return pList;
}

void main(List<String> arguments) async {
  var systemName = await getJsonFromFileTitle(arguments[0]);
  var list = await getJsonFromFile(arguments[0]);

  SpaceAdventure(
          planetarySystem: PlanetarySystem(name: systemName, planets: list))
      .start();
}

// List<Planet> mockPlanets() {
//   return planetData.entries
//       .map((e) => Planet(name: e.key, description: e.value))
//       .toList();
// }
