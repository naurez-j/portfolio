import 'package:flutter/material.dart';

class Listed extends StatefulWidget {
  const Listed({Key? key}) : super(key: key);

  @override
  State<Listed> createState() => _ListedState();
}

class _ListedState extends State<Listed> {
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
                            Text('Listed (TO-DO App)',style: TextStyle(color: Colors.yellowAccent,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 500,
                              child: Text('Listed is an online TO-DO list mobile app'
                                  'which is developed to track the upcoming'
                                  'to-do lists or schedules from where ever you are'
                                  'using your account through listed',style: TextStyle(color: Colors.white,fontSize: 17,),textAlign: TextAlign.start,),
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
