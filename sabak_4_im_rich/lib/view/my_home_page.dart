import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        title: const Center(
          child: Text(
            "Тапшырма 3",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontFamily: "Manrope-VariableFont"),
          ),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 317,
              height: 90,
              color: Color(0xffECB90B),
              child: Center(
                child: Text(
                  "I`m Rich",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Sofia-Regular",
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/image/diamond1.png",
              width: 300,
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/image/cat2.jpg",
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "I love my cat",
                  style: TextStyle(
                    fontFamily: "Sofia-regular",
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
