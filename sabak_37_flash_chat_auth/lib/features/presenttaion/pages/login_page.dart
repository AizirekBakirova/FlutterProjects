import 'package:flutter/material.dart';

import 'package:sabak_37_flash_chat_auth/components/custom_button.dart';
import 'package:sabak_37_flash_chat_auth/components/custom_text_field.dart';
import 'package:sabak_37_flash_chat_auth/components/logo_image.dart';
import 'package:sabak_37_flash_chat_auth/features/presenttaion/pages/chat_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoImage(
                logoSize: 200,
              ),
              CustomTextField(
                text: 'Enter your email',
                onChanged: (value) {},
                obscureText: false,
              ),
              CustomTextField(
                text: 'Enter your password',
                onChanged: (value) {},
                obscureText: true,
              ),
              CustomButton(
                  color: Colors.indigoAccent,
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, ChatPage.id);
                  }),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Did not have an account yet?'),
                  Text(
                    ' Register.',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
