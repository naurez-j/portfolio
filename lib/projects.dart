import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.build_circle,color: Colors.yellowAccent,size: 30,),
            Text('Projects',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),),
          ],
        ),
        SizedBox(height: 20,),

        Row(
          children: <Widget>[
            Spacer(),

            Column(
              children: [
                CircleAvatar(radius: 50,),
                SizedBox(height: 5,),
                Text('Playful',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),

            Spacer(),
            Column(
              children: [
                CircleAvatar(radius: 50,),
                SizedBox(height: 5,),
                Text('Listed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
            Spacer(),
            Column(
              children: [
                CircleAvatar(radius: 50,),
                SizedBox(height: 5,),
                Text('Portfolio',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
            Spacer(),
            Column(
              children: [
                CircleAvatar(radius: 50,),
                SizedBox(height: 5,),
                Text('Olleh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
            Spacer(),
            Column(
              children: [
                CircleAvatar(radius: 50,),
                SizedBox(height: 5,),
                Text('Some App',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
            Spacer(),
          ],
        ),

        SizedBox(height: 20,),

      ],
    );
  }
}
