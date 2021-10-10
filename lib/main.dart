import 'package:flutter/material.dart';
import 'package:passingdata/second.dart';

void main() {
  runApp(MaterialApp(
    home: First(),
  ));
}
class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController _name=TextEditingController();
   TextEditingController _email=TextEditingController();
   TextEditingController _phone=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Phone No'
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Second(
              name: _name.text,
                email: _email.text,
                phone: _phone.text,
              )
              )

              );
            },
                child: Text('Go Next Page')
            )
          ],
        ),
      ),
    );
  }
}

