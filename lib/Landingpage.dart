import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Future<void> _ackAlert(BuildContext context, _status, _graduatedYear) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(_status),
          content: Text(_graduatedYear),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Oke'))
          ],
        );
      });
}

Future<void> _certifDialog(BuildContext context, _certifNumber, _url) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Credential Number"),
          content: Container(
            child: Text(_certifNumber),
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close')),
            FlatButton(
                onPressed: () {
                  launch(_url);
                },
                child: Text('Check Certificate'))
          ],
        );
      });
}

class Landingpage extends StatelessWidget {
  List<Widget> pageChildrenDesktop(double width) {
    return <Widget>[
      Container(
        width: width,
        height: 600,
        padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Text("I'm Fradip",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Computer Engineering Student at Sepuluh Nopember Institute of Technology",
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromRGBO(31, 31, 31, 0.7)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "I write a code, Create Apps, Build IoT System. I am also an Asistant Laboratory at my faculty.",
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromRGBO(31, 31, 31, 0.7)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Birth Date ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Birth Place ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Nationality ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ': Fradipta Alqaiyum ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ': 12 Januari 1999 ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ': Bukittinggi,West Sumatra ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ': Indonesia ',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                  ],
                )
              ],
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                launch('https://intip.in/Kzjz');
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: Text(
                  "Download CV",
                  style: TextStyle(color: Color.fromRGBO(38, 34, 106, 0.9)),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text("Find me at",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 3.0,
                ),
                //linkedinlogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/16/16066.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('https://www.linkedin.com/in/dipoo');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //WAlogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/1384/1384007.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch(
                          'https://api.whatsapp.com/send?phone=6281268786843');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //githublogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/2111/2111432.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {}, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //emaillogo
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.white10, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/683/683155.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('mailto:adythalqaiyum@gmail.com');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 80.0),
        child: Image.asset(
          "assets/images/model.png",
          width: width - 100,
          height: 600,
        ),
      ),
    ];
  }

  List<Widget> pageChildrenMobile(double width) {
    return <Widget>[
      Container(
        width: width,
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/model.png",
                width: width / 1.65,
                height: 200,
              ),
            ),
            Text("Hello!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Text("I'm Fradipta Alqaiyum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Computer Engineering Student at Sepuluh Nopember Institute of Technology",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromRGBO(31, 31, 31, 0.7)),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "I write a code, Create Apps, Build IoT System, devices and stuff. I am also an Asistant Laboratory at my faculty. ",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromRGBO(31, 31, 31, 0.9)),
                    ),
                  ],
                )),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.only(left:90),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Birth Date ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Birth Place ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Nationality ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ': Fradipta Alqaiyum ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        ': 12 Januari 1999 ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        ': Bukittinggi,West Sumatra ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        ': Indonesia ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromRGBO(31, 31, 31, 0.9)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                launch('https://intip.in/Kzjz');
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: Text(
                  "Download CV",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text("Find me at",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color.fromRGBO(31, 31, 31, 0.9),
                )),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 3.0,
                ),
                //linkedin
                Material(
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/16/16066.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('https://www.linkedin.com/in/dipoo');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //WA
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/png/512/1384/1384007.png',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch(
                          'https://api.whatsapp.com/send?phone=6281268786843');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //github
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.black54, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/2111/2111432.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {}, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                //email
                Material(
                  // pause button (round)
                  borderRadius: BorderRadius.circular(0), // change radius size
                  color: Colors.white, //button colour
                  child: InkWell(
                    splashColor: Colors.white10, // inkwell onPress colour
                    child: SizedBox(
                        width: 30,
                        height: 30, //customisable size of 'button'
                        child: Image.network(
                          'https://image.flaticon.com/icons/svg/683/683155.svg',
                          height: 15,
                          width: 15,
                        )),
                    onTap: () {
                      launch('mailto:adythalqaiyum@gmail.com');
                    }, // or use onPressed: () {}
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            )
          ],
        ),
      ),
    ];
  }

  Widget skill() {
    return Container(
        child: Column(
      children: [
        Text(
          'Skill',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.7,
                          header: new Text("Flutter Programming"),
                          center: new Icon(
                            Icons.phone_android,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('7/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.7,
                          header: new Text("HTML + CSS"),
                          center: new Icon(
                            Icons.web,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('7/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.85,
                          header: new Text("Internet of Things"),
                          center: new Icon(
                            Icons.laptop_chromebook,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('8.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.85,
                          header: new Text("Embedded System"),
                          center: new Icon(
                            Icons.settings,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('8.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.75,
                          header: new Text("Tableau Data Visualization"),
                          center: new Icon(
                            Icons.show_chart,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('7.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.55,
                          header: new Text("Deep Learning"),
                          center: new Icon(
                            Icons.laptop_chromebook,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('5.5/10'),
                      ],
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.6,
                          header: new Text("Javascript"),
                          center: new Icon(
                            Icons.web,
                            size: 50.0,
                            color: Color.fromRGBO(38, 34, 106, 0.9),
                          ),
                          //backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(38, 34, 106, 0.9),
                        ),
                        Text('6/10'),
                      ],
                    )),
              ),
            ],
          ),
        )
      ],
    ));
  }

  Widget educationDesktop(BuildContext context, double width) {
    return Container(
      child: Row(
        children: [
          //Profile and Certification Section
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: width / 3.5,
                  //height: 250,
                  //color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                  'Fundamental Deep Learning for Computer Vision'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context,
                                      '8632f14f79b6484380212fa2f8e4bc42',
                                      'https://courses.nvidia.com/certificates/8632f14f79b6484380212fa2f8e4bc42');
                                },
                                child: Text(
                                  'Check',
                                  style: TextStyle(
                                      color: Color.fromRGBO(53, 176, 252, 0.9)),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Study Excursion NTU Singapore 2019'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context, '', 'https://intip.in/24wE');
                                },
                                child: Text('Check',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(53, 176, 252, 0.9))))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          //Education Section
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SDN 07 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2004-2010");
                              },
                              child: Text(
                                'Status',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMP 01 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2010-2014");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMA 04 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2014-2017");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Institut Teknologi Sepuluh Nopember'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Student", "2017-Now");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Experience Section
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Officer Electra '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                '2017',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Office MAGE '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Ikatan Mahasiswa Minang Surabaya'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Staff Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018-2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Staff Acara MAGE 4'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Koordinator Acara MAGE 5'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Asisten Laboratorium Komputasi Multimedia '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Wakil Koordinator Laboratorium Komputasi Multimedia'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget educationMobile(BuildContext context, double width) {
    return Container(
      child: Column(
        children: [
          //Profile and Certification Section
          Expanded(            
            child: Container(            
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [                
                Container(
                  width: width,
                  height: 100,
                  //color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        padding: EdgeInsets.only(left:10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                  'Fundamental Deep Learning for Computer Vision'),
                            ),
                            FlatButton(
                                onPressed: () {
                                  _certifDialog(
                                      context,
                                      '8632f14f79b6484380212fa2f8e4bc42',
                                      'https://courses.nvidia.com/certificates/8632f14f79b6484380212fa2f8e4bc42');
                                },
                                child: Text(
                                  'Check',
                                  style: TextStyle(
                                      color: Color.fromRGBO(53, 176, 252, 0.9)),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        padding: EdgeInsets.only(left:10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Study Excursion NTU Singapore 2019'),
                            ),
                            FlatButton(
                              
                                onPressed: () {
                                  _certifDialog(
                                      context, '', 'https://intip.in/24wE');
                                },
                                child: Text('Check',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(53, 176, 252, 0.9))))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          //Education Section
          SizedBox(
            height: 25,
          ),
          Container(
              alignment: Alignment.center,
              width: width,
              child: Text(
                "Education",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 8,
          ),
          Expanded(            
            child: Container(              
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SDN 07 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2004-2010");
                              },
                              child: Text(
                                'Status',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMP 01 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2010-2014");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('SMA 04 Bukittinggi'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Graduated", "2014-2017");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Institut Teknologi Sepuluh Nopember'),
                          ),
                          FlatButton(
                              onPressed: () {
                                _ackAlert(context, "Student", "2017-Now");
                              },
                              child: Text('Status',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Experience Section
          SizedBox(
            height: 25,
          ),
          Container(
              alignment: Alignment.center,
              width: width,
              child: Text(
                "Experience",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Officer Electra '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                '2017',
                                style: TextStyle(
                                    color: Color.fromRGBO(53, 176, 252, 0.9)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Liaison Office MAGE '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Ikatan Mahasiswa Minang Surabaya'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Anggota Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2017-2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Staff Technopreneurship Development Centre'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018-2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Staff Acara MAGE 4'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2018',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Koordinator Acara MAGE 5'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Asisten Laboratorium Komputasi Multimedia '),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                'Wakil Koordinator Laboratorium Komputasi Multimedia'),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text('2019-Now',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(53, 176, 252, 0.9))))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: pageChildrenDesktop(constraints.biggest.width / 2)),
              Row(
                children: [
                  Container(
                    color: Color.fromRGBO(240, 253, 255,1),
                    width: constraints.biggest.width,
                    child: Row(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: constraints.biggest.width / 3,
                            child: Text(
                              "Certification",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: constraints.biggest.width / 3,
                            child: Text(
                              "Education",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: constraints.biggest.width / 3,
                            child: Text(
                              "Experience",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: constraints.biggest.width,
                  height: 300,
                  child: educationDesktop(context, constraints.biggest.width)),
              Container(
                width: constraints.biggest.width,
                height: 250,
                child: skill(),
              ),
              Container(
                width: constraints.biggest.width,
                height: 200,
                color: Colors.red,
                child: Text('Hobi and Interest'),
              ),
            ],
          );
        } else {
          //untukMobile
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: pageChildrenMobile(constraints.biggest.width),
              ),
              Container(
                  alignment: Alignment.topCenter,
                  width: constraints.biggest.width,
                  child: Text(
                    "Certification",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              
              Container(
                width: constraints.biggest.width,
                height: 700,
                child: educationMobile(context, constraints.biggest.width),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: constraints.biggest.width,
                height: 300,
                color: Colors.white12,
                child: skill(),
              ),
              Container(
                width: constraints.biggest.width,
                height: 200,
                color: Colors.red,
                child: Text('Hobi and Interest'),
              ),
            ],
          );
        }
      },
    );
  }
}
