import 'package:flutter/material.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/chat_page.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/login_page.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/register_page.dart';
import 'package:sabak_36_flash_chat_ui_route_animation_auth/features/presentation/pages/welcome_page.dart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => const WelcomePage(),
        LoginPage.id: (context) => const LoginPage(),
        RegsiterPage.id: (context) => const RegsiterPage(),
        ChatPage.id: (context) => const ChatPage(),
      },
    );
  }
}
