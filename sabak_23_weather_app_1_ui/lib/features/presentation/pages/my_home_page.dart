import 'package:flutter/material.dart';
import 'package:sabak_23_weather_app_1_ui/components/city_name.dart';
import 'package:sabak_23_weather_app_1_ui/components/detail_weather_card.dart';
import 'package:sabak_23_weather_app_1_ui/components/near_me_location.dart';
import 'package:sabak_23_weather_app_1_ui/components/temp_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          image: AssetImage('assets/weather3.jpg'),
          fit: BoxFit.cover,
        )),
        child: const Column(
          children: [
            NearMeLocation(),
            SizedBox(
              height: 80,
            ),
            TempWidget(),
            CityName(),
            SizedBox(height: 300),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Monday',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  SizedBox(width: 180),
                  Icon(
                    Icons.thermostat,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.sunny,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.cloud,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DetailWeatherCard(),
                DetailWeatherCard(),
                DetailWeatherCard(),
                DetailWeatherCard(),
                DetailWeatherCard(),
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      title: const Center(
        child: Text(
          'Weather App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
