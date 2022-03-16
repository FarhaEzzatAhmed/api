
import 'package:api/data/repositrory/launches_repositort.dart';
import 'package:api/presentation/screens/launches_screen.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/models/launches.dart';
import 'data/web_services/launches_web_services.dart';
final locator= GetIt.instance;

void setup(){
  locator.registerLazySingleton<LaunchesRepository>(()=>LaunchesRepository(Launcheswebservices( Dio())));
  
  

}