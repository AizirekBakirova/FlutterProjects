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
                    Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          'assets/Design circle.png',
                          width: 130,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_new))
                      ],
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
            height: 30,
          ),
          Image.network(
            'https://freepngimg.com/save/10661-clock-transparent/451x451',
            width: 100,
          ),
          const SizedBox(
            height: 30,
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
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 4, top: 35, right: 52, bottom: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Grocery Shoping',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 30),
                        Icon(Icons.border_color,
                            size: 40, color: Color(0xff4ebdaf)),
                        SizedBox(width: 10),
                        Icon(Icons.delete, size: 40, color: Color(0xff4ebdaf))
                      ],
                    ),
                    SizedBox(height: 8.04),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Website Hosting',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 30),
                        Icon(Icons.border_color,
                            size: 40, color: Color(0xff4ebdaf)),
                        SizedBox(width: 10),
                        Icon(Icons.delete, size: 40, color: Color(0xff4ebdaf))
                      ],
                    ),
                    SizedBox(height: 8.04),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          size: 40,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'UX Designing',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 51),
                        Icon(Icons.border_color,
                            size: 40, color: Color(0xff4ebdaf)),
                        SizedBox(width: 10),
                        Icon(Icons.delete, size: 40, color: Color(0xff4ebdaf))
                      ],
                    ),
                    SizedBox(height: 8.04),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Haircut',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 93),
                        Icon(Icons.border_color,
                            size: 40, color: Color(0xff4ebdaf)),
                        SizedBox(width: 10),
                        Icon(Icons.delete, size: 40, color: Color(0xff4ebdaf))
                      ],
                    ),
                    SizedBox(height: 8.04),
                    Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          size: 40,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Guitar Sesion',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.border_color,
                            size: 40, color: Color(0xff4ebdaf)),
                        SizedBox(width: 10),
                        Icon(Icons.delete, size: 40, color: Color(0xff4ebdaf))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
