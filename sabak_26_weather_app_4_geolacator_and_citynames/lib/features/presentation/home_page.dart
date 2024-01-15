// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/city_name.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/detail_weather_card.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/near_me_location.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/temp_widget.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/components/week_days_widget.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/constants/api_const.dart';
import 'package:sabak_26_weather_app_4_geolacator_and_citynames/constants/constants.dart';
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

  //Geolacator uchun
  Future<void> weatherlocation() async {
    setState(() {
      weather = null;
    });
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission == await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final res = await dio
            .get(ApiConst.latLongApi(position.latitude, position.longitude));
        if (res.statusCode == 200) {
          weather = Weather(
            id: res.data['weather'][0]['id'],
            icon: res.data['weather'][0]['icon'],
            temp: res.data['current']['temp'],
            name: res.data['timezone'],
          );
        }
        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      final dio = Dio();
      final res = await dio
          .get(ApiConst.latLongApi(position.latitude, position.longitude));
      if (res.statusCode == 200) {
        weather = Weather(
          id: res.data['current']['weather'][0]['id'],
          icon: res.data['current']['weather'][0]['icon'],
          temp: res.data['current']['temp'],
          name: res.data['timezone'],
        );
      }
      setState(() {});
    }
  }

  Weather? weather;
// shaarlardyn APIsi mn ishtoochu function
  Future<void> weatherName([String? name]) async {
    final dio = Dio();
    final result = await dio.get(ApiConst.cityName(name ?? 'Bishkek'));
    if (result.statusCode == 200) {
      weather = Weather(
        id: result.data['weather'][0]['id'],
        temp: result.data['main']['temp'],
        icon: result.data['weather'][0]['icon'],
        name: result.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    weatherName();
  }

  void bottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: ((context) {
          return ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return ListTile(
                title: InkWell(
                  onTap: () {
                    setState(() {
                      weather = null;
                    });
                    weatherName(city);
                    Navigator.pop(context);
                  },
                  child: Card(
                      color: Color(0xff90B2F8).withOpacity(.6),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            city,
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: weather == null
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Container(
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
                      locationPressed: () async {
                        weatherlocation();
                      },
                      cityNamePressed: () {
                        bottomSheet();
                      },
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    TempWidget(
                      tempText: '${(weather!.temp - 273.15).floorToDouble()}°',
                    ),
                    CityName(
                      cityName: weather!.name,
                    ),
                    SizedBox(height: 310),
                    WeekDaysWidget(),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DetailWeatherCard(
                          timetext1: '15.01',

                          temptext2:
                              '${(weather!.temp - 273.15).floorToDouble()}°',
                          // tempimage: 'assets/7 (1).png',

                          // windSpeed: '${(weather!.speed!).toInt()}'
                        ),
                        DetailWeatherCard(
                          timetext1: '16.01', temptext2: '-3°',
                          // tempimage: 'assets/7 (1).png',

                          // windSpeed: '${(weather!.speed!).toInt()}'
                        ),
                        DetailWeatherCard(
                          timetext1: '17.01', temptext2: '0°',
                          // tempimage: 'assets/7 (1).png',

                          // windSpeed: '${(weather!.speed!).toInt()}'
                        ),
                        DetailWeatherCard(
                          timetext1: '18.01', temptext2: '-1°',
                          // tempimage: 'assets/7 (1).png',

                          // windSpeed: '${(weather!.speed!).toInt()}'
                        ),
                        DetailWeatherCard(
                          timetext1: '19.01', temptext2: '2°',
                          // tempimage: 'assets/7 (1).png',

                          // windSpeed: '${(weather!.speed!).toInt()}'
                        ),
                      ],
                    )
                  ],
                ),
              ),
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
