import 'planet.dart';

class PlanetarySystem {
  String name; // declare member vars in outer class scope
  List<Planet> planets; // list of Planet object, called planets
  PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});

  int get numberOfPlanets => planets.length;

  void addPlanetToSystem(Planet planet) {
    planets.add(planet);
  }
}

// var solarSys = PlanetarySystem(name: 'Solar System', planets: []);
