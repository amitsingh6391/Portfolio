import 'package:flutter/material.dart';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:expansion_card/expansion_card.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My cv',
      debugShowCheckedModeBanner: false,
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
    Size x;
    MediaQuery.of(context).size;
    return Scaffold(
        //backgroundColor:Colors.black,

        body: SingleChildScrollView(
            child: Container(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/laptop.jpg"),
                        fit: BoxFit.fill)),
                child: Column(children: [
                  AvatarGlow(
                    glowColor: Colors.red,
                    endRadius: 120.0,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Image.asset('images/amit.png',
                            //height: 60,
                            fit: BoxFit.fill),
                        radius: 100.0,
                      ),
                    ),
                  ),
                  Row(children: [
                    Text("Contact me :",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          urllauncher("https://github.com/amitsingh6391");
                        },
                        child: Image(
                          width: 50,
                          height: 50,
                          image: AssetImage("images/github.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            contact();
                          },
                          child: Image(
                              width: 50,
                              height: 50,
                              image: AssetImage("images/gmail.png"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            urllauncher(
                                "https://www.linkedin.com/in/amit-singh-023055193/");
                          },
                          child: Image(
                              width: 50,
                              height: 50,
                              image: AssetImage("images/linkdin.png"))),
                    ),
                  ]),
                  Row(children: [
                    Text("About ",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("Me ...",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue))
                  ]),
                  Text(
                      "I,am Amit Singh,Andriod ,Ios and web App devloper from Grokhpur,India.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                        "I have benn persuing B.Tech in Computer Science Branch.I m passionate flutter & Python devloper and create apps that help us solve our daily life Problems.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                        child: ExpansionCard(
                      background: Image(
                          image: AssetImage("images/camera.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: 30.0,
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Education",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                            Text("B.Tech (Hons.)",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 7),
                          child: Text("Meerut Institute Of Technology",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                        SizedBox(height: 5),
                        Text("2018 - 2022 ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.symmetric(horizontal: 7),
                          child: Text("Senior Secondary(XII)",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        SizedBox(height: 5),
                        Text("St. Mary Inter College",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("Year of completion: 2018",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("Percentage : 84.50 % ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                        child: ExpansionCard(
                      background: Image(
                          image: AssetImage("images/pic2.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: 30.0,
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Skills",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                            Text("Passionate to learn Technology",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                      children: <Widget>[
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 200.0,
                            aspectRatio: 1 / 1,
                            autoPlay: true,
                          ),
                          items: [
                            "Flutter",
                            "FireBase",
                            "Python",
                            "Django",
                            "Cloud FireStore",
                            "Dart",
                            "HTML",
                            "Data Science",
                            "C(Progrm.lang.)"
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        '$i',
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/project.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(30)),
                        child: ExpansionCard(
                          borderRadius: 30.0,
                          title: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Projects",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                Text(
                                    "Technology used: Flutter,Firebase,Python,Django",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                SizedBox(height: 50)
                              ],
                            ),
                          ),
                          children: <Widget>[
                            CarouselSlider(
                              options: CarouselOptions(
                                height: 200.0,
                                aspectRatio: 1 / 1,
                                autoPlay: true,
                              ),
                              items: [
                                "Academic Master",
                                "Covid Tracker",
                                "YourShop",
                                "Textutlits",
                                "E-Commerce Website",
                                "Railway App",
                                "Music Player"
                              ].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (i == "Academic Master") {
                                          urllauncher(
                                              "https://play.google.com/store/apps/details?id=com.academic.master&hl=es_VE");
                                        }
                                        if (i == "Covid Tracker") {
                                          urllauncher(
                                              "https://github.com/amitsingh6391/covid-tracker");
                                        }
                                        if (i == "YourShop") {
                                          urllauncher(
                                              "https://play.google.com/store/apps/details?id=com.yourshop.amitapps&hl=es_VE");
                                        }
                                        if (i == "Textutlits") {
                                          urllauncher(
                                              "https://github.com/amitsingh6391/textutli");
                                        }
                                        if (i == "E-Commerce Website") {
                                          urllauncher(
                                              "https://github.com/amitsingh6391/Myawesomecart");
                                        }
                                        if (i == "Railway App") {
                                          urllauncher(
                                              "https://github.com/amitsingh6391/Railway-app-in-flutter");
                                        }
                                      },
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              '$i',
                                              style: TextStyle(
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          )),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          ],
                        )),
                  ),
                ]))));
  }

  urllauncher(String x) async {
    String url = x;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  contact() async {
    final Uri params = Uri(scheme: "mailto", path: "amitsingh506142@gmail.com");

    String url = params.toString();

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch $url";
    }
  }
}
