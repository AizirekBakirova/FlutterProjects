import 'package:flutter/material.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/components/custom_button.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/components/custom_text_field.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/components/logo_image.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/chat_page.dart';

class RegsiterPage extends StatefulWidget {
  const RegsiterPage({super.key});
  static const String id = 'register_page';

  @override
  State<RegsiterPage> createState() => _RegsiterPageState();
}

class _RegsiterPageState extends State<RegsiterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoImage(
                logoSize: 200,
              ),
              CustomTextField(
                text: 'Enter your email',
              ),
              CustomTextField(text: 'Enter your password'),
              CustomButton(
                  color: Colors.indigoAccent,
                  text: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, ChatPage.id);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
