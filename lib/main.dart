// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medica/core/view_model/auth_view_model.dart';
import 'package:medica/helper/binding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medica/patient%20_login.dart';
import 'package:medica/patient_getstarted.dart';
import 'package:medica/patient_home.dart';
<<<<<<< Updated upstream
import 'package:medica/patient_symptoms.dart';
import 'package:medica/splash.dart';
import 'package:medica/view/widgets/constance.dart';
import 'package:shared_preferences/shared_preferences.dart';
=======
import 'package:medica/selectSpeciality.dart';
>>>>>>> Stashed changes
import 'loginType.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  runApp(MyApp());
  FlutterNativeSplash.remove();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

// whenever your initialization is completed, remove the splash screen:

class MyApp extends StatelessWidget {
  bool isUserLoggedIn = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot)
      {
        if(!snapshot.hasData){
          return MaterialApp(home: Scaffold(body: Center(child: Text('Loading.....'),),),);

        }else{
          isUserLoggedIn = snapshot.data?.getBool(k_keepMeLoggedIn) ?? false;
          return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
<<<<<<< Updated upstream
      home: isUserLoggedIn ? patient_home(): Splash()
=======
      home: selectSpeciality(),
>>>>>>> Stashed changes
    );
        }
      });
  }
}
