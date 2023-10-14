import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            color: const Color(0xff54b8ab),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/Design circle.png',
                      width: 130,
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      'https://images.nightcafe.studio/jobs/n87G63KK57HWXnM5iRMN/n87G63KK57HWXnM5iRMN--1--d8mur_2x.jpg?tr=w-1600,c-at_max',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  'Welcome Neytiri Sully!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.network(
            'https://freepngimg.com/save/10661-clock-transparent/451x451',
            width: 150,
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 18),
            child: Container(
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(137, 116, 114, 114),
                      offset: Offset(4, 4),
                      blurRadius: 10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
