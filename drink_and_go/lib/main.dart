import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'icons.dart';

// Main App Page setup
// home: first page of application.
void main() {
  runApp(MaterialApp(
    title: 'Drink and Go',
    color: Colors.black,
    home: Home(),
  ));
}

final Widget fruitSalad = SvgPicture.asset(
  './assets/fruit_salad.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
  height: 128.0,
);

const PrimaryTextColor = const Color.fromARGB(255, 255, 255, 255);
const PrimaryColor = const Color.fromARGB(255, 54, 176, 170);
const SecondaryColor = const Color.fromARGB(255, 33, 120, 115);
const TertiaryColor = const Color.fromARGB(255, 78, 189, 184);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        backgroundColor: SecondaryColor,
        title: Text('Drink & Go'),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                margin: const EdgeInsets.only(
                    top: 0, left: 25.0, right: 25.0, bottom: 25.0),
                child: FlatButton(
                  color: TertiaryColor,
                  splashColor: TertiaryColor,
                  textColor: PrimaryTextColor,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: PrimaryTextColor,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Drink",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 21.0,
                          color: PrimaryTextColor,
                        ),
                      ),
                      menuDrink
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Drink()),
                    );
                  },
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(
                    top: 0, left: 25.0, right: 25.0, bottom: 25.0),
                child: FlatButton(
                  color: TertiaryColor,
                  splashColor: TertiaryColor,
                  textColor: PrimaryTextColor,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: PrimaryTextColor,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Go",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 21.0,
                          color: PrimaryTextColor,
                        ),
                      ),
                      menuGo
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Drink()),
                    );
                  },
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(
                    top: 0, left: 25.0, right: 25.0, bottom: 25.0),
                child: FlatButton(
                  color: TertiaryColor,
                  splashColor: TertiaryColor,
                  textColor: PrimaryTextColor,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: PrimaryTextColor,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Summary",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 21.0,
                          color: PrimaryTextColor,
                        ),
                      ),
                      menuSummary
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Drink()),
                    );
                  },
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(
                    top: 0, left: 25.0, right: 25.0, bottom: 25.0),
                child: FlatButton(
                  color: TertiaryColor,
                  splashColor: TertiaryColor,
                  textColor: PrimaryTextColor,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: PrimaryTextColor,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "About",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 21.0,
                          color: PrimaryTextColor,
                        ),
                      ),
                      menuAbout
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Drink()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: <Widget>[
          Transform.translate(
            offset: Offset(0, -50.0),
            child: Container(
              child: fruitSalad,
            ),
          ),
        ]),
      ),
    );
  }
}

class Drink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        title: Text("Please Select a Drink"),
        backgroundColor: SecondaryColor,
      ),
      body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[])),
    );
  }
}

class Go extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How many times did you go?"),
        backgroundColor: SecondaryColor,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
        backgroundColor: SecondaryColor,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: SecondaryColor,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
