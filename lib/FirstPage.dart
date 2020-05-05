import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import 'PlaceClass.dart';

class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Place> places = List<Place>();

    //Adding place to the list of places
    Place place = new Place(
      image: "assets/peru.png",
      address: "Machau Pichu, Peru",
      comments: "2,589"

    );
    places.add(place);

    Place place_2 = new Place(
        image: "assets/turkey.png",
        address: "Machau Pichu, Turkey",
        comments: "1,189"

    );
    places.add(place_2);



    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(
                    left: 15, right: 15, top: size.height * 0.06),
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: size.width * 0.32,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF03A2F5).withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image(
                              width: 40,
                              height: 40,
                              image: AssetImage("assets/user.png"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 3),
                            child: Text(
                              "Hi Andrea",
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFF03A2F5),
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.1),
              child: Text(
                "What is your next \ndestination ?",
                style: GoogleFonts.openSans(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
                margin: EdgeInsets.only(
                    left: size.width * 0.1, right: size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF03A2F5).withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: ImageIcon(
                              AssetImage("assets/forest.png"),
                              color: Color(0xFF03A2F5),
                              size: 28,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Forest",
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF03A2F5).withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: ImageIcon(
                              AssetImage("assets/sunset.png"),
                              color: Color(0xFF03A2F5),
                              size: 28,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ocean",
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF03A2F5).withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: ImageIcon(
                              AssetImage("assets/mountain.png"),
                              color: Color(0xFF03A2F5),
                              size: 28,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mountain",
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF03A2F5).withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: ImageIcon(
                              AssetImage("assets/palm-tree.png"),
                              color: Color(0xFF03A2F5),
                              size: 28,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Desert",
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
                margin: EdgeInsets.only(left: size.width * 0.06, right: size.width*0.05),
                child: ListTile(

                  title: Text(
                    "Most Visited",
                    style: GoogleFonts.openSans(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: Icon(
                    Icons.more_horiz,
                    size: 28,
                    color: Colors.black,
                  ),

                )),

                Container(
                  margin: EdgeInsets.only(left: size.width*0.1),
                  width: size.width,
                  height: size.height*0.35,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (context, index){

                        Place place = places[index];

                        return Container(
                          margin: EdgeInsets.only(right: 22),
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(place.image),
                              fit: BoxFit.fill
                            ),

                            borderRadius: BorderRadius.all(
                              Radius.circular(35)
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 3
                              )
                            ]
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: size.height*0.05,
                                left: 15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Text(
                                      place.address,
                                      style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: size.height*0.022,
                                left: 15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Text(
                                      place.comments + ' comments',
                                      style: GoogleFonts.openSans(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: size.height*0.035,
                                right: 15,
                                child: Icon(
                                  LineIcons.heart_o,
                                  size: 20,
                                  color: Colors.white,

                                )
                              ),
                            ],
                          )


                        );

                      }),

                )



          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.compass, size: 35, color: Colors.grey,),
            activeIcon: Icon(LineIcons.compass, size: 35, color: Color(0xFF03A2F5),),
            title: Text("Explore", style: GoogleFonts.openSans(fontSize: 16,),)
          ),

          BottomNavigationBarItem(
              icon: Icon(LineIcons.calendar, size: 35, color: Colors.grey,),
              activeIcon: Icon(LineIcons.calendar, size: 35, color: Color(0xFF03A2F5),),
              title: Text("My Trips", style: GoogleFonts.openSans(fontSize: 16,),)
          ),

          BottomNavigationBarItem(
              icon: Icon(LineIcons.bookmark, size: 35, color: Colors.grey,),
              activeIcon: Icon(LineIcons.bookmark, size: 35, color: Color(0xFF03A2F5),),
              title: Text("Favourite", style: GoogleFonts.openSans(fontSize: 16,),)
          )
        ],
      ),
    );
  }
}
