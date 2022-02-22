import 'package:flutter/material.dart';
import 'package:softalliancetest/widgets/texts.dart';
import '../utility/colors.dart';

class DisplayPage extends StatelessWidget {
  DisplayPage({required this.name});
  final String? name;

  get eMAIL => name;

  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/icon.png'), fit: BoxFit.scaleDown,),
            SizedBox(height: 20.0,),
            TextsWidget(text: 'Hello\n Welcome ${eMAIL.toString()}', color: kBrandname.withOpacity(0.6),),
          ],
        )
      ),
    );
  }
}
