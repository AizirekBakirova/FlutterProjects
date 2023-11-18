class Kyrgyzstan {
  Kyrgyzstan(
      {required this.capital,
      required this.region,
      required this.lake,
      required this.mountain,
      required this.attribute});

  final String capital;
  final int region;
  final int lake;
  final String mountain;
  final String attribute;
}

//object
final country = Kyrgyzstan(
    capital: 'Bishkek',
    region: 7,
    lake: 4,
    mountain: 'Jenish',
    attribute: 'Red Flag');
