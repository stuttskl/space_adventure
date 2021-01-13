class PlanetarySystem {
  String name; // declare member vars in outer class scope

  // constructor -- BEFORE
  // PlanetarySystem() {
  //   this.name = 'Unnamed System';
  // }

  // initializer list -- AFTER
  // PlanetarySystem() : name = 'Unnamed System';

  // PlanetarySystem.withName(String name) { - BEFORE
  //   this.name = name;
  // }

  // intializing formal -- AFTER
  // PlanetarySystem.withName(this.name);

  // [] make that paramter optional, but has default val
  PlanetarySystem([this.name = 'Unnamed System']);
}

// implicit default constructor, does not need new keyword
var ps = PlanetarySystem();
var dagobah = PlanetarySystem('Dagobah System');
