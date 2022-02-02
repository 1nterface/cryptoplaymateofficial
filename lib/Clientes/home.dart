import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:toast/toast.dart';
import 'package:cryptoplaymateofficial/Modelo/cajas_modelo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cryptoplaymateofficial/authentication.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {

  var data;
  home({this.data});
  @override
  homeState createState() => homeState();
}

class homeState extends State<home> {

  homeState();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String url = 'https://twitter.com/CryptoPlaymate';
  String urlD = 'https://discord.com';

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchURLDiscord(String urlD) async {
    if (await canLaunch(urlD)) {
      await launch(urlD, forceWebView: true);
    } else {
      throw 'Could not launch $urlD';
    }
  }

  final String imageUrl = "https://www.elcarrocolombiano.com/wp-content/uploads/2019/01/20190122-MPM-ERELIS-AUTO-DEPORTIVO-MAS-BARATO-01.jpg";

  Widget hola (){

    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
          (int viewId) => ImageElement()..src = imageUrl,
    );
    return Container(
      height: 350,
      width: 500,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: HtmlElementView(
        viewType: imageUrl,
      ),
    );
  }

  Future<void> inicioSesion() async {
    // marked async
    AuthenticationHelper()
        .signIn(email: _emailController.text, password: _passwordController.text)
        .then((result) {
      if (result == null) {

        Navigator.of(context).pop();

        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home(cajas_modelo("","","",0,0,0,0,0,"","","","","",0))));
        Toast.show("¡Has iniciado sesion!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);

      } else {
        Toast.show("Contraseña incorrecta!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
      }
    });
  }

  void registro(){
    final FirebaseAuth auth = FirebaseAuth.instance;

    if(FirebaseAuth.instance.currentUser?.uid == null){
      // not logged
      Alert(
          context: context,
          title: "Inicio de sesion",
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle, color: Color(0xFF815FD5)),
                  labelText: 'Correo',
                ),
              ),
              TextFormField(
                controller: _passwordController,

                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Color(0xFF815FD5)),
                  labelText: 'Contrasena',
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () {

                registro();
                //Navigator.of(context).pushNamed('/registro');

              },
              child: Text(
                "Registrarme",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Color(0xFF815FD5),
            )
          ]).show();
    } else {
      // logged
      Navigator.of(context).pop();

    }

  }
  void sinSesion2(){
    final FirebaseAuth auth = FirebaseAuth.instance;

    if(FirebaseAuth.instance.currentUser?.uid == null){
      // not logged
      Alert(
          context: context,
          title: "Register",
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle, color: Colors.pinkAccent),
                  labelText: 'Correo',
                ),
              ),
              TextFormField(
                controller: _passwordController,

                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.pinkAccent),
                  labelText: 'Contrasena',
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () {

                setState(() {
                  //comprasNotificaciones(context);
                  //comprasNotificaciones2(context);
                  //sesion = true;
                });

              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.pinkAccent,

            ),
            DialogButton(
              onPressed: () {

                //Navigator.of(context).pushNamed('/registro');

              },
              child: Text(
                "Registrarme",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.pinkAccent,
            )
          ]).show();
    } else {
      // logged
      Navigator.of(context).pushNamed("/cryptactoe_game");

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF293143),
        centerTitle: true,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[

                InkWell(
                  onTap:(){

                    Navigator.of(context).pushNamed('/whitepaper');


                  },
                  child: Row(
                      children: [
                        Icon(Icons.list, color: Color(0xFF815FD5)),
                        SizedBox(width:10),
                        Text('Whitepaper', style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),
                SizedBox(width: 15),

                InkWell(
                  onTap:(){

                    Navigator.of(context).pushNamed("/roadmap");

                  },
                  child: Row(
                      children: [
                        Icon(Icons.account_tree, color: Colors.pinkAccent),
                        SizedBox(width:10),
                        Text('Roadmap', style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),
                SizedBox(width: 15),

                InkWell(
                  onTap:(){
                    launchURL(url);
                  },
                  child: Row(
                      children: [
                        Icon(FontAwesomeIcons.twitter, color: Colors.lightBlueAccent),
                        SizedBox(width:10),
                        Text('Follow us', style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),

                SizedBox(width: 15),

                InkWell(
                  onTap:(){
                    launchURLDiscord(urlD);
                  },
                  child: Row(
                      children: [
                        Icon(FontAwesomeIcons.discord, color: Color(0xFF815FD5)),
                        SizedBox(width:10),
                        Text('Join us', style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),
                SizedBox(width: 15),

                InkWell(
                  onTap:(){
                    launchURLDiscord(urlD);
                  },
                  child: Row(
                      children: [
                        Icon(FontAwesomeIcons.linkedinIn, color: Colors.pinkAccent),
                        SizedBox(width:10),
                        Text('Contact us', style: TextStyle(color: Colors.white),),
                      ]
                  ),
                ),

              ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial( //Boton flotante animado,
        //marginRight: 18,
        //marginBottom: 30,
        animatedIcon: AnimatedIcons.home_menu,
        animatedIconTheme: IconThemeData(size: 25.0),
        // this is ignored if animatedIcon is non null
        // child: Icon(Icons.add),
        visible: true,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Crypto Playmate',
        heroTag: 'Crypto Playmate',
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        elevation: 1.0,
        shape: CircleBorder(),
        children: [

          SpeedDialChild(
              child: Icon(Icons.person, color: Colors.white,),
              backgroundColor: Color(0xFF815FD5),
              label: 'Team',
              onTap: () async {

                Navigator.of(context).pushNamed('/team');
                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),

          SpeedDialChild(
              child: Icon(FontAwesomeIcons.networkWired, color: Colors.white,),
              backgroundColor: Colors.pinkAccent,
              label: 'NFT Power Cards',
              onTap: () async {

                Navigator.of(context).pushNamed("/nft_power_cards");

                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),

          SpeedDialChild(
              child: Icon(FontAwesomeIcons.idCard, color: Colors.white),
              backgroundColor: Colors.lightBlueAccent,
              label: 'NFT Member',
              onTap: () async {

                Navigator.of(context).pushNamed("/nft_members");

                //Navigator.of(context).pushNamed('/admin_inicio');

              }
          ),


        ],
      ),
      backgroundColor: Color(0xFF171B26),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children:[
                  CarouselSlider(
                    items: [

                      //hola(),
                      InkWell(
                        onTap: () async {

                          //sinSesion2();
                          Navigator.of(context).pushNamed("/cryptactoe");
                        },
                        child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                image: DecorationImage(
                                  image: AssetImage("images/ancestral.jpg"),
                                  fit: BoxFit.cover, //contain en todas ya que tenga los SS de los juegos
                                ),
                            ),
                        ),
                      ),
                      Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {

                                      sinSesion2();

                                      //Navigator.of(context).pushNamed('/juegos_principal');

                                    },
                                    child: Text('Play'),
                                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("images/c.png"),
                                fit: BoxFit.cover,
                              )
                          )
                      ),
                      Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {

                                      //Navigator.of(context).pushNamed('/juegos_principal');
                                      sinSesion2();

                                    },
                                    child: Text('Play'),
                                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                image: AssetImage("images/d.png"),
                                fit: BoxFit.cover,
                              )
                          )
                      ),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      height: 400,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInOut,
                      reverse: true,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Launch on Feb 13', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}