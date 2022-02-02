import 'package:flutter/material.dart';

class juegos_principal extends StatefulWidget {
  const juegos_principal({Key? key}) : super(key: key);

  @override
  juegos_principalState createState() => juegos_principalState();
}

class juegos_principalState extends State<juegos_principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),

        centerTitle: true,
        title: Text('Welcome'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Home', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
