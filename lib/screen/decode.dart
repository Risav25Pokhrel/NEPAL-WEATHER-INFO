import 'package:dio/dio.dart';

mixin dataapi {
  static Future<List> getdata(String Url) async {
    //const Url = 'https://nepal-weather-api.herokuapp.com/api/?placenp=all';
    var response = await Dio().get(Url);
    final data1 = (response.data['weather'] as List);
    return data1;
  }
}
