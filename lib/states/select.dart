import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                content(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'คุณกำลังค้นหาอะไร ?',
            style: MyConstant().h2Style(),
          ),
          diagnose(),
        ],
      ),
    );
  }

  Container diagnose() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.25),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/diagnose'),
        child: const Text(
          'ทำแบบประเมินโรคเบื้องต้นจากอาการของผู้ใช้งาน',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Container hospital() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.25),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/'),
        child: const Text(
          'ค้นหาสถานพยาบาลใกล้เคียงคุณ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
