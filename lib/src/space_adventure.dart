import 'dart:io';
import 'dart:math';
import 'planetary_system.dart';

class SpaceAdventure {
  PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    print('Let\'s go on an adventure! \n');
    travel(promptForRandomOrSpecificDestination(
        'Shall I randomly choose a planet for you to visit? (Y or N)'));
  }

  // prints program greeting and gets number of planets to explore
  void printGreeting() {
    print('Welcome to the ${planetarySystem.name}!');
    print('There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }

  void printIntroduction(String name) {
    print(
        'Nice to meet you, $name. My name is Eliza, I\'m an old friend of Alexa.');
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  void travelToRandomPlanet() {
    var planets = <String>[
      'Earth',
      'Mars',
      'Jupiter',
      'Saturn',
      'Pluto',
      'Uranus',
      'Venus'
    ];

    var randomPlanet, randInt;

    for (var i = 0; i < planets.length; i++) {
      randInt = (Random().nextInt(3));
      randomPlanet = planets[randInt];
    }

    print('Traveling to $randomPlanet...!');
  }

  void travelTo(String planetName) {
    print('Traveling to $planetName...\n'
        'Arrived at $planetName. A very cold planet, furthest from the sun.');
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomPlanet();
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit.'));
    }
  }

  bool promptForRandomOrSpecificDestination(String prompt) {
    String answer;

    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry, I didn\'t get that');
      }
    }
    return false;
  }
}
