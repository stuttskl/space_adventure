class PlanetarySystem {
  String name; // declare member vars in outer class scope
  // [] make that paramter optional, but has default val
  // {} make it a named parameter
  PlanetarySystem({this.name = 'Unnamed System'});
}

// implicit default constructor, does not need new keyword
var ps = PlanetarySystem();
// {} require name to be specified and labeled (assigned to instance var)
var dagobah = PlanetarySystem(name: 'Dagobah System');
