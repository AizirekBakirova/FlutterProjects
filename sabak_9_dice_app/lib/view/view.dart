import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Random random = Random();
  int firstnumDice = 1;
  int secondnumDice = 2;
  int sum1 = 0;

  void firstchangeDice() {
    //firstDice ozgormosuno randomdu bailoo
    firstnumDice = random.nextInt(6) + 1;
    //secondDice ozgormosuno randomdu bailoo
    secondnumDice = random.nextInt(6) + 1;
    //abaldyn ozgoruusu uchun setState metodun koldonuu
    setState(() {});
    //chykkan sandy koshuu
    sum1 = sum1 + firstnumDice + secondnumDice;
    result();
  }

  int thirdnumDice = 1;
  int fourthnumDice = 2;
  int sum2 = 0;

  void secondchangeDice() {
    //firstDice ozgormosuno randomdu bailoo
    thirdnumDice = random.nextInt(6) + 1;
    //secondDice ozgormosuno randomdu bailoo
    fourthnumDice = random.nextInt(6) + 1;
    //abaldyn ozgoruusu uchun setState metodun koldonuu
    setState(() {});
    //chykkan sandy koshuu
    sum2 = sum2 + thirdnumDice + fourthnumDice;
    result();
  }

  void result() {
    if (sum1 >= 50) {
      ConfettiWidget(
        confettiController: _controller,
        blastDirection: pi / 2,
        gravity: 0.01,
        emissionFrequency: 0.1,
      );
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.greenAccent,
              title: const Center(child: Text('Sam you won!')),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              icon: Image.network(
                  'https://clipart-library.com/image_gallery2/Fireworks-PNG-Image.png'),
              actions: [
                Center(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 5,
                    minWidth: 300,
                    height: 35,
                    onPressed: () {
                      if (isPlaying) {
                        _controller.stop();
                      } else {
                        _controller.play();
                      }
                      isPlaying = !isPlaying;
                    },
                    child: const Text(
                      'Congratulations!',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.purpleAccent,
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                    onPressed: () {
                      resetAll();
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: Center(
                      child: Text(
                        'Restart game',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    )),
              ],
            );
          });
    } else if (sum2 >= 50) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.greenAccent,
              title: Center(child: Text('Tim you won!')),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              icon: Image.network(
                  'https://clipart-library.com/image_gallery2/Fireworks-PNG-Image.png'),
              actions: [
                Center(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 5,
                    minWidth: 300,
                    height: 35,
                    onPressed: () {
                      if (isPlaying) {
                        _controller.stop();
                      } else {
                        _controller.play();
                      }
                      isPlaying = !isPlaying;
                    },
                    child: Text(
                      'Congratulations!',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.purpleAccent,
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                    onPressed: () {
                      resetAll();
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: Center(
                      child: Text(
                        'Restart game',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    )),
              ],
            );
          });
    }
  }

  void resetAll() {
    firstnumDice = 1;
    secondnumDice = 1;
    sum1 = 0;
    thirdnumDice = 1;
    fourthnumDice = 1;
    sum2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text('dice app'.toUpperCase()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(height: 20),
          // MaterialButton(
          //   onPressed: () {
          //     if (isPlaying) {
          //       _controller.stop();
          //     } else {
          //       _controller.play();
          //     }
          //     isPlaying = !isPlaying;
          //   },
          //   child: Text(
          //     'Congratulations!',
          //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          //   ),
          //   color: Colors.greenAccent,
          // ),
          ConfettiWidget(
            confettiController: _controller,
            blastDirection: pi / 2,
            gravity: 0.01,
            emissionFrequency: 0.1,
          ),
          SizedBox(height: 50),
          Text(
            "Sam`s score: ",
            style: const TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Text('$sum1',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              SizedBox(
                  width: 185,
                  child: InkWell(
                      onTap: () {
                        firstchangeDice();
                      },
                      child: Image.asset("assets/dice$firstnumDice.png"))),
              const SizedBox(width: 20),
              SizedBox(
                  width: 185,
                  child: InkWell(
                      onTap: firstchangeDice,
                      child: Image.asset("assets/dice$secondnumDice.png")))
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.greenAccent,
            thickness: 1,
            endIndent: 10,
            indent: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                    width: 185,
                    child: InkWell(
                        onTap: () {
                          secondchangeDice();
                        },
                        child: Image.asset("assets/dice$thirdnumDice.png"))),
                const SizedBox(width: 20),
                SizedBox(
                    width: 185,
                    child: InkWell(
                        onTap: secondchangeDice,
                        child: Image.asset("assets/dice$fourthnumDice.png")))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(sum2.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
          SizedBox(height: 15),
          Text(
            " Tim`s score:",
            style: const TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
