import 'package:flutter/material.dart';
import 'package:sabak_11_refactoring/features/presentation/components/app_button.dart';
import 'package:sabak_11_refactoring/features/presentation/components/app_textfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar(),
        body: appBody(),
      ),
    );
  }
}

myAppBar() => AppBar(
      centerTitle: true,
      title: Text('Refactoring'.toUpperCase()),
    );

appBody() => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextfield(
            hintText: 'Name',
            borderRadius: BorderRadius.circular(40),
          ),
          AppTextfield(
            hintText: 'Email',
            borderRadius: BorderRadius.circular(40),
          ),
          AppTextfield(
            hintText: 'Phone Number',
            borderRadius: BorderRadius.circular(40),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                color: Colors.red,
                text: 'Red',
              ),
              AppButton(
                color: Colors.green,
                text: 'Green',
              ),
            ],
          )
        ],
      ),
    );
