import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:unit_converter/unit.dart';


class Category {
  final String name;
  final ColorSwatch color;
  final List<Unit> units;
  final IconData iconLocation;

  const Category({
    @required this.name,
    @required this.color,
    @required this.units,
    @required this.iconLocation,
  });
}
