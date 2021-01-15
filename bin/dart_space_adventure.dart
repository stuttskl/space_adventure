import 'dart:async' show Future;
import 'dart:convert';
import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';

Future<Map> getJsonFromFile(String filePath) async {
  final inputFile = File(filePath);
  final input = await inputFile.readAsString();
  Map<String, dynamic> decodedJson = json.decode(input);
  return decodedJson;
}

void main(List<String> arguments) async {
  var data = await getJsonFromFile(arguments[0]);
  var systemName = data['name'];

  SpaceAdventure(
      planetarySystem: PlanetarySystem(name: systemName, planets: [])).start();
}

// List<Planet> mockPlanets() {
//   return planetData.entries
//       .map((e) => Planet(name: e.key, description: e.value))
//       .toList();
// }
