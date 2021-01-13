import 'planet.dart';

class PlanetarySystem {
  String name; // declare member vars in outer class scope
  List<Planet> planets; // list of Planet object, called planets
  PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});

  int get numberOfPlanets => planets.length;
}

var ps = PlanetarySystem();
var dagobah = PlanetarySystem(name: 'Dagobah System');
// var solarSys = PlanetarySystem(name: 'Solar System', planets: LIST);
