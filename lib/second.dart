import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String name,email,phone;
  Second({Key? key,required this.name,required this.email,required this.phone}) : super(key: key);
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${widget.name}'),
              Text('Email: ${widget.email}'),
              Text('Phone: ${widget.phone}'),
            ],
          ),
        ),
      ),


    );
  }
}
