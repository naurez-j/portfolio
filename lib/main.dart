import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:naurez_portfolio/headingSection.dart';
import 'package:naurez_portfolio/listed.dart';
import 'package:naurez_portfolio/myDetails.dart';
import 'package:naurez_portfolio/playful.dart';
import 'package:naurez_portfolio/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Define color variables for the icons and text
  Color aboutIconColor = Colors.yellowAccent;
  Color projectsIconColor = Colors.yellowAccent;
  Color contactIconColor = Colors.yellowAccent;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff053B50),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xff176B87),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Naurez J', style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 30),),
                          Text('Portfolio', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                        ],
                      ),
                      Spacer(),

                      Column(
                        children: <Widget>[
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                aboutIconColor = Colors.blue;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                aboutIconColor = Colors.yellowAccent;
                              });
                            },
                            child: IconButton(
                              onPressed: scrollToAboutSection, // Call the scrollToAboutSection method
                              icon: Icon(Icons.account_circle_rounded, color: aboutIconColor),
                            ),
                          ),
                          Text('About', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),

                      SizedBox(width: 20,),

                      Column(
                        children: <Widget>[
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                projectsIconColor = Colors.red;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                projectsIconColor = Colors.yellow;
                              });
                            },
                            child: IconButton(
                              onPressed: scrollToProjectsSection, // Call the scrollToProjectsSection method
                              icon: Icon(Icons.build_circle, color: projectsIconColor),
                            ),
                          ),
                          Text('Projects', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),

                      SizedBox(width: 20,),

                      Column(
                        children: <Widget>[
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                contactIconColor = Colors.greenAccent; // Change color on hover
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                contactIconColor = Colors.yellow; // Revert to original color on exit
                              });
                            },
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.call, color: contactIconColor,),
                            ),
                          ),
                          Text('Contact', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 50,),
              MyDetails(),
              Projects(),
              SizedBox(height: 50,),
              Playful(),
              Listed(),
              HeadingSection(title: 'About Naurez J',icon: Icons.account_circle_rounded,),
            ],
          ),
        ),
      ),
    );
  }










 ///////////////////////////////////////////FUNCTIONS////////////////////////////////////////////////////
  void scrollToAboutSection() {
    _scrollController.animateTo(
      0, // Scroll to the top of the page
      duration: Duration(seconds: 1), // You can adjust the duration
      curve: Curves.easeInOut,
    );
  }

  void scrollToProjectsSection() {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final double yOffset = renderBox.localToGlobal(Offset(0, 500)).dy;

    _scrollController.animateTo(
      yOffset,
      duration: Duration(seconds: 1), // You can adjust the duration
      curve: Curves.easeInOut,
    );
  }

}
