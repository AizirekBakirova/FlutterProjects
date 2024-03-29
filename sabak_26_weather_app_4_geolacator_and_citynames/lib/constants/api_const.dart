class ApiConst {
  static String cityName(String name) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$name&appid=f9ff021020df2e83c0c0a659be571c25';

  static String latLongApi(double lat, double long) =>
      'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String latitLongApi(double lat, double long) =>
      'https://api.openweathermap.org/data/2.5/forecast?lat=42.882004&lon=74.582748&appid=1bde0627b0af351a8720f017e548a47a';
}
