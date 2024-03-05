import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sabak_37_flash_chat_auth/features/presenttaion/pages/chat_page.dart';
import 'package:sabak_37_flash_chat_auth/features/presenttaion/pages/login_page.dart';
import 'package:sabak_37_flash_chat_auth/features/presenttaion/pages/register_page.dart';

import 'package:sabak_37_flash_chat_auth/firebase_options.dart';

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
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        ChatPage.id: (context) => const ChatPage(),
      },
    );
  }
}
