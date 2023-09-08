import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Color(0xff252B48),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.school,color: Colors.white,size: 30,),
                        Text('Education',style: TextStyle(color: Colors.yellowAccent,fontSize: 30,fontWeight: FontWeight.bold),)
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Icon(Icons.control_point,color: Colors.white,),
                              Text('IT Foundation',style: TextStyle(color: Colors.yellowAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('I have completed my IT foundation at SLIIT Academy in the '
                                  'year 2019',style: TextStyle(color: Colors.white,fontSize: 17,),),
                            ],
                          ),

                          SizedBox(height: 20,),

                          Row(
                            children: <Widget>[
                              Icon(Icons.control_point,color: Colors.white,),
                              Text('Higher National Diploma (HND)',style: TextStyle(color: Colors.yellowAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text('I have completed my Higher National Diploma in Computer'
                                    'Science at SLIIT Academy in the '
                                    'year 2022',style: TextStyle(color: Colors.white,fontSize: 17,),softWrap: true,),
                              ),
                            ],
                          ),

                          SizedBox(height: 20,),


                          Row(
                            children: <Widget>[
                              Icon(Icons.control_point,color: Colors.white,),
                              Text('Degree',style: TextStyle(color: Colors.yellowAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text('I have completed my degree which is B.Sc. (Hons) in Computer Science and Software Engineering at '
                                    'sliit Academy in the year 2023',style: TextStyle(color: Colors.white,fontSize: 17,),softWrap: true,),
                              ),
                            ],
                          ),

                          SizedBox(height: 20,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
