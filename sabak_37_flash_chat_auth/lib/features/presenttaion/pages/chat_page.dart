import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});
  static const String id = 'chat_page';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Aizirek@gmail.com'),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('Eliza@gmail.com'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 300, child: TextField()),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
