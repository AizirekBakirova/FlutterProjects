class Continents {
  Continents(
      {this.asiaContinentTest,
      required this.continentName,
      required this.continetImage});
  final String continentName;

  final String continetImage;
  AsiaContinentTest? asiaContinentTest;
}

class AsiaContinentTest {
  final String surooText;
  final String image;

  AsiaContinentTest({required this.surooText, required this.image});
}

//object
Continents europe = Continents(
    continentName: 'Europe', continetImage: 'assets/continents/europe.png');
Continents asia = Continents(
    continentName: 'Asia',
    continetImage: 'assets/continents/asia.webp',
    asiaContinentTest: AsiaContinentTest(
        surooText: 'Astana', image: 'assets/capitals/astana.jpg'));

Continents nAmerica = Continents(
    continentName: 'North America',
    continetImage: 'assets/continents/namerica.png');
Continents sAmerica = Continents(
    continentName: 'South America',
    continetImage: 'assets/continents/samerica.png');
Continents africa = Continents(
    continentName: 'Africa', continetImage: 'assets/continents/africa.png');
Continents australia = Continents(
    continentName: 'Australia',
    continetImage: 'assets/continents/australia.png');

List<Continents> continentsList = [
  europe,
  asia,
  nAmerica,
  sAmerica,
  africa,
  australia
];
