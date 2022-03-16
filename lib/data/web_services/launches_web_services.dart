//import 'dart:js_util';

import 'package:api/constants/strings.dart';
import 'package:api/data/models/launches.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
 part 'launches_web_services.g.dart';

@RestApi(baseUrl:'https://api.spacexdata.com/v3/')
abstract class Launcheswebservices{
  //factory Launcheswebservices( Dio dio, {String baseUrl}) = _Launcheswebservices;
   factory Launcheswebservices(Dio dio) = _Launcheswebservices;
 @GET("launches")
 Future<List<launche>> getAlllaunches();
}