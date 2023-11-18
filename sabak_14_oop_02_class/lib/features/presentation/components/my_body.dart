import 'package:flutter/material.dart';
import 'package:sabak_14_oop_02_class/features/data/model.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('https://vemaps.com/uploads/img/kg-06.png'),
          const Text(
            'Kyrgyzstan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Capital: ${country.capital}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'How many regions are there in Kyrgyzstan: ${country.region}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'How many lakes are there in Kyrgyzstan: ${country.lake}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'What kind of attribute is there: ${country.attribute}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'What is the highest mountain in Kyrgyzstan: ${country.mountain}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
