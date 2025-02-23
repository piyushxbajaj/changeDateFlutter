import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/painting.dart';

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
//        brightness: Brightness.dark,
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
      backgroundColor: Colors.black,
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
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 100,
            child: CupertinoTheme(
              data: CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                  pickerTextStyle: TextStyle(color: Colors.blue),
                ),
              ),
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
          ),
//          Card(
//            margin: EdgeInsets.all(20.0),
//            shape:
//                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//            child: Text('Hello'),
//          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                height: 150,
//                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      child: OutlineButton(
                        highlightColor: Colors.red,
                        splashColor: Colors.white,
                        disabledBorderColor: Colors.black,
                        disabledTextColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('<   Back'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: FlatButton(
                        highlightColor: Colors.red,
                        disabledColor: Colors.black,
                        disabledTextColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Next   >'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
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
