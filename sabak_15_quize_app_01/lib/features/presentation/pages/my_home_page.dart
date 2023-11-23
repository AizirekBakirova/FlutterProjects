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
      backgroundColor: const Color(0xff343434),
      appBar: myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Are there 7 regions in Kyrgyzstan?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
            SizedBox(
              height: 90,
            ),
            CustomButton(
              backgroundColor: Color(0xff4CB050),
              text: 'True',
            ),
            CustomButton(
              backgroundColor: Color(0xffef443a),
              text: 'False',
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Icon(
                  Icons.done,
                  color: Color(0xff4CB050),
                  size: 35,
                ),
                Icon(
                  Icons.close,
                  color: Color(0xffef443a),
                  size: 35,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: const Text('Tapshyrma 7'),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
  });
  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              minimumSize: const Size(335, 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
          )),
    );
  }
}
