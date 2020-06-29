import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        selectedRowColor: Colors.yellow,
        unselectedWidgetColor: Colors.yellow,
//        colorScheme: ColorScheme.dark(),
        buttonColor: Colors.yellow,

        brightness: Brightness.dark,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/original.jpeg'),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Date of Birth',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
//          backgroundColor: Colors.white,
              initialDateTime: _dateTime,
              mode: CupertinoDatePickerMode.date,

              onDateTimeChanged: (dateTime) {
                print(dateTime);
                setState(() {
                  _dateTime = dateTime;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
//  DateTime _dateTime;
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              _dateTime == null
//                  ? 'Nothing has been picked yet '
//                  : _dateTime.toString(),
//              style: TextStyle(fontSize: 20),
//            ),
//            RaisedButton(
//                child: Text('Pick a date'),
//                onPressed: () {
//                  showDatePicker(
//                          context: context,
//                          initialDate:
//                              -_dateTime == null ? DateTime.now() : _dateTime,
//                          firstDate: DateTime(2001),
//                          lastDate: DateTime(2022))
//                      .then(
//                    (date) {
//                      setState(() {
//                        _dateTime = date;
//                      });
//                    },
//                  );
//                })
//          ],
//        ),
//      ),
//    );
//  }
//}
