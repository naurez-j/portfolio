import 'package:flutter/material.dart';

class HeadingSection extends StatefulWidget {
  final title;
  final icon;
  const HeadingSection({Key? key, this.title, this.icon}) : super(key: key);

  @override
  State<HeadingSection> createState() => _HeadingSectionState();
}

class _HeadingSectionState extends State<HeadingSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(widget.icon,color: Colors.yellow,size: 30,),
                      Text(widget.title, style: TextStyle(color: Color(0xffEEEEEE), fontWeight: FontWeight.bold, fontSize: 30),),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
