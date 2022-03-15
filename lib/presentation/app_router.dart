import 'package:api/business_logic/cubit/details_cubit.dart';
import 'package:api/constants/strings.dart';
import 'package:api/data/models/launches.dart';
import 'package:api/data/repositrory/launches_repositort.dart';
import 'package:api/data/web_services/launches_web_services.dart';
import 'package:api/presentation/screens/launches_details.dart';
import 'package:api/presentation/screens/launches_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppRouter{

  late LaunchesRepository launchesRepository;
  late DetailsCubit launchesCubit;

  AppRouter(){
    launchesRepository =LaunchesRepository(Launcheswebservices());
    launchesCubit=DetailsCubit(launchesRepository);
  }

  Route? generatRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder:(_)=>BlocProvider(create:(BuildContext)=>launchesCubit,),
        //child :LaunchesScreen()
        );
         

       case launchesDetailsScreen:
       final Launche =settings.arguments as launche;
        return MaterialPageRoute(builder:(_)=>LaunchesDetailsScreen(Launche: Launche,));
        
      
    }

  }
}