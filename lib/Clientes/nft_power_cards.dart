import 'package:flutter/material.dart';

class nft_power_cards extends StatefulWidget {
  const nft_power_cards({Key? key}) : super(key: key);

  @override
  _nft_power_cardsState createState() => _nft_power_cardsState();
}

class _nft_power_cardsState extends State<nft_power_cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),

        centerTitle: true,
        title: Text('Passive Income'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('NFT Power Cards', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
