import 'package:flutter/material.dart';

class cryptactoe_instructions extends StatefulWidget {
  const cryptactoe_instructions({Key? key}) : super(key: key);

  @override
  cryptactoe_instructionsState createState() => cryptactoe_instructionsState();
}

class cryptactoe_instructionsState extends State<cryptactoe_instructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),

        centerTitle: true,
        title: Text('Instructions', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(),
        ),
      ),
    );
  }
}
