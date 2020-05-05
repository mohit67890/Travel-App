import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/FirstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/main_background.png'),
                  fit: BoxFit.fill)),
        ),
        Positioned(
            bottom: size.height * 0.3,
            child: Container(
              width: size.width,
              child: Text(
                "Discover the World",
                style: GoogleFonts.openSans(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            bottom: size.height * 0.2,
            left: size.width * 0.05,
            child: Container(
              width: size.width * 0.9,
              child: Text(
                "We'll help you to find the best \n  experience & adventures",
                style: GoogleFonts.openSans(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            bottom: size.height * 0.1,
            left: size.width * 0.43,
            child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white24, spreadRadius: 1, blurRadius: 1)
                    ]),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Icon(
                    Icons.chevron_right,
                    color: Color(0xFF03A2F5),
                    size: 28,
                  ),
                )

            )),
      ],
    ));
  }
}
