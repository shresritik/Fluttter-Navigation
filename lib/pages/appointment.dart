import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
        centerTitle: true,
        // leading: GestureDetector(
        //     child: Icon(
        //       Icons.arrow_left,
        //       size: 50,
        //     ),
        //     onTap: () {
        //       // Navigator.push(context, MaterialPageRoute(builder: ((context) {
        //       //   return HomePage();
        //       Navigator.pop(context);
        //     }),
        leading: IconButton(
            icon: Icon(Icons.arrow_left_sharp),
            iconSize: 40,
            onPressed: () {
              // Navigator.pop(context);
            }),
      ),
      body: Center(
        child: Text(
          'Appointment Details',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
