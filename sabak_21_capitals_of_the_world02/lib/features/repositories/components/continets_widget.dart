import 'package:flutter/material.dart';
import 'package:sabak_20_capitals_of_the_world1/features/domain/model/continents.dart';
import 'package:sabak_20_capitals_of_the_world1/features/repositories/pages/detail_page.dart';
import 'package:sabak_20_capitals_of_the_world1/features/repositories/pages/detail_page2.dart';

import 'package:sabak_20_capitals_of_the_world1/features/repositories/theme/text_style.dart';

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
              if (continentsList[index].test != null) {
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) {
                    return DetailPage2();
                  }),
                ));
              } else {
                final snackBar = SnackBar(
                    content: Text(
                      'Сиз тандаган ${continentsList[index].continentName} континенти бош',
                      style: TextStyle(fontFamily: 'Urbanist'),
                    ),
                    action: SnackBarAction(label: '', onPressed: () {}));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
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
