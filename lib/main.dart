import 'package:api/locator.dart';
import 'package:api/presentation/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {

  final AppRouter appRouter;

  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      onGenerateRoute: appRouter.generatRoute ,

      
    );
  }
}
