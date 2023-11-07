import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_10_xylophone/components/button_containers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        ButtonContainer(
            color: const Color(0xffEF443A),
            baskych: () {
              player.play(
                AssetSource('assets_note1.wav'),
              );
            }),
        ButtonContainer(
          color: const Color(0xffF99700),
          baskych: () {
            player.play(
              AssetSource('assets_note2.wav'),
            );
          },
        ),
        ButtonContainer(
          color: const Color(0xffFFE93B),
          baskych: () {
            player.play(
              AssetSource('assets_note3.wav'),
            );
          },
        ),
        ButtonContainer(
          color: const Color(0xff4CB050),
          baskych: () {
            player.play(
              AssetSource('assets_note4.wav'),
            );
          },
        ),
        ButtonContainer(
          color: const Color(0xff2E968C),
          baskych: () {
            player.play(
              AssetSource('assets_note5.wav'),
            );
          },
        ),
        ButtonContainer(
          color: const Color(0xff2996F5),
          baskych: () {
            player.play(
              AssetSource('assets_note6.wav'),
            );
          },
        ),
        ButtonContainer(
          color: const Color(0xff9B28B1),
          baskych: () {
            player.play(
              AssetSource('assets_note7.wav'),
            );
          },
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      title: const Text(
        'Xylophone',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
    );
  }
}
