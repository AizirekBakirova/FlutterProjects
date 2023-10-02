import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 36, 61),
          title: Center(
            child: Text(
              "Disney Characters",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontFamily: "Sofia-Regular",
              ),
            ),
          )),
      backgroundColor: const Color.fromARGB(201, 64, 195, 255),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/mulan.jpeg"),
                    )),
              ),
              Text(
                "Mulan",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/belle.webp"),
                  ),
                ),
              ),
              Text(
                "Belle",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/olaf.webp"),
                  ),
                ),
              ),
              Text(
                "Olaf",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/cinderella.jpeg"),
                  ),
                ),
              ),
              Text(
                "Cinderella",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/elza.jpg"),
                    )),
              ),
              Text(
                "Elza",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/flynn.webp"),
                  ),
                ),
              ),
              Text(
                "Flynn",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/jasmine.jpeg"),
                  ),
                ),
              ),
              Text(
                "Jasmine",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
              Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/moana.jpeg"),
                  ),
                ),
              ),
              Text(
                "Moana",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia-Regular",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
