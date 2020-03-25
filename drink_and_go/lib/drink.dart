import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// https://fluttercentral.com/Articles/Post/31/GridView_Example
double _dimension;

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Grid List";
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: GridView.count(
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(1.0),
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                crossAxisCount: 3,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),
                  );
                }))));
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
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0, -5.0),
                  child: Container(
                    width: 95,
                    height: 95,
                    child: SvgPicture.asset(choice.icon),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -5.0),
                  child: Container(
                    child: Text(choice.title, style: null),
                  ),
                ),
              ]),
        ));
  }
}
