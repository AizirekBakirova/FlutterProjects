import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class FlagsWidget extends StatelessWidget {
  const FlagsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CountryFlag.fromCountryCode('us', height: 20, width: 20),
          CountryFlag.fromCountryCode('de', height: 20, width: 20),
          CountryFlag.fromCountryCode('it', height: 20, width: 20),
          CountryFlag.fromCountryCode('ru', height: 20, width: 20),
          CountryFlag.fromCountryCode('tr', height: 20, width: 20),
        ],
      ),
    );
  }
}
