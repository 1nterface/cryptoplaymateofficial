import 'package:flutter/material.dart';

class roadmap extends StatefulWidget {
  const roadmap({Key? key}) : super(key: key);

  @override
  _roadmapState createState() => _roadmapState();
}

class _roadmapState extends State<roadmap> {

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B26),
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),
        centerTitle: true,
        title: const Text('Roadmap'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  children:  const [
                    Text('I', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('2022 NFT Member Spaces', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('II', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,

                      title: Text('222 NFT Power Cards Pre-sale', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),
                    Text('III', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,

                      title: Text('1800 NFT Power Cards Public Sale', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),
                    Text('IV', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('Recruit Discord community manager', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('V', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('Recruit design team', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('VI', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('Recruit flutter devs', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('VII', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,

                      title: Text('Recruit marketing team', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('VIII', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('Crypto Playmate Official Launch after SUPER BOWL LVI', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('IX', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('New games release', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                    Text('X', style: TextStyle(color: Colors.white, fontSize: 40),softWrap: true,textAlign: TextAlign.center),
                    ExpansionTile(
                      iconColor: Colors.pinkAccent,
                      title: Text('Create Crypto Playmate Foundation', style: TextStyle(color: Colors.pinkAccent, fontSize: 40),softWrap: true, textAlign: TextAlign.center,),
                      children: [
                        Text('Content', style: TextStyle(color: Colors.white, fontSize: 20),softWrap: true,textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(width: 45,),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
