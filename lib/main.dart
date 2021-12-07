import 'package:flutter/material.dart';
import 'package:predoc1/states/authen.dart';
import 'package:predoc1/states/create_account.dart';
import 'package:predoc1/states/days.dart';
import 'package:predoc1/states/diagnose.dart';
import 'package:predoc1/states/med2.dart';
import 'package:predoc1/states/level.dart';
import 'package:predoc1/states/med22.dart';
import 'package:predoc1/states/med30.dart';
import 'package:predoc1/states/med69.dart';
import 'package:predoc1/states/med8.dart';
import 'package:predoc1/states/nearby_hospital.dart';
import 'package:predoc1/states/select.dart';
import 'package:predoc1/states/service_hospital.dart';
import 'package:predoc1/states/service_user.dart';
import 'package:predoc1/states/med9.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
  '/serviceUser': (BuildContext context) => const ServiceUser(),
  '/serviceDriver': (BuildContext context) => const ServiceHospital(),
  '/diagnose': (BuildContext context) => const Diagnose(),
  '/med2': (BuildContext context) => const Med2(),
  '/med8': (BuildContext context) => const Med8(),
  '/med9': (BuildContext context) => const Med9(),
  '/med22': (BuildContext context) => const Med22(),
  '/med30': (BuildContext context) => const Med30(),
  '/med69': (BuildContext context) => const Med69(),
  '/level': (BuildContext context) => const Level(),
  '/days': (BuildContext context) => const Days(),
  '/select': (BuildContext context) => const Select(),
  '/nearbyHospital': (BuildContext context) => const NearbyHospital(),
};

String firstPage = '/select';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstPage,
    );
  }
}
