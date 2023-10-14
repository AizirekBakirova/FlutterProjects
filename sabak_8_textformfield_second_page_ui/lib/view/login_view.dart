import 'package:flutter/material.dart';
import 'package:sabak_8_textformfield_second_page_ui/view/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/Design circle.png'),
              ],
            ),
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            // Image.network(
            //   'https://static.vecteezy.com/system/resources/previews/024/029/941/original/social-media-icons-clipart-transparent-background-free-png.png',
            //   width: 150,
            // ),
            Image.asset(
              'assets/avatar.png',
              width: 170,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 15,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Enter Your Email'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 15,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Enter Your Password'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(320, 60),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                );
              },
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
