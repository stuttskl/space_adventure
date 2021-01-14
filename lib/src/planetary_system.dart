import 'dart:math';
import 'planet.dart';

class PlanetarySystem {
  final Random _random = Random(); // seed once
  final String name; // declare member vars in outer class scope
  final List<Planet> planets; // list of Planet object, called planets
  PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});

  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;

  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  }
}

// var solarSys = PlanetarySystem(name: 'Solar System', planets: []);
