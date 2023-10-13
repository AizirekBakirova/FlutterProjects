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
      backgroundColor: Color(0xffeeeeee),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 237,
            color: Color(0xff54b8AB),
            child: Column(children: [
              Row(
                children: [
                  Image.asset(
                    "assets/Design circle.png",
                    width: 130,
                  ),
                ],
              ),
              SizedBox(
                height: 90,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                      "https://images.nightcafe.studio/jobs/n87G63KK57HWXnM5iRMN/n87G63KK57HWXnM5iRMN--1--d8mur_2x.jpg?tr=w-1600,c-at_max"),
                ),
              ),
              const Text(
                "Welcome Neytiri Sully! ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.network(
            "https://freepngimg.com/save/10661-clock-transparent/451x451",
            width: 150,
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
                width: double.infinity,
                height: 310,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(137, 116, 114, 114),
                          offset: Offset(4, 4),
                          blurRadius: 4),
                    ])),
          )
        ],
      ),
    );
  }
}
