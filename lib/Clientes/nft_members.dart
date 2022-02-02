import 'package:flutter/material.dart';

class nft_members extends StatefulWidget {
  const nft_members({Key? key}) : super(key: key);

  @override
  _nft_membersState createState() => _nft_membersState();
}

class _nft_membersState extends State<nft_members> {
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
          child: Text('NFT Member', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
