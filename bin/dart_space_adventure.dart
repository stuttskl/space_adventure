import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  SpaceAdventure(
          planetarySystem:
              PlanetarySystem(name: 'Solar System', planets: mockPlanets()))
      .start();
}

List<Planet> mockPlanets() {
  return [
    Planet(name: 'Mars', description: 'Planet Description'),
    Planet(name: 'Earth', description: 'Planet Description'),
    Planet(name: 'Jupiter', description: 'Planet Description'),
    Planet(name: 'Venus', description: 'Planet Description'),
    Planet(name: 'Mercury', description: 'Planet Description'),
    Planet(name: 'Uranus', description: 'Planet Description'),
  ];
}
