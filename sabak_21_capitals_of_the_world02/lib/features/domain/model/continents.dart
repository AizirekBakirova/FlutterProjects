import 'package:sabak_20_capitals_of_the_world1/features/domain/model/test.dart';

class Continents {
  Continents(
      {required this.continentName, required this.continetImage, this.test});
  final String continentName;
  final String continetImage;
  final List<Test>? test;
}

//object
Continents europe = Continents(
    continentName: 'Europe',
    continetImage: 'assets/continents/europe.png',
    test: capitalsList);
Continents asia = Continents(
    continentName: 'Asia',
    continetImage: 'assets/continents/asia.webp',
    test: capitalsList);
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
