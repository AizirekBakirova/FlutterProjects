class Test {
  final String capitalName;
  final String capitalImage;
  final List<Joop> joop;

  Test(
      {required this.capitalName,
      required this.capitalImage,
      required this.joop});
}

class Joop {
  final String countriesName;
  final bool isTrue;

  Joop({required this.countriesName, required this.isTrue});
}

Test bishkek = Test(
    capitalName: 'Bishkek',
    capitalImage: 'assets/continents/bishkek.jpg',
    joop: [
      Joop(countriesName: 'Kyrgyzstan', isTrue: true),
      Joop(countriesName: 'Kazakhstan', isTrue: false),
      Joop(countriesName: 'Uzbekistan', isTrue: false),
      Joop(countriesName: 'Turkmenistan', isTrue: false),
    ]);

Test astana = Test(
    capitalName: 'Astana',
    capitalImage: 'assets/continents/astana.jpg',
    joop: [
      Joop(countriesName: 'China', isTrue: false),
      Joop(countriesName: 'Mongolia', isTrue: false),
      Joop(countriesName: 'Kazakhstan', isTrue: true),
      Joop(countriesName: 'Turkmenistan', isTrue: false),
    ]);

Test baku = Test(
    capitalName: 'Baku',
    capitalImage: 'assets/continents/baku.jpg',
    joop: [
      Joop(countriesName: 'Bangladesh', isTrue: false),
      Joop(countriesName: 'India', isTrue: false),
      Joop(countriesName: 'Indonesia', isTrue: false),
      Joop(countriesName: 'Azerbaijan', isTrue: true),
    ]);

Test singapore = Test(
    capitalName: 'Singapore',
    capitalImage: 'assets/continents/sigapore.jpg',
    joop: [
      Joop(countriesName: 'Japan', isTrue: false),
      Joop(countriesName: 'South Korea', isTrue: false),
      Joop(countriesName: 'Malaysia', isTrue: false),
      Joop(countriesName: 'Singapore', isTrue: true),
    ]);

List<Test> capitalsList = [bishkek, astana, baku, singapore];
