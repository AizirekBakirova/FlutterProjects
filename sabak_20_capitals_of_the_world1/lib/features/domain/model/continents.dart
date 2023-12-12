class Continents {
  const Continents({required this.continentName, required this.continetImage});
  final String continentName;
  final String continetImage;
}

Continents europe = const Continents(
    continentName: 'Europe', continetImage: 'assets/continents/europe.png');
Continents asia = const Continents(
    continentName: 'Asia', continetImage: 'assets/continents/asia.webp');
Continents nAmerica = const Continents(
    continentName: 'North America',
    continetImage: 'assets/continents/namerica.png');
Continents sAmerica = const Continents(
    continentName: 'South America',
    continetImage: 'assets/continents/samerica.png');
Continents africa = const Continents(
    continentName: 'Africa', continetImage: 'assets/continents/africa.png');
Continents australia = const Continents(
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
