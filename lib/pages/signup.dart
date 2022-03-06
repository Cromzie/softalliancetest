import 'package:flutter/material.dart';
import 'package:softalliancetest/pages/page2.dart';
import '../utility/colors.dart';
import '../widgets/texts.dart';
import './page1.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  final SizedBox height = SizedBox(
    height: 15.0,
  );
  final keY = GlobalKey<FormState>();
  String? eMail = '';

  String? pin = '';

  bool isNotVisible = true;

  bool valuE = false;

  @override
  Widget build(BuildContext context) {
    final double heighT = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: kBrandname.withOpacity(0.6),
        ),
        automaticallyImplyLeading: true,
        title: Text('Sign in'),
        centerTitle: true,
        backgroundColor: kBgColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: heighT / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Image(image: AssetImage('assets/images/icon.png'))),
                height,
            TextsWidget(
              text: 'Log In',
              fontsize: 20.0,
              color: kFieldHint,
            ),
            height,
            _buildFields(),
          ],
        ),
      ),
    );
  }

  _buildFields() => Form(
        key: keY,
        child: Column(
          children: [
            _email(),
            height,
            _pin(),
            height,
            _logIn()
          ],
        ),
      );

  _email() => Container(
        margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          cursorColor: kFieldTitle,
          style: TextStyle(color: kFieldTitle),
          keyboardType: TextInputType.number,
          autofillHints: [AutofillHints.telephoneNumber],
          onSaved: (email) => eMail = email,
          validator: (email) => email != null
              ? null
              : 'Invalid email',
          decoration: InputDecoration(
              hintText: 'Enter Email here',
              hintStyle: TextStyle(color: kFieldHint),
              labelText: 'Email',
              suffixText: '@gmail.com',
              suffixStyle: TextStyle(color: kFieldTitle),
              labelStyle: TextStyle(color: kFieldTitle),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: kFieldHint.withOpacity(0.3)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: kFieldHint.withOpacity(0.3)),
        ),
      );

  _pin() => Container(
        margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: TextFormField(
          cursorColor: kFieldTitle,
          style: TextStyle(color: kFieldTitle),
          keyboardType: TextInputType.visiblePassword,
          autofillHints: [AutofillHints.password],
          onSaved: (piN) => pin = piN,
          validator: (piN) =>
              pin != null ? null : 'Invalid pin',
          decoration: InputDecoration(
              hintText: 'Enter Pin here',
              hintStyle: TextStyle(color: kFieldHint),
              labelText: 'Pin',
              labelStyle: TextStyle(color: kFieldTitle),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isNotVisible = !isNotVisible;
                    });
                  },
                  icon: Icon(
                    Icons.visibility,
                    color: kFieldTitle,
                  )),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: kFieldHint.withOpacity(0.3)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: kFieldHint.withOpacity(0.3)),
          obscureText: isNotVisible,
        ),
      );

  _logIn() => Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Center(
            child: Column(children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              decoration: BoxDecoration(
                  color: kButtonColor,
                  borderRadius: BorderRadius.circular(10.0)),
              width: MediaQuery.of(context).size.width - 80,
              height: 50.0,
              child: TextButton(
                onPressed: () {
                  var valid = keY.currentState!.validate();
                  if (valid) {
                    keY.currentState!.save();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => DisplayPage(name: '$eMail'),
                    //     ));
                  }
                },
                child: TextsWidget(
                  text: 'LOG IN',
                  fontsize: 18.0,
                  color: kBgColor,
                ),
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                  kFieldHint.withOpacity(0.2),
                )),
              ))
        ])),
      );
}
