import 'package:dart_space_adventure/dart_space_adventure.dart';

const systemName = 'Solar System';
const planetData = {
  'Mars': 'Known as the red planet.',
  'Earth': 'There is something very familiar about this planet.',
  'Jupiter': 'A gas giant, with a noticeable red spot.',
  'Venus': 'It\'s cloudy here!',
  'Mercury': 'A very hot planet, closest to the sun.',
};

void main(List<String> arguments) {
  SpaceAdventure(
          planetarySystem:
              PlanetarySystem(name: systemName, planets: mockPlanets()))
      .start();
}

List<Planet> mockPlanets() {
  return planetData.entries
      .map((e) => Planet(name: e.key, description: e.value))
      .toList();
}
