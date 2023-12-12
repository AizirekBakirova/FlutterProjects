import 'package:flutter/material.dart';
import 'package:sabak_20_capitals_of_the_world1/features/domain/model/continents.dart';

class ContinentsWidget extends StatelessWidget {
  const ContinentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 8.0, crossAxisSpacing: 8.0),
      itemCount: continentsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 175,
            width: 130,
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  continentsList[index].continentName,
                ),
                Image.asset(
                  continentsList[index].continetImage,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
