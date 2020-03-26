import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const PrimaryTextColor = const Color.fromARGB(255, 255, 255, 255);
const PrimaryColor = const Color.fromARGB(255, 54, 176, 170);
const SecondaryColor = const Color.fromARGB(255, 33, 120, 115);
const TertiaryColor = const Color.fromARGB(255, 78, 189, 184);

// https://fluttercentral.com/Articles/Post/31/GridView_Example
double _dimension;

class Drink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Please Select a Drink";
    return MaterialApp(
        title: title,
        home: Scaffold(
            backgroundColor: PrimaryColor,
            appBar: AppBar(
              title: Text(title),
              backgroundColor: SecondaryColor,
            ),
            body: GridView.count(
                childAspectRatio: 0.9,
                padding: const EdgeInsets.all(1.0),
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                crossAxisCount: 3,
                children: List.generate(
                  choices.length,
                  (index) {
                    return Center(
                      child: ChoiceCard(choice: choices[index]),
                    );
                  },
                ))));
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final String icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Red Wine', icon: "assets/drinks/redwine.svg"),
  const Choice(title: 'Beer', icon: "assets/drinks/beer.svg"),
  const Choice(title: 'Spirit', icon: "assets/drinks/spirit.svg"),
  const Choice(title: 'White Wine', icon: "assets/drinks/whitewine.svg"),
  const Choice(title: 'Mock-tail', icon: "assets/drinks/mocktail.svg"),
  const Choice(title: 'Cocktail', icon: "assets/drinks/cocktail.svg"),
  const Choice(title: 'Coffee', icon: "assets/drinks/coffee.svg"),
  const Choice(title: 'Tea', icon: "assets/drinks/tea.svg"),
  const Choice(title: 'Sweet', icon: "assets/drinks/sweet.svg"),
  const Choice(title: 'Smoothie', icon: "assets/drinks/smoothie.svg"),
  const Choice(title: 'Fresh Juice', icon: "assets/drinks/freshjuice.svg"),
  const Choice(title: 'Vitamin Juice', icon: "assets/drinks/vitaminjuice.svg"),
  const Choice(title: 'Fizzy', icon: "assets/drinks/cola.svg"),
  const Choice(title: 'Water', icon: "assets/drinks/water.svg"),
  const Choice(title: 'Milk', icon: "assets/drinks/milk.svg"),
  const Choice(title: 'Soy', icon: "assets/drinks/soy.svg"),
  const Choice(title: 'Coconut', icon: "assets/drinks/coconut.svg"),
  const Choice(title: 'Electrolyte', icon: "assets/drinks/electrolyte.svg"),
  const Choice(title: 'Energy', icon: "assets/drinks/energy.svg"),
  const Choice(title: 'Milkshake', icon: "assets/drinks/milkshake.svg"),
  const Choice(title: 'Vegetable', icon: "assets/drinks/vegetablejuice.svg"),
  const Choice(title: 'Health-shake', icon: "assets/drinks/healthshake.svg"),
  const Choice(title: 'Pro-biotic', icon: "assets/drinks/pro-biotic.svg"),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    _dimension = 153.0;
    if (_dimension > MediaQuery.of(context).size.width - 10.0) {
      _dimension = MediaQuery.of(context).size.width - 10.0;
    }
    return Card(
        elevation: 0,
        color: PrimaryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: PrimaryColor, width: 0),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // new Container(color: Colors.red, child: new Center(child: new Text("data"))),
                Transform.translate(
                  offset: Offset(0, 10.0),
                  child: Container(
                    width: 120,
                    height: 95,
                    child: SvgPicture.asset(choice.icon),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 7),
                  child: Container(
                      width: 120,
                      height: 35,
                      color: PrimaryColor,
                      child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.all(7.0),
                            hintStyle: new TextStyle(color: Colors.white),
                            hintText: choice.title,
                            fillColor: TertiaryColor,
                          ))),
                ),
              ]),
        ));
  }
}
