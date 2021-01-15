class Planet {
  final String name;
  final String description;

  Planet({this.name, this.description});

  // Null Object design pattern
  Planet.nullPlanet(): name = 'Null', description = 'Null';
}
