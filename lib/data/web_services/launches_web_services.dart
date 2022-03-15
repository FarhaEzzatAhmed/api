import 'dart:js_util';

import 'package:api/constants/strings.dart';
import 'package:dio/dio.dart';

class Launcheswebservices{
 late  Dio dio;

 Launcheswebservices(){
   BaseOptions options =BaseOptions(
     baseUrl: baseurl,
     receiveDataWhenStatusError: true,
     connectTimeout:20 * 1000 ,
     receiveTimeout: 20* 1000 ,

   );
   dio=Dio(options);
 }
 Future<List<dynamic>>getAlllaunches() async{
   try{
    Response response =await dio.get('launches');
    print(response.data.toString());
    return response.data;

 
   }catch(e){
     print(e.toString());
     return[];


   }
    
}}