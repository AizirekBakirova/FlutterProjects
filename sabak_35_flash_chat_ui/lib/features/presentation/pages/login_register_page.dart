import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sabak_35_flash_chat_ui/features/presentation/pages/chat_screen.dart';

class LoginRegsiterPage extends StatefulWidget {
  const LoginRegsiterPage({super.key});

  @override
  State<LoginRegsiterPage> createState() => _LoginRegsiterPageState();
}

class _LoginRegsiterPageState extends State<LoginRegsiterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 60,
                ),
                AnimatedTextKit(animatedTexts: [
                  WavyAnimatedText('Flash Chat',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w400)),
                  // WavyAnimatedText('look at the waves',
                  //     textStyle: TextStyle(color: Colors.green, fontSize: 30))
                ])
              ],
            ),
            const SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              child: Container(
                height: 60,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlueAccent,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.lightBlueAccent,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueAccent,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blueAccent,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ]),
              child: const Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _myAppBar() => AppBar(backgroundColor: Colors.grey);
}
