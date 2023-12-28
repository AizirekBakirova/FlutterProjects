class Test {
  final String flagName;
  final String flagImage;
  final List<Joop> joop;

  Test({required this.flagName, required this.flagImage, required this.joop});
}

class Joop {
  final String countriesName;
  bool isTrue;

  Joop({required this.countriesName, required this.isTrue});
}

Test italy = Test(
    flagName: 'Which country`s flag is this?',
    flagImage: 'assets/continents/italy.png',
    joop: [
      Joop(countriesName: 'Spain', isTrue: false),
      Joop(countriesName: 'Poland', isTrue: false),
      Joop(countriesName: 'Romania', isTrue: false),
      Joop(countriesName: 'Italy', isTrue: true),
    ]);

Test switzerland = Test(
    flagName: 'Which country`s flag is this?',
    flagImage: 'assets/continents/swit.jpg',
    joop: [
      Joop(countriesName: 'Switzerland', isTrue: true),
      Joop(countriesName: 'Germany', isTrue: false),
      Joop(countriesName: 'Sweden', isTrue: false),
      Joop(countriesName: 'Denmark', isTrue: false),
    ]);
Test france = Test(
    flagName: 'Which country`s flag is this?',
    flagImage: 'assets/continents/france.png',
    joop: [
      Joop(countriesName: 'Serbia', isTrue: false),
      Joop(countriesName: 'France', isTrue: true),
      Joop(countriesName: 'Estonia', isTrue: false),
      Joop(countriesName: 'Latvia', isTrue: false),
    ]);
Test portugal = Test(
    flagName: 'Which country`s flag is this?',
    flagImage: 'assets/continents/portugal.jpg',
    joop: [
      Joop(countriesName: 'Portugal', isTrue: true),
      Joop(countriesName: 'Iceland', isTrue: false),
      Joop(countriesName: 'San Marino', isTrue: false),
      Joop(countriesName: 'Great Britain', isTrue: false),
    ]);
Test belgium = Test(
    flagName: 'Which country`s flag is this?',
    flagImage: 'assets/continents/belgium.jpg',
    joop: [
      Joop(countriesName: 'Monaco', isTrue: false),
      Joop(countriesName: 'Andora', isTrue: false),
      Joop(countriesName: 'Belgium', isTrue: true),
      Joop(countriesName: 'Malta', isTrue: false),
    ]);

List<Test> capitalsList = [italy, switzerland, france, portugal, belgium];
