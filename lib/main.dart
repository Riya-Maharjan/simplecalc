import 'package:flutter/material.dart';

const myColor = Color(0xFFE21717);
void main() => runApp(MaterialApp(
      title: 'Simple Interest',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = '', t = "", r = "", result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Simple Interest Calculator"), backgroundColor: myColor),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),

            // For Principal
            TextField(
              onChanged: (val) {
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Principal',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)))),
            ),
            SizedBox(
              height: 8,
            ),
            //For time
            TextField(
              onChanged: (val) {
                t = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Time',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)))),
            ),
            SizedBox(
              height: 8,
            ),
            //FOr Rate
            TextField(
              onChanged: (val) {
                r = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Rate',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)))),
            ),
            SizedBox(
              height: 15,
            ),

            MaterialButton(
              onPressed: () {
                setState(() {
                  result = (double.parse(p) *
                          double.parse(t) *
                          double.parse(r) /
                          100)
                      .toString();
                });
              },
              height: 50,
              color: myColor,
              child: Text(
                'Calculate ',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Colors.redAccent,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'The simple interest is $result',
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
