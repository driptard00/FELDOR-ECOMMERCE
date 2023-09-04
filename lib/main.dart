import 'package:feldor_app/routes/app/app_route.dart';
import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreen,
      getPages: getPages,
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
    );
  }

}