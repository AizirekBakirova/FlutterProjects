import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/components/custom_button.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/components/logo_image.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/login_page.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/register_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  static const String id = 'welcome_page';

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                LogoImage(
                  logoSize: 60,
                ),
                AnimatedTextKit(animatedTexts: [
                  WavyAnimatedText('Flash Chat',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w400)),
                ])
              ],
            ),
            const SizedBox(height: 25),
            CustomButton(
              color: Colors.lightBlueAccent,
              text: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),
            CustomButton(
                color: Colors.blueAccent,
                text: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegsiterPage.id);
                }),
          ],
        ),
      ),
    );
  }

  AppBar _myAppBar() => AppBar(backgroundColor: Colors.grey);
}
