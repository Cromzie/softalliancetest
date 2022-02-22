import 'package:flutter/material.dart';
import 'package:softalliancetest/pages/signup.dart';
import 'package:softalliancetest/widgets/texts.dart';
import '../utility/colors.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash'),
        centerTitle: true,
        backgroundColor: kBgColor,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Image(image: AssetImage('assets/images/icon.png'),
                  ),
                ),
                SizedBox(height: 5.0),
                TextsWidget(text: 'Powered by Soft Alliance', color: kBrandname.withOpacity(0.8),),
              ],
            ),
          
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/1.1),
                  child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Sign(),));}, icon: Icon(Icons.arrow_forward, color: kBrandname.withOpacity(0.6),)),
                )
        ],
      ),


    );
  }
}