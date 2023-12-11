import 'package:flutter/material.dart';
import 'package:sabak_16_quize_app_02_logic/features/domain/quize_brain.dart';
import 'package:sabak_16_quize_app_02_logic/features/presentation/custom_button/custom_button.dart';
import 'package:quickalert/quickalert.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<bool> jooptop = [];
  // int tuuraJoop = 0;
  // int kataJoop = 0;
  List tuuraJoop = <bool>[];
  List kataJoop = <bool>[];

  void showAlert() {
    if (quizeList[index] == quizeList.last) {
      QuickAlert.show(
          confirmBtnTextStyle: const TextStyle(
              fontFamily: 'BebasNeue-Regular',
              fontSize: 20,
              color: Colors.yellowAccent),
          context: context,
          title: 'Аяктады!',
          text: 'Туура жооптор: ${tuuraJoop} Ката жооптор: ${kataJoop}',
          // text: 'You`ve got $score from ${jooptop.length}',
          confirmBtnText: 'Чыгуу',
          onConfirmBtnTap: () {
            reset();
            Navigator.pop(context);
            setState(() {});
          },
          type: QuickAlertType.success);
    } else {
      index++;
    }
  }

  void reset() {
    index = 0;
    jooptop.clear();
  }

  // void incrementIndex(bool joop) {
  //   if (jooptop.length < 10) {
  //     final result = quizeList[index].joop;
  //     jooptop.add(result);
  //   }
  //   if (index < 9) {
  //     index++;
  //     tuuraJoop++;
  //     lastQuestion();
  //   } else {
  //     kataJoop++;
  //     lastQuestion();
  //   }
  //   setState(() {
  //     return showAlert();
  //   });
  // }

  void incrementIndex(bool value) {
    if (quizeList[index].joop == value) {
      jooptop.add(true);
      tuuraJoop.add(true);
    } else {
      jooptop.add(false);
      kataJoop.add(false);
    }

    setState(() {
      return showAlert();
    });
  }

  void lastQuestion() {
    if (index == quizeList.length) {
      setState(() {
        index == 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffd1437c),
      appBar: myAppBar(),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff01ebd),
            Color(0xff873bcc),
            Color(0xfffe4a97),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  quizeList[index].suroo,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 229, 225, 225),
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'BebasNeue-Regular'),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    backgroundColor: const Color(0xff33691e),
                    text: 'True',
                    onPressed: () {
                      incrementIndex(true);
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    backgroundColor: const Color(0xff880E4f),
                    text: 'False',
                    onPressed: () {
                      incrementIndex(false);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: jooptop
                        .map((e) => e
                            ? const Icon(
                                Icons.done,
                                color: Color(0xff33691e),
                                size: 30,
                              )
                            : const Icon(
                                Icons.close,
                                color: Color(0xff880E4f),
                                size: 30,
                              ))
                        .toList(),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     index = 0;
                  //     jooptop.clear();
                  //     setState(() {});
                  //   },
                  //   icon: const Icon(
                  //     Icons.refresh,
                  //     color: Colors.white,
                  //     size: 30,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text(
        'Quiz App',
        style: TextStyle(fontFamily: 'BebasNeue-Regular', fontSize: 25),
      ),
    );
  }
}
