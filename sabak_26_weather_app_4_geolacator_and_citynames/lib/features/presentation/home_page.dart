// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/city_name.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/detail_weather_card.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/near_me_location.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/temp_widget.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/week_days_widget.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/features/data/weather_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> cities = [
    'Bishkek',
    'Osh',
    'Karakol',
    'Talas',
    'Batken',
    'Naryn',
    'Tokmok',
    'Jalalabad'
  ];
  Future<Weather?> fetchData() async {
    final dio = Dio();
    final result = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    if (result.statusCode == 200) {
      final weather = Weather(
        id: result.data['weather'][0]['id'],
        temp: result.data['main']['temp'],
        name: result.data['name'],
        speed: result.data['wind']['speed'],
        icon: result.data['weather'][0]['icon'],
      );
      return weather;
    } else {
      return null;
    }
  }

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: ((context) {
          return ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return ListTile(
                title: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            city,
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      )),
                ),
              );
            },
          );
        }));
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Center(
        child: FutureBuilder<Weather?>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.none) {
                return const Text('No internet connection');
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text(
                      'There is wrong information: ${snapshot.error.toString()}');
                } else if (snapshot.hasData) {
                  final weather = snapshot.data;
                  return Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black26, BlendMode.darken),
                      image: AssetImage('assets/weather3.jpg'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      children: [
                        NearMeLocation(
                          onPressed: () {
                            bottomSheet();
                          },
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        TempWidget(
                          tempText:
                              '${(weather!.temp - 273.15).floorToDouble()}°',
                        ),
                        CityName(
                          cityName: weather.name,
                        ),
                        SizedBox(height: 310),
                        WeekDaysWidget(
                          dayText: 'Monday',
                          icon:
                              'https://openweathermap.org/img/wn/${weather.icon}@4x.png',
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DetailWeatherCard(
                                windSpeed: weather.speed.toString()),
                            DetailWeatherCard(
                                windSpeed: weather.speed.toString()),
                            DetailWeatherCard(
                                windSpeed: weather.speed.toString()),
                            DetailWeatherCard(
                                windSpeed: weather.speed.toString()),
                            DetailWeatherCard(
                                windSpeed: weather.speed.toString()),
                          ],
                        )
                      ],
                    ),
                  );
                } else {
                  return Text('Undefined mistake');
                }
              } else {
                return Text('Undefined mistake');
              }
            }),
      ),
    );
  }
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
