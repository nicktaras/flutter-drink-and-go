import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final Widget fruitSalad = SvgPicture.asset(
  './assets/fruit_salad.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
  height: 128.0,
);

final Widget menuDrink = SvgPicture.asset(
  './assets/menu_drink.svg',
  alignment: Alignment.centerRight,
  placeholderBuilder: (context) => CircularProgressIndicator(),
  height: 70,
);
final Widget menuSummary = SvgPicture.asset(
  './assets/menu_pi.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
  height: 70,
);
final Widget menuGo = SvgPicture.asset(
  './assets/menu_toilet.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
  height: 70,
);
final Widget menuAbout = SvgPicture.asset(
  './assets/menu_about.svg',
  placeholderBuilder: (context) => CircularProgressIndicator(),
  height: 70,
);
