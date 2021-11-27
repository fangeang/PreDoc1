import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/widgets/show_text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;
  double? lat, lng;

  Container newName() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.fingerprint,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Name :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newEmail() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Email :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newPassword() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.password_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Passowrd :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newAge() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.password_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Age :'),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findLocation();
  }

  Future<void> findLocation() async {
    Position? position = await findPostion();
    setState(
      () {
        lat = position!.latitude;
        lng = position.longitude;
        print('lat = $lat, lng = $lng');
      },
    );
  }

  Future<Position?> findPostion() async {
    Position? position;

    try {
      position = await Geolocator.getCurrentPosition();
    } catch (e) {
      return null;
    }

    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primary,
        title: Text('Create new Account'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(
          FocusScopeNode(),
        ),
        behavior: HitTestBehavior.opaque,
        child: SingleChildScrollView(
          child: Column(
            children: [
              newName(),
              newTitle('Type User :'),
              radioUser(),
              radioHospital(),
              newEmail(),
              newPassword(),
              newAge(),
              newTitle('Your Location :'),
              newMap(),
              buttonCreateAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Container newMap() {
    return Container(
      width: 300,
      height: 200,
      child: lat == null
          ? Center(child: CircularProgressIndicator())
          : Text('$lat, $lng'),
    );
  }

  Container buttonCreateAccount() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Create New Account'),
      ),
    );
  }

  Container radioUser() {
    return Container(
      width: 250,
      child: RadioListTile(
        subtitle: ShowText(data: 'ผู้ใช้งาน'),
        title: ShowText(
          data: 'User',
        ),
        value: 'user',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Widget radioHospital() {
    return Container(
      child: RadioListTile(
        subtitle: ShowText(data: 'โรงพยาบาล'),
        title: ShowText(
          data: 'Hospital',
        ),
        value: 'user',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Row newTitle(String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ShowText(
            data: title,
            textStyle: MyConstant().h2Style(),
          ),
        ),
      ],
    );
  }
}
