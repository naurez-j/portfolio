import 'package:flutter/material.dart';

class Playful extends StatefulWidget {
  const Playful({Key? key}) : super(key: key);

  @override
  State<Playful> createState() => _PlayfulState();
}

class _PlayfulState extends State<Playful> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          // Wrap the main container with a border
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Border color
              width: 2.0, // Border width
            ),
          ),
          child: Container(
            color: Colors.black54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                         Image(image: AssetImage('assets/playfulfeedscreen.png')),
                          Image(image: AssetImage('assets/playfulfeedscreen.png')),
                          Image(image: AssetImage('assets/playfulfeedscreen.png')),
                        ],
                      ),
                    ),
                  ),
                ),





                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.build_circle_outlined,color: Colors.yellowAccent,size: 30,),
                            Text('Playful (Social Media Platform)',style: TextStyle(color: Colors.yellowAccent,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 500,
                              child: Text('Playful is a social media platform which is designed'
                                  'specifically for independent musical asrtists around'
                                  'the globe to share their creation. Talented artists,'
                                  'lyricsts, composers, & all other industry artists could also'
                                  'connect and form a hub designed for musical artists specially'
                                  'dedicating for independent musical artists. There is also an OCR feature'
                                  'which allows users to capture hand written lyrics and convert it to'
                                  'texts for uploading as a feed. Artists also can Direct message,'
                                  'like,comment,follow and even manage all artists. It is a full fledged '
                                  'app designed for musical artists to take forward their career',style: TextStyle(color: Colors.white,fontSize: 17,),textAlign: TextAlign.start,),
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.lightbulb,color: Colors.yellowAccent,size: 30,),
                            Text('Technologies Used',style: TextStyle(color: Colors.white70,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          ],
                        ),

                        Row(
                          children: <Widget>[

                            Column(
                              children: <Widget>[
                                Image(image: AssetImage('assets/flutter.png'),
                                width: 80,
                                  height: 80,
                                ),
                                SizedBox(height: 10,),
                                Text('Flutter',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),

                            Column(
                              children: <Widget>[
                                Image(image: AssetImage('assets/firebaselogo.png'),
                                  width: 80,
                                  height: 80,
                                ),
                                SizedBox(height: 10,),
                                Text('Firebase',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),

                            Column(
                              children: <Widget>[
                                Image(image: AssetImage('assets/nodejslogo.png'),
                                  width: 80,
                                  height: 80,
                                ),
                                SizedBox(height: 10,),
                                Text('Node Js',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
