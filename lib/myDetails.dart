import 'package:flutter/material.dart';

class MyDetails extends StatefulWidget {
  const MyDetails({Key? key}) : super(key: key);

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/naurez.png'),
              radius: 90,
            ),
          ],
        ),

        SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Naurez J', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(width: 5,),
            Icon(Icons.verified, color: Colors.lightBlue,),
          ],
        ),
        Text('Software Engineer', style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 15),),

        SizedBox(height: 20,),

        Center( // Center the paragraph
          child: Container(
            width: 550,
            child: Column(
              children: <Widget>[
                Text('Hey there! Welcome to my Portfolio ''you have information about myself, my projects and'' the contact information. You can also contact me for hiring :) 🔥', style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
