import 'package:flutter/material.dart';
import 'package:sabak22_capitals_of_the_world3/features/domain/model/continents.dart';
import 'package:sabak22_capitals_of_the_world3/features/repositories/pages/detail_page.dart';
import 'package:sabak22_capitals_of_the_world3/features/repositories/theme/text_style.dart';

class ContinentsWidget extends StatelessWidget {
  const ContinentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: continentsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => DetailPage(
                          image: continentsList[index].continetImage,
                        )),
                  ));
            },
            child: Container(
              height: 175,
              width: 160,
              color: const Color.fromARGB(255, 253, 251, 251),
              child: Column(
                children: [
                  Text(
                    continentsList[index].continentName,
                    style: AppTextStyle.titleTextStyle,
                  ),
                  Image.asset(
                    continentsList[index].continetImage,
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
