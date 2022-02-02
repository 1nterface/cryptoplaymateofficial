import 'package:flutter/material.dart';

class team extends StatefulWidget {
  const team({Key? key}) : super(key: key);

  @override
  teamState createState() => teamState();
}

class teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),

        centerTitle: true,
        title: Text('Team'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
