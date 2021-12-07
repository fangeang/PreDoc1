import 'package:flutter/material.dart';
import 'package:predoc1/states/authen.dart';
import 'package:predoc1/states/create_account.dart';
import 'package:predoc1/states/diagnose.dart';
import 'package:predoc1/states/select.dart';
import 'package:predoc1/states/service_hospital.dart';
import 'package:predoc1/states/service_user.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createaccount': (BuildContext context) => const CreateAccount(),
  '/serviceUser': (BuildContext context) => const ServiceUser(),
  '/serviceHospital': (BuildContext context) => const ServiceHospital(),
  '/diagnose': (BuildContext context) => const Diagnose(),
  '/select': (BuildContext context) => const Select(),
};

String firstPage = '/authen';

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
