import 'package:flutter/material.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Tapshyrma 4",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Roboto-Regular",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff056C5C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              radius: 100,
              backgroundImage: AssetImage('assets/image/face.jpg'),
            ),
            const Text(
              "Aizirek Bakirova",
              style: TextStyle(
                color: Color(0xffF7F9F9),
                fontFamily: "Pacifico-Regular",
                fontSize: 48,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                color: Color(0xffF7F9F9),
                fontFamily: "Roboto-Regular",
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 53,
                width: 375,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)),
                child: const Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+ 996 555 666 777",
                      style: TextStyle(
                        color: Color(0xff056C5C),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 53,
                width: 375,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "aizirek.b.a@gmail.com",
                        style: TextStyle(
                          color: Color(0xff056C5C),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
                print('Press is clicked');
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffFFFFFF)),
              child: const Text(
                'Press here',
                style: TextStyle(
                    color: Color(0xff056C5C),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 96, 211),
        title: const Text(
          'Welcome to my app',
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontFamily: 'Pacifico-Regular',
              fontSize: 35,
              fontWeight: FontWeight.w200),
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          radius: 100,
          backgroundImage: AssetImage('assets/image/girl.avif'),
        ),
        Text(
          'Hello! Glad to see you in my App. My name is Aizirek, and I`m a flutter developer. If you have any qustions, please feel free to contact with me. You can find my number and email in first page. Have a good day.',
          style: TextStyle(
              color: Color.fromARGB(255, 76, 96, 211),
              fontFamily: 'Pacifico-Regular',
              fontSize: 35,
              fontWeight: FontWeight.w200),
        )
      ]),
    );
  }
}
